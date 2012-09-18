snsour = require '../index'
cfg = require './cfg'

olc = new snsour.offline.Client(host: 'offline.na1.beta.netsuite.com')
olc.loginAs cfg.email, cfg.password, cfg.version, cfg.nkey, ->

  # STill working things out, but feel free to experiment!

  olc.syncCardMetaData cfg.dump

  olc.syncRecordTypeMetaData 'custjob', (res) ->
    cfg.dump res
    olc.downloadStaticRecords 'custjob', cfg.dump

  olc.syncCodeMetaData cfg.dump