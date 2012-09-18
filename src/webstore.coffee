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
      c: options.company ? options.c ? @session.companyId ? null
      n: options.siteNum ? options.n ? @session.siteNum ? 1
      sc: options.section ? options.sc ? @session.section ? null
      category: options.category ? @session.category ? null
      id: options.itemId ? options.id ? @session.item?.id ? null
      it: options.itemType ? @session.item?.it ? null
      # search: options.search ? null
      # range: options.range ? null
      # ext: if options.ext then 'T' else null
      # logoff: if options.logoff then 'T' else null
      # newcust: if options.newCust then 'T' else null
      # continue: options.continueURL ? null
      # redirect: options.redirectURL ? null
    delete query[k] for k,v of query when v is null
    @get path ? '/s.nl/.f', { query }, cb

  # Select a new base web store to pull data from
  setWebStore: (company, siteNum, section, category) ->
    @session.companyId = company ? null
    @session.siteNum = siteNum ? null
    @session.section = section ? null
    @session.category = category ? null

  # WSDK item query - name
  getItemName: (itemId, cb) ->
    @shopr '/app/site/query/getitemname.nl', {itemId}, cb

  # WSDK item query - price
  getItemPrice: (itemId, cb) ->
    @shopr '/app/site/query/getitemprice.nl', {itemId}, cb

  # WSDK item query - weight
  getItemWeight: (itemId, cb) ->
    @shopr '/app/site/query/getitemweight.nl', {itemId}, cb

  # WSDK item query - short description
  getShortItemDescription: (itemId, cb) ->
    @shopr '/app/site/query/getitemsdescr.nl', {itemId}, cb

  # WSDK item query - long description
  getLongItemDescription: (itemId, cb) ->
    @shopr '/app/site/query/getitemldescr.nl', {itemId}, cb

  # WSDK item query - featured description
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

  # Ping NetSuite's tracker servlet
  pingTracker: (type='store', referer, options, cb) ->    
    query = 
      type: type
      c: options.company ? options.c ? @session.companyId ? null
      n: options.siteNum ? options.n ? @session.siteNum ? null
      referer: referer ? ''
    if type is 'store'
      query.sc = options.section ? 1
      query.category = options.category ? ''
      query.it = options.it ? ''
      query.itemid = options.itemid ? ''
    if type is 'page'
      query.url = options.url ? null
      query.siteroot = options.siteroot ? null # nlcorp ex: live_6_23_05 
    @get '/app/site/hit/tracker.nl?', { query }, cb

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

class NsWebStore
  constructor: (options) ->
    @company = options.company ? options.c ? null
    @siteNum = options.siteNum ? options.n ? null
    @domains =
      shopping: options.customDomain ? 'shopping.netsuite.com'
      checkout: options.customDomain ? 'checkout.netsuite.com'
    @sections = options.sections ? {}
    @categories = options.categories ? {}
    @items = options.items ? {}
    @section = options.sections ? options.sc ? null

class NsWebStoreItem
  constructor: (@id, @type='A', options) ->
    @name = options.name ? null
    @price = options.price ? null
    @weight = options.weight ? null
    @sDescr = options.sDescr ? null
    @lDescr = options.lDescr ? null
    @fDescr = options.fDescr ? null

module.exports =
  Client: NsWebStoreClient
  Session: NsWebStoreSession