cfg = require './cfg'
snsour = require '../index'



# login with the details stored in ./cfg.coffee
n$ = new snsour.ui.Client(host: 'system2.netsuite.com')
n$.on 'error', console.error
n$.login cfg.email, cfg.password, (res) ->
  
  n$.getItemShipInfo '4', cfg.dump

  # cfg.dump res

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