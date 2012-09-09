cfg = require './cfg'
snsour = require '../index'
util = require 'util'

# got tired of typing this hah
dump = (obj...) ->
  for o in obj
    console.log util.inspect o, true, 10
_dmp = ->
  console.log util.inspect arguments[0], true, 10

DEST_EMAIL = 'r@eibbors.com'
SS_DUMP_ENV = 
"""
    // Take a peek at the SuiteScript Debugger's runtime context
    var uk = Object.keys(utils);
    var nk = Object.keys(nlapiImpl);
    var tpk = Object.getOwnPropertyNames(this.__proto__);

    // All of the public and private keys
    var keys = tpk.concat(uk, nk);
    confirm(keys);

    var src = this.toSource();
    var srcfile = nlapiCreateFile('poop.ss.txt', 'PLAINTEXT', src);

    nlapiSendEmail(-5, '#{DEST_EMAIL}', 'is this nifty or what?','see attachment!!',null,null,null,srcfile);

    confirm(src);
    confirm(srcfile);
"""


# login with the details stored in ./cfg.coffee
# ... Identical to standard UI client login except for the host
n$ = new snsour.debug.Client(host: 'debugger.na1.beta.netsuite.com')
n$.on 'error', console.error
n$.login cfg.email, cfg.password, (res) ->

  # Begin a new adhox debugging session
  n$.debugAdhoc SS_DUMP_ENV, (dbgr, res) ->
    # Dump the initial adhoc request state
    dump dbgr
    n$.stepOver _dmp
    n$.stepInto _dmp
    n$.stepOver _dmp
    n$.go dump

  ## Uncomment out one of the samples below or uncomment all for mass testing

  # n$.getTotalScriptGovernance -1, console.log
  
  # n$.searchGlobal 'sales', console.log

  # n$.loadRecord 'customer', 20, null, (r) ->
  #     console.log util.inspect r, true, 10
  
  # n$.submitField 'customer', 20, { firstname: 'BILLY', lastname: 'BOB' }, {}, console.log

  # n$.copyRecord 'customer', 22, null, (a, b) ->
  #   console.log util.inspect a, true, 10
  #   n$.submitRecord a, {}, ->
  #     console.log util.inspect arguments, true, 10, false

  # n$.createRecord 'salesorder', null, (a, b) ->
  #   console.log JSON.stringify(a)
  #   console.log b

  # n$.sendEmail -5, 'r@eibbors.com', 'hola', 'senor roberto', null, null,{}, console.log
  
  # n$.requestURL 'GET', 'http://www.whatismyip.com', {}, {}, {}, dump
  # 167.216.131.254 -> no host name