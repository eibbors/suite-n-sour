# suite-n-sour.js :: offline.coffee - by Robbie Saunders (eibbors.com)
# The foundation of a client for NetSuite's Offline Sales synchronization
# API, which can be useful if your account has access.
rpc = require './rpc'
xml = require './xml'

# Start of NetSuite offline client implementation, which I'm still in the
# process of reverse engineering. Offers some great alternatives to ui/soap
# functionality which I hope to take better advantage of:
class NsOfflineClient extends rpc.Client

  constructor: () ->
    super
    @session = {}

  # Minimizes repetetive code for common OLC requests by providing option
  # to append offlineversion and/or lastsynctime to query, as well as automatically
  # parsing any xml response bodies
  olcr: (path, query, options={}, cb) ->
    headers = 'user-agent': 'Suite-n-SOUR.js (Netsuite Offline Client)'
    if options.version
      query.offlineversion = @session.version ? options.version
    if options.lastSync 
      if typeof options.lastSync is 'object'
        query.lastsynctime = @session.formatDate options.lastSync
      else if typeof options.lastSync is 'string'
        query.lastsynctime = options.lastSync
    @get path, {query, headers}, (res) =>
      console.log res
      if xml.verify res.body
        res.parseBody 'xml', cb
      else
        cb null, res

 #----------------------------------------------------------
 # Login / logout requests for the offline client
 #----------------------------------------------------------

  # Begin a new offline client session, with optional arguments
  # passable via extras... (see example in loginAs below)
  login: (email, password, extras..., cb) ->
    query = { email, password }
    for extra in extras
      for k,v of extra
        query[k] = v  
    @get '/app/login/nlofflinelogin.nl', { query }, (res) =>
      res.parseBody 'xml', (parsed) =>
        if parsed.loginresult.status is 'success'
          @session = new NsOfflineSession(email, parsed.loginresult, res.cookies)
        cb parsed, res
  
  # Shorter way of logging into a specific emailid (nkey) 
  loginAs: (email, password, version, nkey, cb) ->
    @login email, password, offlineversion: version, kemaillogin: nkey, cb 

  # Requests the logout or logoutnoback page, which should both void our session
  logout: (noback..., cb) ->
    if noback then uri = '/pages/nllogoutnoback.jsp'
    else uri = '/pages/nllogout.jsp'
    @get '/pages/nllogoutnoback.jsp', {}, cb

 #----------------------------------------------------------
 # Requests to sync metadata used for various purposes
 #----------------------------------------------------------

  # Downloads metadata for the offline sales center (card.nl handles centers) 
  syncCardMetaData: (cb) ->
    @olcr '/app/offline/cardsyncer.nl', {}, {}, cb

  # Downloads a list of files that have changed since last code sync
  syncCodeMetaData: (cb) ->
    @olcr '/app/offline/codesyncer.nl', {}, {}, cb

  # Downloads static metadata (and lots of it!) for a particular record type
  syncRecordTypeMetaData: (recordType, cb) ->
    @olcr '/app/offline/metadatasyncer.nl', {recordType}, {version: true}, cb

  # Downloads annotations for conflicted fields (which cause issues when syncing)
  syncConflictAnnotations: (cb) ->
    @olcr '/app/offline/conflictsyncer.nl', {}, {}, cb

 #----------------------------------------------------------
 # Download Requests based upon metadata above? (still working on)
 #----------------------------------------------------------

  # Simply requests card html for a center section 
  downloadCardPage: (sectionId, cb) ->
    @olcr '/app/center/card.nl', {sc: sectionId}, {version:true}, cb

  # Download static record metadata/status
  downloadStaticRecords: (recordType, cb) ->
    @olcr '/app/offline/staticrecordsyncer.nl', {download:'T', getids:'T', type:recordType}, {}, cb

  downloadCrossReferences: (recordType, lastSync, cb) ->
    @olcr '/app/offline/crossreferencesyncer.nl', {getids: 'T', type: recordType}, {lastSync}, cb

# Similar to, albeit a bit simpler than the NSUISession class... Its main purpose is
# to help cache static & session data to minimize traffic / speed things up
class NsOfflineSession
  constructor: (@email, loginresult, cookies) ->
    @auth = cookies ? { JSESSIONID: null, NS_VER: null }
    @nkey = loginresult.kemaillogin ? null
    @dateFormat = loginresult.dateformat ? null
    @version = loginresult.version ? cookies.NS_VER ? null

  # Convert Date object to string in your NetSuite locale's date format
  formatDate: (date) ->
    date ?= new Date()
    if typeof date isnt 'object' then date = new Date(Date.parse(date))
    if @dateFormat
      df = @dateFormat.replace(/YYYY/i, date.getFullYear())
                      .replace(/YY/i, date.getYear())
                      .replace(/MM/i, date.getMonth()+1)
                      .replace(/DD/i, date.getDate())

module.exports =
  Client: NsOfflineClient
  Session: NsOfflineSession