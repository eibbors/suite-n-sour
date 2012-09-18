util = require 'util'

module.exports =
  # settings used for tests
  host: 'system2.netsuite.com'
  # creds
  email: ''
  password: ''
  role: 3 # admin
  # offline client
  nkey: 13245678
  version: '2012.1.0.157'

  # helpers
  dump: (obj...) ->
    for o in obj
      console.log util.inspect o, true, 10