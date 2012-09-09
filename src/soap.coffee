# suite-n-sour.js :: soap.coffee :: by Robbie Saunders (eibbors.com)
# SOAP Web Services implementation that has been a pain writing.
# This code is will be scrapped for something simpler unless someone gets
# the chance to update things before I get around to it. 
rpc = require './rpc'
xml = require './xml'
wsdl = require './wsdl/index'

#------------------------------------------------------------
# Webservices base classes building off of xml SimpleType foundation
#------------------------------------------------------------

xsd = {}

class xsd.String extends xml.SimpleType
    setValue: (val) -> super val.toString()

class xsd.Boolean extends xml.SimpleType
    setValue: (val) -> @value = if val then 'T' else 'F'

class xsd.Number extends xml.SimpleType
    setValue: (val) -> @value = Number(val)
    isValid: ->  Number.isNaN(val)

class xsd.DateTime extends xml.SimpleType
    setValue: (val) -> 
    #TODO: setValue / isValid / toString

class EnumType extends xml.SimpleType
    constructor: (@name, @restriction, options) ->
      super @name, @value, options
      @restriction = options.restriction ? []

    setValue: (val) -> 
      if val in @restriction
        @value = val

# Complex Types are esentially a simple type with support for child elements
# rather than primitive data types
class ComplexType extends xml.SimpleType
  constructor: (@name, options) ->
    @type = value.type ? 'tns:ComplexType'
    @attributes = options.attributs ? {}
    @elements = {}
    for k, v of options.elements
      @defElem k, v
    if options.value then setValues options.value

  defElem: (name, type) ->
    switch value.type
      when 'xsd:string'
        @elements[name] = new xsd.String(name, value)
      when 'xsd:double', 'xsd:int', 'xsd:long'
        @elements[name] = new xsd.Number(name, value)
      when 'xsd:boolean'
        @elements[name] = new xsd.Boolean(name, value)
      when 'xsd:dateTime'
        @elements[name] = new xsd.DateTime(name, value)
      when 'xsd:base64Binary'
        # finish me por favor
      else
        if value.enum?
          @elements[name] = new EnumType(name, value)  
        else
          @elements[name] = new ComplexType(name, value)

  setField: (field, val) ->
    if @elements[field]?
      @elements[field].setValue val
    else if @attributes[field]?
      @setAttr field, val

  setValues: (obj) ->
    for k,v of obj
      @elements[k].setValue v

  toString: ->
    val = "<#{name}"
    (val += " #{k}=\"#{v}\"") for k,v of @attributes
    val += ">#{(el.toString() for k,el of @elements).join('\n')}</#{@name}>"
    val


# We'll always be using the SOAP namespace for obvious reasons. While every
# Request type is part of platformMsgs and the basis for every parameter
# begins with a RecordRef, BaseRef, or some other type out of platformCore
BOOTSTRAP_XMLNS =
  soap: "http://schemas.xmlsoap.org/soap/envelope/"
  platformMsgs:  "urn:messages_2012_2.platform.webservices.netsuite.com"
  platformCore: "urn:core_2012_2.platform.webservices.netsuite.com"

class SoapParam
  constructor: (@type, @attributes, @elements) ->

class SoapRequest
  constructor: (options) ->
    @namespaces = BOOTSTRAP_XMLNS
    @header = {}
    @body = {}

  # Add or update a param in the envelope header
  # Standard usage = ('param', 'val123')
  # Object with param props = ({param: 'a', p2: 987})
  # Replace the entire header = (null, {p1: 'a', p2: false})
  setHeader: (name, param) ->
    addNamespace param
    @header[name] = param

  addNamespace: (param) ->
    if param.nsId and param.urn # have namespace id AND urn
      @namespaces[param.nsId] ?= param.urn
    else if param.nsId # just have namespace id so fetch urn
      @namespaces[param.nsId] ?= wsdl.fetchNamespace(param.type).urn
    else if param.urn # just have urn so check for existing or make new one
      for k,v of @namespaces 
        if v is param.urn
          param.nsId = k
          break
    param

