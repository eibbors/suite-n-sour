snsour = require '../index'
cfg = require './cfg'


sourStore = 
  host: 'nsour.suitecheckout.com'
  domain: @host

n$hop = new snsour.webstore.Client(sourStore)
n$hop.on 'error', cfg.dump

n$hop.pingTracker 'page', '/', {}, cfg.dump