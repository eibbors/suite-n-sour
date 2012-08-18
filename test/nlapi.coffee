cfg = require './cfg'
snsour = require '../index'


n$ = new snsour.ui.Client(host: 'system2.netsuite.com')
n$.on 'error', console.error
n$.login cfg.email, cfg.password, (res) ->
  n$.getTotalScriptGovernance -1, console.log
  n$.sendEmail -5, 'r@eibbors.com', 'hola', 'senor roberto', null, null,{}, console.log
  n$.loadRecord 'customer', 20, null, (r) ->
    console.log JSON.stringify(r)