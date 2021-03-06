# suite-n-sour.js :: rpc.coffee - by Robbie Saunders (eibbors.com)
# Basic HTTP client with modifications adding support for invoking NetSuite remote
# procedures and managing the cookies necessary to maintain login sessions.
http = require "http"
https = require "https"
url = require 'url'
qs = require 'querystring'
zlib = require 'zlib'
fs = require 'fs'
{EventEmitter} = require 'events'
xml = require './xml'

# Default handlers for invoking nlapi calls
JSONR_HANDLER = '/app/common/scripting/nlapijsonhandler.nl'
XMLR_HANDLER = '/app/common/scripting/nlapihandler.nl'
SUCCESSFUL_STATUS_CODES = [200, 206, 302] # Considered success by NS rpc client

# Provides convenient ways of calling different RPC handlers and should be extended
# with specialized requests in sub modules
class NsRpcClient extends EventEmitter

  # Accepts basic http client configuration parameters via an options object:
  # host, port, secure (https? defaults to [true]), cookies, and that's all for now
  constructor: (options={}) ->
    @requestId = 0
    @host = options.host ? 'system2.netsuite.com'
    if options.secure or not options.secure? 
      @connection = https
      @port = options.port ? 443
    else
      @connection = http
      @port = options.port ? 80
    @cookies = options.cookies ? {}

  # Generate default http(s) options object to keep things DRY
  request: (method, path, opts={}, cb) =>
    # increment our request id counter
    rid = opts.rid ? ++@requestId
    # declare the simplest parts of the request
    options = { method: method ? 'GET', host: opts.host ? @host, port: opts.port ? @port }
    headers = { host: options.host, nsxmlhttprequest: 'NSXMLHttpRequest' }
    # add any stored cookies to headers
    for key, value of @cookies
      headers.cookie ?= ''
      headers.cookie += "#{key}=#{value}; "
    # handle query and path nonsense
    options.path = "#{path ? '/'}"
    if opts.query then options.path += "?#{qs.stringify(opts.query)}"
    # handle post put body
    if method is 'POST' or method is 'PUT'
      body = opts.body ? null
      headers['content-length'] = body.length
    # load any extra headers from opts
    for h, v of opts.headers
      headers[h] = v
    options.headers = headers
    # Create the http(s).request and use it to create a response obj
    req = @connection.request options, (r) =>
      res = new NsRpcResponse r, rid, (response) =>
        # Emit an error event if response is reporting an issue
        if response.error then @emit 'error', response.error, rid
        if 299 < response.statusCode < 400 and response.headers.location?
          response.followRedirect = (opt..., cback) =>
            @urlr response.headers.location, opt, cback
        @emit 'response', rid, response, { requestOptions: options }
        cb response
      # update our cookie jar
      for name,value of res.parseCookies()
        @cookies[name] = value
    # Emits the request details attached to 'request' event
    @emit 'request', rid, req, options
    if body then req.write(body)
    req.end()
    { request: req, id: rid }

  # Allow for basic URL parsing
  urlr: (target, options={}, cb) ->
    u = url.parse target
    # Allow temporary swapping of connection protocol
    if u.protocol? is 'http:' and @connection isnt http
      cref = https
      @connection = http
    else if u.protocol? is 'https:' and @connection isnt https
      cref = http
      @connection = https
    else
      cref = false
    # Everything else should 
    path = options.path ? u.path ? "#{u.pathname}?"
    options.host ?= u.host ? @host
    options.port ?= u.port ? @port
    ur = @request options.method, path, options, cb
    if cref then @connection = cref
    ur

  # Convenience method for simple GET requests
  get: (path, options={}, cb) ->
    @request 'GET', path, options, (response) =>
      if options.parser
        response.parseBody options.parser, cb
      else
        cb response

  # Like @get, but for POST requests, engenius!
  post: (path, options={}, cb) ->
    @request 'POST', path, options, cb

  # Convenience method for submitting form-data via POST
  formr: (path, form, cb) ->
    options =
      body: qs.stringify(form)
      headers:
        'content-type': 'application/x-www-form-urlencoded; charset=utf-8'
    @post path, options, cb
 
  # Method used to invoke multipart/form-data requests MultiPartForm (rpc.MPForm()
  mpformr: (path, mpform, cb) ->
    throw('Must pass an object with fields/files properties or MPForm class instance') unless typeof mpform is 'object' 
    unless mpform.buildRequestOptions?
      mpform = new MultiPartForm mpform.fields ? {}, mpform.files ? {}, mpform
    @post path, mpform.buildRequestOptions(), cb

  # Emulates NetSuite's JSON RPC requests, their newer nlapi call schema 
  jsonr: (jrmethod, jrparams, options={}, cb) =>
    rid = ++@requestId
    path = options.path ? JSONR_HANDLER
    query = 
      jrr: 'T'
      jrid: rid
      jrmethod: "remoteObject.#{jrmethod}"
      jrparams: JSON.stringify(jrparams ? [])
    if options.method? is 'POST'
      body = JSON.stringify { id: query.jrid, method: query.jrmethod, params: query.jrparams }
      query = jrr: 'T'
      headers = 'content-type': 'application/json; charset=utf-8'
      @request 'POST', path, { rid, body, query, headers }, (response) =>
        response.parseBody options.parser ? 'json', cb
    else
      @request 'GET', path, { rid, query }, (response) =>
        response.parseBody options.parser ? 'json', cb

  # Support for older xml based api calls, nlapiRequest, nsDebugRequest, etc.
  # Will render (build) the xml document from payload objects or do nothing for primitives
  xmlr: (path, payload, cb) ->
    if typeof payload is 'object'
      body = xml.render(payload)
    options = 
      body: body ? payload ? ''
      headers: {'content-type': 'text/xml; charset=utf-8'}
    @post path ? XMLR_HANDLER, options, cb
 
    
