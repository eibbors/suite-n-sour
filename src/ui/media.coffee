# suite-n-sour.js :: ui/media.coffee - by Robbie Saunders (eibbors.com)
# Mixin providing media related extensions, such as queries to the NetSuite
# file cabinet and website media cache

# Extend prototype of client class / return helpers 
exports.extend = (client) ->

  # Each media file is assigned a unique (& constant) hash at creation
  client::getMediaFile = (id, company, hash, cb) ->
    query = { id, c: company, h: hash }
    @get '/core/media/media.nl', { query }, cb

  # As above, but is meant specifically for downloading files
  client::downloadMediaFile = (id, company, hash, cb) ->
    query = { id, c: company, h: hash, _xd: 'T' }
    @get '/core/media/media.nl', { query }, cb

  # Allows media file downloading without hash verification via redirection
  client::previewMediaFile = (id, cb) ->
    @get '/core/media/previewmedia.nl', {query: {id}}, (res) ->
      if res.followRedirect? then res.followRedirect cb
      else cb res

  # Download an entire media folder as a zip file (be careful using this on 
  # large folders as the whole thing will be loaded into memory
  client::downloadMediaFolder = (id, cb) ->
    query = { id, _xd:'T', e: 'T'}
    @get '/core/media/downloadfolder.nl', { query }, cb

  # Used to check for existing files before potentially overwriting them, but
  # can be used as a quick lookup by testing for the confirmation string
  client::mediaExists = (filename, folder, cb) ->
    query = { name: filename, folder, formname: 'suite-n-sour' }
    @get '/app/common/media/checkmediaexists.nl', { query }, (res) =>
      cb (/A file with the same name already exists/.test res.body), res

  # Haven't tested these two to verify if id alone is sufficient:
  client::getSiteMedia = (id, cb) ->
    @get '/app/site/media/sitemedia.nl', {query: {id, c:'NLCORP'}}, cb

  # Copy a group of media files (array of item ids) from src to dest folder
  client::copyMediaFiles = (fileIds=[], srcFolder, destFolder, overwrite=true, cb) ->
    query = { folder: srcFolder, _grpCopy: 'T', newfolder: destFolder, overwrite }
    body = ("sa#{fid}fldF=T" for fid in fileIds).join('&')
    @post '/app/common/media/mediaitemfolders.nl', { query, body }, cb

  # Move a group of media files (array of item ids) from src to dest folder
  client::moveMediaFiles = (fileIds=[], srcFolder, destFolder, overwrite=true, cb) ->
    query = { folder: srcFolder, _grpMove: 'T', newfolder: destFolder, overwrite }
    body = ("sa#{fid}fldF=T" for fid in fileIds).join('&')
    @post '/app/common/media/mediaitemfolders.nl', { query, body }, cb

  # Delete a group of media files (array of item ids) from src to dest folder
  client::deleteMediaFiles = (fileIds=[], srcFolder, overwrite=true, cb) ->
    query = { folder: srcFolder, _grpDelete: 'T', newfolder: destFolder, overwrite }
    body = ("sa#{fid}fldF=T" for fid in fileIds).join('&')
    @post '/app/common/media/mediaitemfolders.nl', { query, body }, cb

  # TODO: multipart/form data to get this working... for now this is just a placeholder
  client::importMediaFile = (data) ->
    params = []
    body = params.join "#{boundary}Content Disposition: form-data; name=\"#{param}\""
    @post '/app/common/media/importmediabatch.nl', { headers: "multipart/form-data; boundary=#{boundary}", body }