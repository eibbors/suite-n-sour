# suite-n-sour.js :: ui/media.coffee - by Robbie Saunders (eibbors.com)
# Mixin providing media related extensions, such as queries to the NetSuite
# file cabinet and website media cache
fs = require 'fs' 

# Textfile encodings known to be supported by NetSuite
NS_TEXTFILE_ENCODING =
  UTF8:     { id: 'UTF-8', desc: 'Unicode (UTF-8)' } 
  WINDOWS:  { id: 'windows-1252', desc: 'Western (Windows 1252)' } 
  ISO:      { id: 'ISO-8859-1', desc: 'Western (ISO-8859-1)'  } 
  GB:       { id: 'GB18030', desc: 'Chinese Simplified (GB18030)' } 
  SHIFTJIS: { id: 'SHIFT_JIS', desc: 'Japanese (Shift-JIS)' } 
  MACROMAN: { id: 'MacRoman', desc: 'Western (Mac Roman)' } 

# TODO: These were taken from the xsd schemas for suitetalk, but should be 
#   changed to whichever types the netsuite ui actually support
NS_FILETYPES = ["_AUTOCAD","_BMPIMAGE","_CONFIG","_CSV","_EXCEL","_FLASH","_GIFIMAGE","_GZIP","_HTMLDOC","_ICON","_IMAGE","_JAVASCRIPT","_JPGIMAGE","_JSON","_MESSAGERFC","_MISCBINARY","_MISCTEXT","_MP3","_MPEGMOVIE","_MSPROJECT","_PDF","_PJPGIMAGE","_PLAINTEXT","_PNGIMAGE","_POSTSCRIPT","_POWERPOINT","_QUICKTIME","_RTF","_SMS","_STYLESHEET","_TAR","_TARCOMP","_TIFFIMAGE","_VISIO","_WEBAPPPAGE","_WEBAPPSCRIPT","_WORD","_XMLDOC","_ZIP"]

# Very basic model used for working with file cabinet files / links
class MediaFile
  constructor: (options={}) ->
    # netsuite record fields / information
    @id = options.id ? null 
    # configurable netsuite record fields
    @filetype = options.type ? 'DOCUMENT'
    @folder = options.folder ? null
    @encoding = options.encoding?.id ? options.encoding ? NS_TEXTFILE_ENCODING.UTF8.id
    @url = options.url ? null
    # Parameters required for the multi-part form data
    @filename = options.filename ? "mf#{(new Date).getTime().toString(16)}"
    @type = options.type ? 'text/plain'
    @value = options.value ? null

  # Build (or append to passed) MPForm object (any object with fields & files props)
  # Note: we're not actually creating an MPForm, just the initializable options object
  getMPFormParams: (obj={}) ->
    (obj.fields[k] = v ? '') for k,v of @ when k in ['id', 'filetype', 'folder', 'encoding', 'url']
    if @url is null # Only necessary when url not included
      obj.files ?= {}
      obj.files['mediafile'] = 
        filename: @filename
        type: @type
        value: @value
    obj

  # Load local file data for given file path -- be careful loading hideously large
  # files, especially if using the async version (no callback passed), since this
  # function just loads the whole kit and kaboodle rather than chunked processing
  loadFile: (file, type, cb)  ->
    @filename ?= file.substr(Math.max(file.indexOf('/'), file.indexOf('\\'), 0))
    @type = type ? 'text/plain'
    if typeof cb is 'function'
      fs.readFile file, (err, data) =>
        @value = data.toString('utf-8')
    else 
      @value = fs.readFileSync file
    @

# not ready yet
# class MediaFolder
# class MediaFolderTree

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
  client::checkMediaExists = (filename, folder, cb) ->
    query = { name: filename, folder, formname: 'suite-n-sour' }
    @get '/app/common/media/checkmediaexists.nl', { query }, (res) =>
      cb (/A file with the same name already exists/.test res.body), res

  # Verifies current user has rights to create a folder in the specified location
  # and that another folder with the same name does not already exist
  client::canCreateFolder = (folderName, parentId, cb)->
    path = '/app/common/media/checkmediaservice.nl' 
    @jsonr 'canCreateFolder', [folderName, parentId, true], { path }, cb

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

  # TODO: Media folder creation
  client::createMediaFolder = ->

  # TODO: multipart/form data to get this working... for now this is just a placeholder
  client::addMediaFile = (mediafile, options, cb) ->
    fields = 
      isonline:   if options.isonline then 'T' else 'F'
      isinactive: if options.isinactive then 'T' else 'F'
      unzip:      if options.unzip then 'T' else 'F'
      overwrite:  if options.overwrite then 'T' else 'F'
    mediafile = new MediaFile(mediafile) unless mediafile.getMPFormParams?
    @mpformr '/app/common/media/importmediabatch.nl', mediafile.getMPFormParams({fields}), cb

  client::addMediaLink = (url, folder, options, cb) ->
    fields =
      url: url
      folder: folder
      type: options.type ? 'filecabinet'
      textfileencoding: options.textfileencoding ? NS_TEXTFILE_ENCODING.UTF8.id
      encoding: options.encoding ? NS_TEXTFILE_ENCODING.UTF8.id
      unzip: if options.unzip then 'T' else 'F'
      overwrite: if options.overwrite then 'T' else 'F'
      submitted: 'T'
    @mpformr '/app/common/media/importmediabatch.nl', { fields }, cb


  return {
    ENCODING: NS_TEXTFILE_ENCODING
    File: MediaFile
  }