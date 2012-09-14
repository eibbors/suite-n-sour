# suite-n-sour :: ui/shipping.coffee - by Robbie Saunders (eibbors.com)
# Submodule providing extensions / helpers for NetSuite shipping requests
# Usage shipping = require('./ui/shipping').extend(Client)
xml = require '../xml'


# Generate XML structure for ItemShipRequest
ItemShipRequest = (shipMethod) ->
  ItemShipRequest:
    ShipMethod: shipMethod

# Generate XML structure for ShipTaxItem
ShipTaxItemRequest = (entityId, state, zip, country) ->
  ShipTaxItemRequest:
    Entity: entityId 
    State: state 
    Zip: zip
    Country: country

# Provided as a convenience for working with such a large payload
class RatesRequest
  constructor: (params={}, @packages=[], @items=[]) ->
    @requestSrc = params.requestSrc
    @ratesCarrier = params.ratesCarrier
    @entityId = params.entityId
    @bIsItemLineRates = params.bIsItemLineRates
    @destCity = params.destCity
    @destState = params.destState
    @destZip = params.destZip
    @destCountry = params.destCountry
    @shipMethod = params.shipMethod
    @salesOrderId = params.salesOrderId
    @isResidential = params.isResidential
    @isThirdPartyAcct = params.isThirdPartyAcct
    @thirdPartyCarrier = params.thirdPartyCarrier
    @isPackagesReload = params.isPackagesReload
    @isDefaultRequest = params.isDefaultRequest
    @currency = params.currency
    @tranFxRate = params.tranFxRate
    @subsidiary = params.subsidiary
    @testId = params.testId
    @overrideShippingCost = params.overrideShippingCost
    @isDynamicScriptingRequest = params.isDynamicScriptingRequest
    # optional sublist generation via params object
    if params.packages? then addPackages(params.packages)
    if params.items? then addItems(params.items)

  # Shortcut for package constructor or regular ol' pushing to @packages
  addPackages: (packages...) ->
    for p in packages
      if typeof pis 'object'
        if p.toXML? 
          @packages.push p
        else
          @packages.push new ShipPackage(p)

  # Filters all packages whose numbers aren't passed as an argument
  removePackages: (numbers...) ->
    leftover = (p for p in @packages when p.number not in numbers)
    @packages = leftover ? []

  # Add or instantiate new shipping items
  addItems: (items...) ->
    for i in items
      if typeof i is 'object'
        if i.toXML? 
          @items.push i
        else
          @items.push new ShipItem(i)

  # Filter out any items with keys in arguments passed
  removeItems: (keys...) ->
    leftover = (i for i in @items when i.key not in keys)
    @items = leftover ? []

  toXML: ->
    RatesRequest:
      RequestSrc: @requestSrc ? null
      RatesCarrier: @ratesCarrier ? null
      EntityId: @entityId ? null
      IsItemLineRates: @bIsItemLineRates ? null
      DestCity: @destCity ? null
      DestState: @destState ? null
      DestZip: @destZip ? null
      DestCountry: @destCountry ? null
      ShipMethod: @shipMethod ? null
      SalesOrderId: @salesOrderId ? null
      IsResidential: @isResidential ? null
      IsThirdPartyAcct: @isThirdPartyAcct ? null
      ThirdPartyCarrier: @thirdPartyCarrier ? null
      IsPackagesReload: @isPackagesReload ? null
      IsDefaultRequest: @isDefaultRequest ? null
      Currency: @currency ? null
      TransactionFxRate: @tranFxRate ? null
      Subsidiary: @subsidiary ? null
      TestId: @testId ? null
      OverrideShippingCost: @overrideShippingCost ? null
      IsDynamicScriptingRequest: @isDynamicScriptingRequest ? null
      Packages: pkg.toXML() for pkg in @packages
      Items: item.toXML() for item in @items

