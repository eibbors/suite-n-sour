# suite-n-sour.js :: debug.coffee - by Robbie Saunders (eibbors.com)
# Module for working with NetSuite's SuiteScript Debugger. Would be nice to include some extra
# helpers in the model class for the debugger's current state, but already this is pretty sweet.
ui = require './ui'
xml = require './xml'

DBGR_HANDLER = '/app/common/scripting/scriptdebugger.nl'

# All standard ui functionality remains intact, but since debugging requires a seperate,
# specific subdomain, the debugger is implemented using inheritance rather than mixins
class NsDebugClient extends ui.Client

  # The debugger property references the current debugger state, received in response to 
  # every proper nsDebugRequest request
  constructor: ()->
    super
    @debugger = {}

  # Invokes an nsDebugRequest via xmlr. Used by all debugger methods, 
  # options.dsid ~~> When === true, automatically append session params
  # options.cf ~~> Unless false, <frame> is included with session requests
  dbgr: (operation, elements, options={}, cb) ->
    dr = { nsDebugRequest: elements }
    dr.nsDebugRequest['@'] = { operation }
    if options.dsid is true # session requests
      dr.nsDebugRequest['@'].debugsessionid = @debugger.sessionId
      elements.url ?= @debugger.source?.url ? 'debugger$debugger.user'
      elements.sourceid ?= @debugger.source?.sourceid ? -1
      (elements.frame ?= @debugger.frame ? 0) unless options.cf is false
    else if options.dsid?
      dr.nsDebugRequest['@'].debugsessionid = options.dsid
    @xmlr DBGR_HANDLER, dr, (res) =>
      if res.headers['content-type'] is 'text/javascript; charset=UTF-8'
        eval("res.parsed = ("+res.body+")") # NetSuite doesn't supply valid json :(
        @debugger = new NsDebugger(res.parsed.debuggerState) ? null
      cb @debugger, res 

 #----------------------------------------------------------
 # Debug Requests to create/destroy debugging sessions
 #----------------------------------------------------------

  # Initiate non-interactive debugging session
  runScript: (script, cb) ->
    @dbgr "runserver", { script: xml.cdata(script) }, {}, cb

  # Initiate adhoc script debugging session
  debugAdhoc: (script, cb) ->
    @dbgr 'adhoc', { script: xml.cdata(script) }, {}, cb 

  # Resume an existing debugger session (defaults to current session's
  # id unless you pass a specific one)
  resume: (sessionId, cb) ->
    if arguments.length is 1 and typeof sessionId is 'function'
      @dbgr 'resume', {}, { dsid: true }, sessionId
    else
      @dbgr 'resume', {}, { dsid: sessionId }, cb

  # Invalidate the current debugger session? duh.
  invalidateSession: (cb) ->
    @dbgr 'invalidateDebugSession', {}, {}, cb

 #----------------------------------------------------------
 # Requests that must be made in the context of a debugging sessioin
 #----------------------------------------------------------

  # Add (toggle, really) a watch expression
  addWatch: (expression, cb) ->
    @dbgr 'addwatch', { watch: xml.cdata(expression) }, { dsid: true }, cb

  # Evaluate an expression in current context
  evalScript: (expression, cb) ->
    @dbgr 'eval', { eval: xml.cdata(expression) }, { dsid: true }, cb

  # Load all immediate child properties of a variable 
  loadProperties: (expression, cb) ->
    @dbgr 'loadproperties', { variable: xml.cdata(expression) }, { dsid: true }, cb

  # Add/remove a user event breakpoint
  addUserEvent: (scriptId, deployId, cb) ->
    @dbgr 'adduserevent', { scriptId, deployId }, { dsid: true }, cb

  # Set or unset break points in the script @ a line number
  setBreakpoint: (line, url, cb) ->
    url ?= @debugger.source.url ? 'debugger$debugger.user' 
    @dbgr 'breakpoint', { breakpoint: { line, url } }, { dsid: true }, cb

  # Switch to new callframe (0 representing current debugger frame)
  # Use the @debugger.callstack array to fetch the index of your desired callframe
  switchCallFrame: (frame, cb) ->
    @dbgr 'switchframe', { frame }, { dsid: true }, cb

 #----------------------------------------------------------
 # Requests for controlling debugger flow during active sessions
 #----------------------------------------------------------

  # Execute current line and move to next expression
  stepOver: (cb) ->
    @dbgr 'stepover', {}, { dsid: true, cf: false }, cb

  # Jump into next function call on current line / next expression
  stepInto: (cb) ->
    @dbgr 'stepinto', {}, { dsid: true, cf: false }, cb

  # Return (escape) from current function
  stepOut: (cb) ->
    @dbgr 'stepOut', {}, { dsid: true, cf: false }, cb

  # Resume execution until completed, crashed, or breakpoint hit
  go: (cb) ->
    @dbgr 'go', {}, { dsid: true, cf: false }, cb

  # Cancel the active session
  cancel: (cb) ->
    @dbgr 'cancel', {}, { dsid: true, cf: false }, cb

#-----------------------------------------------------------------------
# Classes to model debugger state and provide extra functionality (soon...)
#=======================================================================

class NsDebugger
  constructor: (state) ->
    @sessionId = state.debugsessionid ? null
    @status = state.status ? 'notinitialized'
    @mode = state.mode ? null
    @console = state.console ? []
    @evaluation = state.evaluation ? []
    @properties = state.properties ? []
    @watches = state.watches ? []
    @breakpoints = state.breakpoints ? []
    @callstack = state.callstack ? []
    if state.source then @source = new NsDbgSource(state.source)
    else @source = null

class NsDbgSource
  constructor: (source) ->
    @html = source.html ? null
    @title = source.title ? null
    @url = source.url ? null
    @sourceid = source.sourceid ? null
    @selectedline = source.selectedline ? -1
    @currentline = source.currentline ? -1
    @lines = []

class NsDbgSrcLine
  constructor: (line) ->
    @source = line.source ? ''
    @breakpoint = line.breakpoint ? false
    @breakable = line.breakable ? false
    @currentline = line.currentline ? false

# Expose public classes
module.exports = 
  Client: NsDebugClient
  Debugger: NsDebugger