# Abstract HTTPS response container with helpers to handle NetSuite's supported data formats
class NsRpcResponse

  # Should be called from the response event so it can properly buffer the response body
  # and perhaps decode it before passing itself back
  constructor: (response, @requestId, callback) ->
    @statusCode = response.statusCode
    @headers = response.headers
    @parseNsHeaders()
    @body = ''
    response.on 'data', (data) =>
      @body += data
    response.on 'end', =>
      @decodeBody =>
        @checkForErrors =>
          callback @

  # Decode response body / parse content headers (NetSuite may gzip some responses)
  decodeBody: (cb) ->
    # Should look into mime type library in the future (parses content type)
    ctype = /(\S+)\/(\S+); charset=(\S+)/i.exec(@headers['content-type'] ? '')
    if ctype then @content = {type: ctype[1], format: ctype[2], charset: ctype[3]}
    else @content = {}
    # Snag the filename, should there be a content-disposition field
    cdispo = /inline;filename="(.*)"/i.exec(@headers['content-disposition'] ? '')
    if cdispo then @content.filename = cdispo[1] 
    # Finally do the dirty and take care of any compression
    @content.encoding = @headers['content-encoding'] ? null
    # Decode content based on encoding
    if @encoding in ['gzip', 'deflate']
      zlib.unzip @body, (parsed) =>
        @raw = @body
        @body = parsed 
        cb @body, @raw
    else 
      cb @body

  # Parse any set-cookie headers and add them to @cookies or provided cookie jar
  parseCookies: () ->
    cookies = {}
    if @headers['set-cookie']?
      for cookie in @headers['set-cookie']
        parsed = /(\w+)=([^;]+); /.exec cookie
        cookies[parsed[1]] = parsed[2]
    return @cookies = cookies

  # Intermediate step in order to test for NetSuite errors
  checkForErrors: (cb) ->
    if /<onlineError>/.test @body # XML error found
      @parseBody 'xml', (error, raw) =>
        @error = error
        cb @
    else if /\{.*"ERROR_MESSAGE"\s*:.*\}/.test @body # Non-standard JSON error found
      @parseBody 'json', (parsed, raw) =>
        @error = { code: parsed.ERROR_CODE ? parsed.CODE ? undefined, message: parsed.ERROR_MESSAGE }
        cb @
    else
      cb @

  # Parse custom headers NetSuite provides for tracing/debugging/support cases
  parseNsHeaders: (cb) ->
    # SOLR Rtimer field identifying the request thread, serverId, port request was routed to
    if @headers['ns_rtimer_composite']?
      [rtime, server, srvPort] = @headers['ns_rtimer_composite'].split(':')
      srvstr = ''
      for i in [0...server.length] by 2
        srvstr += String.fromCharCode(parseInt(server.substr(i,2), 16))
      @rtimer =
        threadId: rtime
        serverId: srvstr
        port: srvPort
    if @headers['nlcachenote']?
      fcache = /FromMediaCache=(T|F)/.exec @headers['nlcachenote']
      if fcache then @fromMediaCache = (fcache[1] is 'T')
    if @headers['nlredirectreason']?
      @redirectReason = @headers['nlredirectreason']
      
    if typeof cb is 'function' then cb @


  # Parses @body after partial validation, sends output to callback, returns result of validation
  parseBody: (format, cb) ->
    if not @body? then return undefined
    switch format
      when 'json'
        body = @body.replace(/^\s*<!--[\s\S]*?-->\s*$/gm, '') # strip html comments 
        if /^\s*(\{|\[)/.test body # first nonspace-char is { or [
          @parsed = JSON.parse body
          return cb @parsed, @body
      when 'xml'
        if xml.verify @body # verify starts with valid xml tag
          xml.parse @body, (err, parsed) =>
            if err then return cb false, @body, err
            else 
              @parsed = parsed
              cb @parsed, @body
      when 'csv'
        @parsed = { lines: [], columns: [], rows: [] }        
        trimmed = @body.replace(/^\s\s*/, '').replace(/\s\s*$/, '')
        @parsed.lines = trimmed.split(/\n\n*/)
        @parsed.columns = @parsed.lines[0]?.split(',')
        rexparts = new Array(@parsed.columns.length).join(',([^,]+|"[^"]+")')
        csvrex = new RegExp("^([^,]+|\"[^\"]+\")#{rexparts}$")
        @parsed.rows = []
        for line in @parsed.lines
          r = csvrex.exec(line) or line.split(',')
          row = {}
          for i,c of @parsed.columns
            row[c] = r[Number(i)+1] ? null
          @parsed.rows.push row
        cb @parsed, @body
      else
        if /^\s*(\{|\[)/.test @body 
          @parseBody 'json', cb
        else if xml.verify @body, true
          @parseBody 'xml', cb

  # Save request body 
  saveFile: (filename, cb) ->
    filename ?= @content.filename ? "#{@requestId}.log"
    if typeof cb is 'function'
      fs.writeFile filename, @body, @content.charset ? 'utf-8', cb
    else
      fs.writeFileSync filename, @body, @content.charset ? 'utf-8'

# This class handles the tedious syntax required for multipart/form-data requests
# fields object = simple key-value map { field1: 'val1', field2: 2 } ...
# files object = key-value map where value contains the following properties:
#   filename: 'example.txt', type: 'text/plain' (mime type), value: 'file contents...'
class MultiPartForm
  constructor: (@fields={}, @files={}, options={}) ->
    # Sample generated boundary: '----------------38429f62b5379ecc4ef8ach51c0f2gb'
    @boundary = options.boundary ? "----------------#{Math.random().toString(22).substr(2)}"

  addField: (name, value) ->
    @fields[name] = value

  addFields: (obj) ->
    for k,v of obj
      @fields[k] = v

  addFile: (name, filename, type, value) ->
    @files[name] = { filename, type, value }

  serializeBody: ->
    fld  = ("\r\nContent-Disposition: form-data; name=\"#{k}\"\r\n\r\n#{v}\r\n" for k,v of @fields)
    file = ("\r\nContent-Disposition: form-data; name=\"#{k}\"; filename=\"#{v.filename}\"\r\nContent-Type: #{v.type}\r\n\r\n#{v.value}\r\n" for k,v of @files)
    body = ([''].concat fld, file, "--").join "--#{@boundary}"
    body

  buildRequestOptions: (options={}) ->
    console.log options.headers ?= {}
    console.log options.body = @serializeBody()
    console.log options.headers['content-type'] = "multipart/form-data; boundary=#{@boundary}"
    options

# Expose public classes
module.exports = 
  Client: NsRpcClient
  Response: NsRpcResponse
  MPForm: MultiPartForm