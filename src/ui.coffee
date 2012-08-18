# suite-n-sour.js :: ui.coffee - by Robbie Saunders (eibbors.com)
# The main user interface emulation module. Includes an extension of the rpc.Client class
# that contains implementations for much of the nl(ns) api. Also contains some useful metadata
# and response modeling classes.
rpc = require './rpc'
qs = require 'querystring'
fs = require 'fs'

# She's a monster of a class, but considering the size of the NetSuite api, it's unavoidable
# It beats 20-30+ JavaScript files polluting the global context with hundreds of NLxxx's 
class NsUiClient extends rpc.Client

  constructor: (options={}) ->
    super
    @session = {}
  
  # Send nlapiRequests (NetSuite's internal xml api)
  nlapir: (attr, elements, options, cb) ->
    elements['@'] ?= attr # type attribute can be overridden in the elements obj
    nr = { nlapiRequest: elements }
    @xmlr options.path ? undefined,  nr, (res) ->
      if res.statusCode is 200
        res.parseBody 'xml', (parsed) ->
          cb parsed, res
      else cb null, res

 #----------------------------------------------------------
 # Methods for logging in, out, around, and other such tomfoolery
 #----------------------------------------------------------

  # Login to grab a set of session cookies. User can be a string (email address)
  # or an object specifying additional params, ie: company, role
  login: (user, password, cb) ->
    if typeof(user) is 'object' then params = user else params = { email: user }
    params.password ?= password
    @formr '/app/login/nllogin.nl', params, (res) =>
      res.success = not res.error and res.statusCode is 302
      @session = new NsUiSession(user, res.cookies)
      cb(res, @session)

  # More specific method call for logins where multiple companies or roles may apply
  loginAs: (email, password, company, role, cb) ->
    user = { email, company, role }
    @login user, password, cb

  # Web service call for logging in and redirecting to a certain task
  wslogin: (email, password, company, role, taskid, recordId=-1, edit='F', cb) ->
    params = { email, password, c: company, role, taskid, id: recordId, e: edit }
    @formr '/app/webservices/wslogin.nl', params, (res) ->
      res.success = not res.error and res.statusCode is 302
      @session = new NsUiSession(user, res.cookies)
      cb(res, @session)

  # Requests the logout or logoutnoback page, which should both void our session
  logout: (noback..., cb) ->
    if noback then uri = '/pages/nllogoutnoback.jsp'
    else uri = '/pages/nllogout.jsp'
    @get '/pages/nllogoutnoback.jsp', {}, cb

  # Will switch roles given your email/role nkey and hash. These are returned by the
  # fetchMyRoles function, once logged in
  switchRoles: (nkey, hash, cb) ->
    @get '/app/login/dashboard.nl', { query: { id: nkey, h: hash } }, (res) ->
      res.success = not res.error and res.statusCode is 302
      if res.success and @session?
        @session.loadCookies(res.cookies)
      else
        @session ?= new NsUiSession({nkey}, res.cookies)
      cb res, @session

  # Lets you check if an e-mail has access to a certain company (id), regardless of
  # ehether you own the company or e-mail address ;-) shhhh!
  checkForAccess: (company, email, cb) ->
    @get '/app/common/entity/checkemailaccess.nl', { query: {compid: company, email }}, (res) ->
      if /parent.warnemailaccess=false;/.test(res.body) then cb false, res
      else if /parent.warnemailaccess=true;/.test(res.body) then cb true, res
      else cb undefined, res

 #----------------------------------------------------------
 # Standard JSON RPC Requests - Lots of very handy stuff!
 #----------------------------------------------------------

  # Request the current user information and execution context
  getContext: (cb) -> 
    @jsonr 'getContext', [], {}, (res) =>
      if not res.error
        @session.context = res.result ? {}
      cb res, @session.context

  # Request the hexadecimal color codes for the current scheme
  # @sample: {text:"#000000", activetab:"#497971", link:"#000000",...}
  getColorPreferences: (cb) ->
    @jsonr 'getColorPreferences', [], {}, (res) =>
      if not res.error
        @session.colors = res.result ? {}
      cb res, @session.colors

  # Request all session-level objects (esentially server-side cookies that
  # expire with the session)
  getAllSessionObjects: (cb) -> 
    @jsonr 'getAllSessionObjects', [], {}, cb

  # Request a specific session-level object
  getSessionObject: (name, cb) ->
    @jsonr 'getSessionObject', [name], {}, cb

  # Request all preferences for specific record type
  # @sample: I couldn't get this to return anything but `{}`
  getScriptPreferences: (recordType, cb) ->
    @jsonr 'getScriptPrefs', [recordType], {}, cb

  # Single preference request... see enums.preferences 
  # current user, some names: COLORTHEME, DOWNLOADPDFS, SYSTEMLARGEFONT, ...
  getPreference: (name, cb) ->
    @jsonr 'getPref', [name], {}, (res) =>
      if not res.error and res.result? isnt null
        @session.preferences[name] = res.result
      cb res, @session.preferences[name] ? null

  # Request permitted level for restricted records/settings by permission name
  # @returns {int} permission levels: 0-none, 1-view, 2-create, 3-edit, 4-full
  getPermission: (name, cb) ->
    @jsonr 'getPerm', [name], {}, cb

  # Request whether user has enabled a specific feature, like web services
  # @sample: true / false
  getFeature: (name, cb) ->
    @jsonr 'getFeature', [name], {}, cb

  # Request all supported taskid's (result keys) and their links (values)
  # @sample: {repo_cust_212:"\\/app\\/reporting\\/reportcomposer.nl?cr=212&e=T",...}
  getTaskLinks: (cb) -> 
    @jsonr 'getTaskLinks', [], {}, (res) =>
      if not res.error  
        @session.taskLinks = res.result ? {}
      cb res, @session.taskLinks

  # Request a list of the amount of usage `credits` various nlapi methods cost
  # @ssample: { nlobjWebStoreOrderImpl_addItems: 20, nlapiSendCampaignEmail: 10 }
  getUsageUnits: (cb) ->
    @jsonr 'getUsageUnits', [], {}, (res) =>
      if not res.error  
        @session.usageUnits = res.result ? {}
      cb res, @session.usageUnits

  # Downloads basic metadata for available record types, results are keyed by type id
  # @sample: { 'type': { id: 'type', scriptable: true, ... }, ... }
  getRecordTypes: (cb) -> 
    @jsonr 'getRecordTypes', [], {}, (res) =>
      if not res.error
        @session.recordTypes = res.result ? {}
      cb res, @session.recordTypes

  # Encrypt clear text using common algorithms (verified: sha1, aes, base64, xor)
  # Make sure your chosen algorithm supports keys if running into problems
  encrypt: (str, type='sha1', key=null, cb) ->
    @jsonr 'encrypt', [str, type, key], {}, cb

  # Decrypt encrypted text using common algorithms (verified: aes, base64, xor)
  # Make sure the algorithm isn't `one-way` and supports keys if running into problems
  decrypt: (str, type='sha1', key=null, cb) ->
    @jsonr 'decrypt', [str, type, key], {}, cb

  # Deletes (permanently!) a record given its type and internal id
  deleteRecord: (type, id, cb) ->
    @jsonr 'deleteRecord', [type, id], {}, cb

  # Fetch the exchange rate, given two currencies and the date the exchange would become effective
  exchangeRate: (fromCurrency, toCurrency, effectDate, cb) ->
    effectDate ?= (new Date())
    dateStr = "#{effectDate.getMonth() + 1}/#{effectDate.getDate()}/#{effectDate.getFullYear()}"
    @jsonr 'exchangeRate', [fromCurrency, toCurrency, dateStr], {}, cb

  # Execute a global keyword search and return SearchResults object
  searchGlobal: (keywords, cb) ->
    @jsonr 'searchGlobal', [keywords], {}, (res) ->
      cb new SearchResults(res?.result)

  # Perform a duplicate record search for (record) type by fields object or search id
  searchDuplicate: (type, fields, id, cb) ->
    if isNaN(id) then id = -1
    # fields = psuedoHashMap(fields)
    @jsonr 'searchDuplicate', [type, id, fields], {}, cb

  # Get the set of possible search columns for a particular record type
  getSearchColumns: (type, filter, op, cb) ->
    @jsonr 'getSearchColumns', [type, filter, op], {}, (res) ->
      cb res.result

  # Execute a search for a certain record type
  searchRecord: (type, id, filters=[], columns=[], cb) ->
    if not Array.isArray filters then filters = [filters]
    if not Array.isArray columns then columns = [columns]
    @jsonr 'searchRecord', [type, id, filters, columns], {method: 'POST'}, (res) ->
      cb new SearchResults(res?.result)

  # Fetch the URL of a NS resource TASKLINK/RECORD/SUITELET
  resolveURL: (type, identifier, id, pagemode, cb) ->
    switch type.toLowerCase()
      when 'suitelet'
        if pagemode is true then pagemode = 'external'
        else if pagemode is false then pagemode = 'internal'
      when 'record'
        if pagemode is true then pagemode = 'edit'
        else if pagemode is false then pagemode = 'view'
    @jsonr 'resolveURL', [type, identifier ? null, id ? null, pagemode ? null], {}, cb

  # Fetch the total usage allowed by current context
  getTotalScriptGovernance: (bundle=-1, cb) ->
    @jsonr 'getTotalScriptGovernance', [bundle], {}, cb

 #----------------------------------------------------------
 # Standard NLAPI (NSXML) Requests - Older API methods
 #----------------------------------------------------------

  # Save some space 
  _nlapiRecReq: (attr, el, cb) ->
    @nlapir attr, el, {}, (parsed, res) =>
      if parsed then cb new NsRecord().extract(res.parsed), res
      else cb parsed, res

  # nlapiCreateRecord request - instantiates a record object with the values of initDefaults
  # filled in already. See NsRecord class for more information 
  createRecord: (recordType, initDefaults, cb) ->
    attr = { type: 'nlapiCreateRecord', recordType }
    if initDefaults then el = { loadParams: initDefaults } else el = {}
    @_nlapiRecReq attr, el, cb

  # nlapiLoadRecord request - loads (instantiates) an existing record 
  loadRecord: (recordType, id, initDefaults, cb) ->
    attr = { type: 'nlapiLoadRecord', recordType, id }
    if initDefaults then el = { loadParams: initDefaults } else el = {}
    @_nlapiRecReq attr, el, cb

  # nlapiCopyRecord request - clones an existing record
  copyRecord: (recordType, id, initDefaults, cb) ->
    attr = { type: 'nlapiCopyRecord', recordType, id }
    if initDefaults then el = { loadParams: initDefaults } else el = {}
    @_nlapiRecReq attr, el, cb

  # nlapiSendEmail request - sends... drumroll please...AN EMAIL!
  # note, author should b 
  sendEmail: (author, recipient, subject, body, cc, bcc, records, cb) ->
    rf = ['transaction', 'entity', 'recordType', 'record', 'activity']
    attr = { type: 'nlapiSendEmail' }
    el = { author, recipient, subject, body, cc, bcc }
    if records then (el[rf[k]] = records[rf[k]]) for k in rf
    @nlapir attr, el, {}, cb

  # nlapiSendFax request - not sure what this one does... hmmm fax someone perhaps?
  sendFax: (author, recipient, subject, body, cc=null, bcc=null, records={}, cb) ->
    attr = { type: 'nlapiSendFax' }
    el = { author, recipient, subject, body }
    for k in ['transaction', 'entity', 'recordType', 'record', 'activity']
      if records[k]? then el[k] = records[k]
    @nlapir attr, el, {}, cb

 #----------------------------------------------------------
 # Functions for working with menu data & lists (including some search results)
 #----------------------------------------------------------

  # Retrieve a list of roles available to your email, including params needed to switch to them
  fetchMyRoles: (cb) ->
    @get @session.addSticky('ROLEMENU', '/core/elements/compound/NLRoleMenu.nl'), {}, (res) ->
      matches = res.body.match /m_cRR_d1\[\d+\] = new Array\('.+\);/g
      roles = for match in matches
        m = /'([\w\s]+)\',\'(\/app\/login\/dashboard.nl\?id=(\d+)&h=(\w+))/.exec match
        { title: m[1], url: m[2], nkey: m[3], hash: m[4] }
      cb roles, res

  # Get ExtTooltip/QuickSummary/QuickView/EventPopup data (QuickSummary is the only use I've found for it)
  getHoverData:  (recordType, id, options, cb) ->
    recordType = recordType.toUpperCase()
    query = { rectype: recordType, recordType, id, templateType: 'DEFAULT_TEMPLATE', quicksummary: 'T', check:'F' }
    (query[key] = value) for key, value of options # Allow for overriding or adding parameters
    @get '/app/elements/tooltip/NLTooltipRequestHandler.nl', { query }, (res) ->
      if res.statusCode is 200 then res.parseBody 'json', (parsed) ->
        cb new QuickSummary(parsed), res
      else cb res.parsed, res

  # Check for hover data (can be used to check for tooltip/quicksummary availability)
  checkForHover: (recordType, id, cb) ->
    @getHoverData recordType, id, { check: 'T' }, (parsed, res) ->
      cb parsed.success, res

  # Requests an export of list/result data for a given path, see specific formats below
  # Reports do not 
  export: (path, options={}, cb) ->
    query = 
      sortcol: options.sortcol ? ''
      sortdir: options.sortdir ? 'ASC'
      csv: options.csv ? 'HTML'
      OfficeXML: options.OfficeXML ? 'F'
      pdf: options.pdf ? ''
      showall: options.showall ? 'F'
    @get path, { query }, cb

  # When pdf is supported, will export pdf, otherwise exports html (without NL bullshit)
  exportPDF: (path, options={}, cb) ->
    options.pdf = 'T'
    @export path, options, (res) ->
      if res.statusCode is 200
        cb new FileDownload(res, path), res
      else cb null, res

  # Any .nl result page that supports csv exporting should work with this function
  exportCSV: (path, options={}, cb) ->
    path = path.replace(/\.nl(\?[^/]+)?$/, '.csv')
    options.csv = 'Export'
    @export path, options, (res) ->
      if res.statusCode is 200 then cb new ExportedCSV(res), res
      else cb null, res

  # OfficeXML (excel file) export
  exportXLS: (path, options={}, cb) ->
    path = path.replace(/\.nl(\?[^/]+)?$/, '.xls')
    options.OfficeXML = 'T'
    options.csv = 'Export'
    @export path, options, (res) ->
      if res.statusCode is 200 then cb new FileDownload(res), res
      else cb null, res

 #----------------------------------------------------------
 # Various media/template calls
 #----------------------------------------------------------

  fetchSiteMedia: (id, cb) ->
    @get '/app/site/media/sitemedia.nl', {query: {id}}, cb

  previewMedia: (id, cb) ->
    @get '/core/media/previewmedia.nl', {query: {id}}, cb

  previewTemplate: (id, entity, cb) ->
    query = {id}
    if entity then query.entity = entity 
    @get '/app/crm/common/merge/previewtemplate.nl', {query}, cb

 #----------------------------------------------------------
 # Under Construction or at least untested... most likely broken!
 #----------------------------------------------------------

  # Accept or decline an event invitation/proposal
  respondToEvent: (accepted=true, eventId, cb) ->
    if accepted then response = 'accepted' else response = 'declined'
    @get '/app/crm/calendar/eventresponse.nl', {query: { l:'T', istimed:'T', eventId, response }}, cb

  # Switched from menu to csv export 
  listRecentRecords: (cb) ->
    # https://system2.netsuite.com/core/elements/compound/NLRecentMenu.nl?t=dkSJA7s3X

  downloadRecentRecordCSV: (options={}, cb) ->
    @exportCSV '/app/common/otherlists/recentrecords.nl', options, cb

  addShortcut: (label, taskid, params={}, cb) ->
    params = qs.stringify(params)
    @get '/core/pages/addShortcut.nl', { query: {xml: 'T', label, taskid, params} }, cb
  # nlOpenWindow('/core/pages/addShortcut.nl?label='+escape('Response')+'&taskid=TRAN_EVENTRESPONSE&params=popup%3DT','addshortcut','scrollbars=no,width=400,height=150');

# Models and misc. helper functions
# ==============================================================================

# The UI Session class is esentially a cache for any data that will remain static for at
# least the remainder of our session's validity. Especially API metadata that must be 
# queried, such as Task Links, Record Types, Usage Units, and so on...
class NsUiSession
  constructor: (user, cookies) ->
    # Store 
    @creds = user ? { email: null, password: null, company: null, role: null, nskey: null } # 
    @auth = { JSESSIONID: null, lastUser: null, NS_VER: null }
    # These were part of an '@meta' property, but found them easier defined individually
    @stickyTags = {}
    @context = {}
    @recordTypes = {}
    @taskLinks = {} 
    @usageUnits = {} 
    @objects = {} 
    @preferences = {} 
    @features = {} 
    @colors = {}
    @loadCookies(cookies)

  # Provide alternative properties with extra meaning and/or 'cleaner' names
  loadCookies: (cookies) ->
    for name, value of cookies
      switch name
        when 'JSESSIONID'
          @auth.JSESSIONID = @id = value
        when 'lastUser'
          @auth.lastUser = value
          udata = value.split('_')
          @lastUser = { account: udata[0], entity: udata[1], role: udata[2], input: value }
        when 'NS_VER'
          @auth.NS_VER = value
          vdata = value.split('.')
          @nsVersion = { year: vdata[0], major: vdata[1], minor: vdata[2], revision: vdata[3] ? null }
        when 'stickytags'
          for tag in value.split(',')
            parts = tag.split(':')
            @stickyTags[parts[0]] = parts[1]

  # Will append a sticky tag value to a path (string) or query object
  addSticky: (taskId, pathOrObj) ->
    if typeof pathOrObj is 'string'
      if /\?./.test(pathOrObj)
        "#{pathOrObj}&t=#{@stickyTags[taskId] ? ''}"
      else
        "#{pathOrObj}?t=#{@stickyTags[taskId] ? ''}"
    else if typeof pathOrObj is 'object'
      pathOrObj.t = @stickyTags[taskId] ? ''
    else
      @stickyTags[taskId]

# Abstract class for modeling netsuite records
class NsRecord
  constructor: (@recordType=null, @id=null) ->
    @fields = {}
    @fieldNames = []
    @lineTypes = {}
    @lineFields = {}
    @lineItems = {}
    @currentLineItems = {}
    @currentLineItemIndexes = {}
    @matrixFields = {}
    @initialized = false
    @operations = []

  # Extract record data from parsed nlapiResponse body
  extract: (res) ->
    rec = res.nlapiResponse?.record ? null
    for key, value of rec
      switch key
        when '@' # Attributes of the record node
          @recordType = value.recordType ? null
          @fieldNames = value.fields.split(',') ? []
          @permLevel = value.perm ? -1    
        when 'machine' # Array of machines
          for mach in value
            matts = mach['@'] ? {}
            @lineItems[matts.name] = mach['line'] ? []
            @lineTypes[matts.name] = matts.type ? null
            @lineFields[matts.name] = matts.fields?.split(',')
            if matts.matrixfields?
              @matrixFields[matts.name] = matts.matrixfields.split(',')
        else # Any other nodes should be simple fields
          @fields[key] = value 
    return @

  # Changes to the record are logged as operations, enabling batch processing within
  # a single nlapiRequest, which is why records need to be commited after being edited
  logOperation: (operation, args) ->
    if @initialized then @operations.push { operation, args }

  # Set single field value
  setFieldValue: (name, value) ->
    @logOperation 'setFieldValue', { field: name, value }

  # Set multi-select field values 
  setFieldValues: (name, values) ->
    if not Array.isArray(values) then values = [values]
    @logOperation 'setFieldValues', { field: name, value: values }

  # Chainable convenience method for setting field values, accepts singular values, single
  # array values (like setFieldValues) AND arbitrary number of values. for ex,
  # rec.setFld('name', 'Billy').setFld('likes', 'you', 'netsuite', 'cheezburgers').setFld('nums', [1,2,3])
  setFld: (name, values...) ->
    if arguments.length > 2
      @setFieldValues name, values
    else
      value = values[0] ? null
      if Array.isArray value then @setFieldValues name, value
      else @setFieldValue name, value
    return @

  # TODO: Double check validity
  # Inserts a blank line item at a given line # for sublist type
  insertLineItem: (type, line) ->
    @lineitems[type] ?= []
    @lineitems.splice line, 0, []
    @logOperation 'insertLineItem', { type }

  # Splice out a line item for sublist type / line #
  removeLineItem: (type, line) ->
    @lineitems[type]?.splice line, 1
    @logOperation 'removeLineItem', { type }

  # Set matrix value operation
  setMatrixValue: (type, field, column, value) ->
    fh = @fields["#{type}header"] ? null
    @fields["#{fh}#{column}"] = value 
    @logOperation 'setMatrixValue', { type, field, column, value }

  isMatrixField: (type, field) ->
    field in @fields["#{type}matrixfields"]?.split(',')

  # Convenience method for avoiding fucked up (seriously) matrix syntax
  getMatrixValue: (type, field, column) ->
    @fields[@fields["#{type}header"]+column] ? undefined

# *Used by getQuickSummary* NetSuite uses QuickSummary queries for displaying key record details upon mouseover.
# These execute quickly, contain the most important info (usually), and come with free html formatting
class QuickSummary
  constructor: (response) ->
    @fields = {}
    for key, value of response
      freg = /([A-Za-z]+)(\d+)/gm.exec key
      if freg # matches the field pattern
        @fields[freg[2]] ?= {}
        switch freg?[1]
          when 'fieldName'
            @fields[freg[2]].name = value
          when 'display'
            @fields[freg[2]].display = value
          when 'fieldValue'
            if value is '&nbsp;' then value = ''
            @fields[freg[2]].value = value 
      else # Others will just be copied straight over to this
        @[key] = value

  getVisibleFields: ->
    fld for i, fld of @fields when fld.display is 'visible'


class SearchFilter 
  constructor: (@name, @join, @operator, @values..., options) ->
    @formula = options.formula ? null
    @summarytype = options.summarytype ? null
    @isor = options.isor ? false
    @isnot = options.isnot ? false
    @leftparens = 0
    @rightparens = 0
    return @

  addValue: (values...) ->
    @values = @values.concat values
    return @

class SearchColumn 
  constructor: (@name, @join, @summary, options={}) ->
    @type = options.type ? null
    @label = options.label ? null
    @sortdir = options.sortdir ? null
    @index = options.index ? -1
    @functionid = options.functionid ? null
    @formula = options.formula ? null
    @userindex = options.userindex ? -1
    @whenorderedby = options.whenorderedby ? null
    @whenorderedbyjoin = options.whenorderedbyjoin ? null
    return @

# Wraps the results of a global search to provide helperss
class SearchResults 
  constructor: (result={}) ->
    @columns = result.columns ? []
    @rows = result.rows ? []

  # Returns rows as standard objects, improving user friendliness
  getRowObjects: ->
    for row in @rows
      obj = 
        id: row.id
        recordType: row.recordType
      for cell in row.cells 
        obj[cell.name] = cell.value
      obj

  # Returns an array (=rows) of arrays (=cells)
  # First row will include column titles unless you pass false
  buildArray: (inclHeader=true) ->
    table = []
    if inclHeader 
      table.push []
      for col in @columns
        table[0][col.index - 1] = col.name
    for row in @rows
      tr = []
      for cell in row.cells
        tr[cell.index - 1] = cell.value
      table.push tr
    table

# Basic inline file utility class
# TODO: Build this into rpc.Response, along with CSV parsing(maybe?)
class FileDownload
  constructor: (response={}, path) ->
    ctype = /(\S+)\/(\S+); charset=(\S+)/i.exec(response.headers?['content-type'] ? '')
    if ctype 
      @type = ctype[1]
      @format = ctype[2]
      @encoding = ctype[3]
    cdispo = /inline;filename="(.*)"/i.exec(response.headers?['content-disposition'] ? '')
    if cdispo then @filename = cdispo[1] 
    else 
      rfile = /\b(\w+\.\w+)(\?[^\/]+)?$/i.exec(path ? "./response.#{response.requestId}")
      if rfile then @filename = "#{response.requestId}.#{rfile[1]}.#{@format ? 'log'}"
      else @filename = "#{response.requestId}.log"
    @raw = response.body

  # Save the raw file data, both sync and async supported
  save: (filename, cb) ->
    if typeof cb is 'function'
      fs.writeFile filename, @raw, @encoding ? 'utf-8', cb
    else
      fs.writeFileSync filename, @raw, @encoding ? 'utf-8'

# Utility class for working with NetSuite's CSV exports
class ExportedCSV extends FileDownload
  constructor: (response={}) ->
    super
    if @raw
      # trim leading and trailing whitespace, ignore blank lines
      trimmed = @raw.replace(/^\s\s*/, '').replace(/\s\s*$/, '')
      @lines = trimmed.split(/\n\n*/)
      # assume NS will format the columns without any extra commas for now
      @columns = @lines[0]?.split(',')
      # TODO: double, nay quintuple, check this won't break 
      rexparts = new Array(@columns.length).join(',([^,]+|"[^"]+")')
      csvrex = new RegExp("^([^,]+|\"[^\"]+\")#{rexparts}$")
      @rows = []
      for line in @lines
        r = csvrex.exec line
        if r
          row = {}
          for i,c of @columns
            row[c] = r[Number(i)+1]
        else 
          row = line.split(',') # fallback on immature row parse, if need be
        @rows.push row

# Expose public functions
module.exports = 
  Client: NsUiClient 
  Session: NsUiSession
  Search:
    Results: SearchResults
    Column: SearchColumn 
    Filter: SearchFilter