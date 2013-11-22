cfg = require './cfg'
snsour = require '../index'

# login with the details stored in ./cfg.coffee
n$ = new snsour.ui.Client(host: 'system2.netsuite.com')
n$.on 'error', console.error
# n$.on 'request', cfg.dump
# n$.on 'response', cfg.dump
n$.login cfg.email, cfg.password, (res) ->
  # cfg.dump res

  ## Uncomment out one of the samples below or uncomment all for mass testing

  # mf = new snsour.ui.media.File { folder: -8 }
  # mf.loadFile './mock/test.csv'
  # n$.addMediaFile mf, { unzip: true }, cfg.dump

  # n$.addMediaLink 'http://github.com/eibbors/suite-n-sour.git', '-8', {}, cfg.dump
  
  # n$.getItemShipInfo '4', cfg.dump

  # n$.getAutoSuggestions 'item', cfg.dump

  # n$.mediaExists 'taskids.jS', 13, cfg.dump
  # n$.previewMediaFile  11, (res) ->
  #   if res.content?.filename? then res.saveFile()

  # n$.getSiteMedia 1, (res) ->
  #   res.followRedirect?(cfg.dump)


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