# Basic model for packages... used within RatesRequest to generate package list
class ShipPackage
  constructor: (params={}) ->
    @number = params.number
    @length = params.length
    @width = params.width
    @height = params.height
    @weight = params.weight
    @type = params.type
    @insuredValue = params.insuredValue
    @signatureOption = params.signatureOption

  toXML: ->
    Package:
      PackageNumber: @number ? null
      PackageLength: @length ? null
      PackageWidth: @width ? null
      PackageHeight: @height ? null
      PackageWeight: @weight ? null
      PackageType: @type ? null
      PackageInsuredValue: @insuredValue ? null
      PackageSignatureOption: @signatureOption ? null

# Basic model for items, also used within RatesRequest
class ShipItem
  constructor: (params={}) ->
    @quantity = params.quantity
    @amount = params.amount
    @weight = params.weight
    @location = params.location
    @key = params.key
    @units = params.units
    @type = params.type
    @shipAddrKey = params.shipAddrKey
    @shipAddr1 = params.shipAddr1
    @shipAddr2 = params.shipAddr2
    @shipCity = params.shipCity
    @shipState = params.shipState
    @shipZip = params.shipZip
    @shipCountry = params.shipCountry
    @shipIsResidential = params.shipIsResidential
    @shipMethKey = params.shipMethKey    
  
  # Copies address properties to argument items or returns addr copy
  cloneAddr: (items...) ->
    addr = { @shipAddrKey, @shipAddr1, @shipAddr2, @shipCity, @shipState, @shipZip, @shipCountry, @shipIsResidential, @shipMethKey }
    return addr unless items.length > 0
    for item in items 
      (item[k] = v) for k,v of addr

  toXML: ->
    Item:
      ItemQuantity: @quantity ? null
      ItemAmount: @amount ? null
      ItemWeight: @weight ? null
      ItemKey: @key ? null
      ItemLocation: @location ? null
      ItemUnits: @units ? null
      ItemType: @type ? null
      ItemShipAddrKey: @shipAddrKey ? null
      ItemShipAddr1: @shipAddr1 ? null
      ItemShipAddr2: @shipAddr2 ? null
      ItemShipCity: @shipCity ? null
      ItemShipState: @shipState ? null
      ItemShipZip: @shipZip ? null
      ItemShipCountry: @shipCountry ? null
      ItemShipIsResidential: @shipIsResidential ? null
      ItemShipMethKey: @shipMethKey ? null


# Extend prototype of passed client type
exports.extend = (client) ->

  # Request specific rates based on a set of packages, items, and order info.
  # Can pass RatesRequest class instance, custom XML object, params used to
  # construct a new RatesRequest or plain old text payload
  client::getShippingRates = (ratesReq, cb) ->
    if typeof ratesReq is 'object'
      if ratesReq.RatesRequest
        payload = xml.render(ratesReq)
      else
        ratesReq = new RatesRequest(ratesReq) unless ratesReq.toXML?
        payload = xml.render(ratesReq.toXML())
    else payload = ratesReq
    opts = 
      method: 'POST'
      path: '/app/common/shipping/dynshippingxml.nl'
    @jsonr 'getShippingRates', [payload], opts, cb

  # Request shipping info (cost, label enabled, etc.) for a shipping method
  client::getItemShipInfo = (shipMethod, cb) ->
    payload = xml.render(ItemShipRequest(shipMethod))
    console.log payload
    opts = 
      path:  '/app/accounting/transactions/dynitemship.nl' 
    @jsonr 'getItemShipInfo', [payload], opts, (res) =>
      if res.result
        xml.parse res.result, (err, data) =>
          if err then throw err 
          cb data, res
      else cb null, res

  # Shipping Tax Item Query
  client::getTaxItem = (entityId, state, zip, country, cb) ->
    payload = xml.render(ShipTaxItemRequest(entityId, state, zip, country))
    opts = 
      path:  '/app/common/shipping/dynshiptaxitem.nl'
    @jsonr 'getTaxItem', [payload], opts, cb


  return {
    RatesRequest: RatesRequest
    Package: ShipPackage
    Item: ShipItem
  }