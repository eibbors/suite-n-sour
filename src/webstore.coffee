# suite-n-sour.js :: webstore.coffee - by Robbie Saunders (eibbors.com)
# Module which I aim to implement every basic webstore function with
# as well as basic support for SSP applications.
rpc = require './rpc'

# Main webstore client, see the session class below for extra config options
class NsWebStoreClient extends rpc.Client
  constructor: (options) ->
    super options
    @session = new NsWebStoreSession(options)

  # Builds a URL and invokes a GET request for a shopping
  # page. Still under construction, although should work 
  # if you're familiar with the URL parameters to use
  shopr: (path, options, cb) ->
    query = 
      c: options.company ? @session.companyId ? null
      n: options.siteNum ? @session.siteNum ? 1
      sc: options.section ? @session.section ? null
      category: options.category ? @session.category ? null
      id: options.itemId ? null
      it: options.itemType ? 'A'
      search: options.search ? null
      range: options.range ? null
      ext: if options.ext then 'T' else null
      logoff: if options.logoff then 'T' else null
      newcust: if options.newCust then 'T' else null
      continue: options.continueURL ? null
      redirect: options.redirectURL ? null
    delete query[k] for k,v of query when v is null
    @get path ? '/s.nl/.f', { query }, cb

  # Select a new base web store to pull data from
  setWebStore: (company, siteNum, section, category) ->
    @session.companyId = company ? null
    @session.siteNum = siteNum ? null
    @session.section = section ? null
    @session.category = category ? null

  # WSDK item data queries, requires an itemId
  getItemName: (itemId, cb) ->
    @shopr '/app/site/query/getitemname.nl', {itemId}, cb
  getItemPrice: (itemId, cb) ->
    @shopr '/app/site/query/getitemprice.nl', {itemId}, cb
  getItemWeight: (itemId, cb) ->
    @shopr '/app/site/query/getitemweight.nl', {itemId}, cb
  getShortItemDescription: (itemId, cb) ->
    @shopr '/app/site/query/getitemsdescr.nl', {itemId}, cb
  getLongItemDescription: (itemId, cb) ->
    @shopr '/app/site/query/getitemldescr.nl', {itemId}, cb
  getFeaturedItemDescription: (itemId, cb) ->
    @shopr '/app/site/query/getitemfdescr.nl', {itemId}, cb

  # Request the current cart subtotal
  getCurrentSubtotal: (cb) ->
    @shopr '/app/site/query/getcarttotal.nl', {}, cb
  # Request the number of items currently in the cart
  getNumberOfCartItems: (cb) ->
    @shopr '/app/site/query/getcartitemcount.nl', {}, cb

  # NOTE: Following under construction!
  # -------------------------------

  # The base 'add-to-cart' rpc, options argument allows for customization
  addItemToCart: (id, qty, options, cb) ->
    params = { ext:'T', buyid: id, add: qty ? 1 }
    (params[k] = v) for k,v of options
    @shopr '/app/site/query/additemtocart.nl', params, cb

  # Gift certificate support
  addGiftCertToCart: (id, from, toName, toEmail, message, amount, qty=1, cb) ->
    params = { GIFTCERTFROM: from, GIFTCERTRECIPIENTNAME: toName, GIFTCERTRECIPIENTEMAIL: toEmail }
    if amount? then params.amount = amount
    @addItemToCart id, qty, params, cb

class NsWebStoreSession
  constructor: (options) ->
    @host = options.host ? 'shopping.netsuite.com'
    @customDomain = options.domain ? null
    @customPath = options.path ? null
    @companyId = options.company ? null
    @siteNum = options.siteNum ? 1
    @visitorId = options.visitorId ? null
    @shopperId = options.shopperId ? null


module.exports =
  Client: NsWebStoreClient
  Session: NsWebStoreSession