# suite-n-sour.js :: rpc.coffee - by Robbie Saunders (eibbors.com)
# Basic HTTP client with modifications adding support for invoking NetSuite remote
# procedures and managing the cookies necessary to maintain login sessions.
http = require "http"
https = require "https"
qs = require 'querystring'
zlib = require 'zlib'
xml = require './xml'
{EventEmitter} = require 'events'

# Default handlers
JSONR_HANDLER = '/app/common/scripting/nlapijsonhandler.nl'
XMLR_HANDLER = '/app/common/scripting/nlapihandler.nl'

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
        if response.error then @emit 'error', response.error, rid
        # apologize if r, res, and response representing the progression of objects is hard
        # to think about scope-wise. I just picture the variable like a progress bar, longer = better
        @emit 'response', rid, response, { requestOptions: options }
        cb response
      # update our cookie jar
      for name,value of res.parseCookies()
        @cookies[name] = value
    @emit 'request', rid, req, options
    if body then req.write(body)
    req.end()
    @emit 'request', rid, req
    { request: req, id: rid }

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
 
  # Emulates NetSuite's JSON RPC requests, found all over the official NLAPI modules 
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

  xmlr: (path, payload, cb) ->
    if typeof payload is 'object'
      body = xml.render(payload)
    options = 
      body: body ? payload ? ''
      headers: {'content-type': 'text/xml; charset=utf-8'}
    @post path, options, cb
 
    
# Abstract HTTPS response container with helpers to handle NetSuite's supported data formats
class NsRpcResponse

  # Should be called from the response event so it can properly buffer the response body
  # and perhaps decode it before passing itself back
  constructor: (response, @requestId, callback) ->
    @statusCode = response.statusCode
    @headers = response.headers
    @body = ''
    response.on 'data', (data) =>
      @body += data
    response.on 'end', =>
      @decodeBody =>
        @parseErrors =>
          callback @

  # Decode response body (NetSuite may gzip some responses)
  decodeBody: (cb) ->
    if @headers['content-encoding']? in ['gzip', 'deflate']
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
  parseErrors: (cb) ->
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
              return cb @parsed, @body
      when 'guess'
        if /^\s*(\{|\[)/.test @body 
          @parseBody 'json', cb
        else if xml.verify @body, true
          @parseBody 'xml', cb

# Expose public classes
module.exports = 
  Client: NsRpcClient
  Response: NsRpcResponse