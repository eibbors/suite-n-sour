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
    # Just mess around a bit
    n$.stepOver _dmp
    n$.stepInto _dmp
    n$.stepOver _dmp
    # Finish the script execution
    n$.go dump