util = require 'util'
snsour = require '../index'
cfg = require './cfg'

# got tired of typing this hah
dump = (obj...) ->
  for o in obj
    console.log util.inspect o, true, 10

olc = new snsour.offline.Client(host: 'offline.na1.beta.netsuite.com')
olc.loginAs cfg.email, cfg.password, cfg.version, cfg.nkey, ->

  # STill working things out, but feel free to experiment!

  olc.syncCardMetaData dump

  olc.syncRecordTypeMetaData 'custjob', (res) ->
    dump res
    olc.downloadStaticRecords 'custjob', dump

  olc.syncCodeMetaData dump