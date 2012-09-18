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

  # Download an entire media folder as a zip file (be careful using this on 
  # large folders as the whole thing will be loaded into memory
  client::downloadMediaFolder = (id, cb) ->
    query = { id, _xd:'T', e: 'T'}
    @get '/core/media/downloadfolder.nl', { query }, cb

  # Haven't tested these two to verify if id alone is sufficient:
  client::getSiteMedia = (id, cb) ->
    @get '/app/site/media/sitemedia.nl', {query: {id}}, cb

  client::previewMediaFile = (id, cb) ->
    @get '/core/media/previewmedia.nl', {query: {id}}, cb