# suite-n-sour.js :: soap.coffee :: by Robbie Saunders (eibbors.com)
# SOAP Web Services implementation that has been a pain writing.
# This code is will be scrapped for something simpler unless someone gets
# the chance to update things before I get around to it. 
rpc = require './rpc'
xml = require './xml'
wsdl = require './wsdl/index'
xmlns = require './wsdl/xmlns'

# Qualified name class to parse tags in "ns:name" format and provide
# access to uri and namespace helpers
class QName
  constructor: (@namespace, @name, @uri) ->
    if arguments.length is 1 and @namespace.indexOf(":") > 0
      parts = @namespace.split(':')
      @namespace = parts[0]
      @name = parts[1..]
    @namespace ?= 'tns'
    @uri ?= xmlns.resolveNamespace(@namespace)

# Simple Types 
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
      if val instanceof Date then @value = val
      else if val then @value = new Date(Date.parse(val))
      else @value = new Date()

    toString: ->
      return super() unless @value?
      attrs = ' '+("#{k}=\"#{v}\"" for k,v of @attributes).join(' ')  
      "<#{@name}#{attrs}>#{@value.toUTCString()}</#{@name}>"


class EnumType extends xsd.String 
    constructor: (@name, @type, options) ->
      super @name, @value, options
      @qname = new Qname @type
      @restriction = options.restriction ? []

    setValue: (val) -> 
      if val in @restriction
        @value = val

# Complex Types are esentially a simple type with support for child elements
# rather than primitive data types
class ComplexType extends xml.SimpleType
  constructor: (@name, @type='tns:ComplexType', options) ->
    @qname = new Qname @type
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

util = require 'util'
dump = (obj...) ->
  for o in obj
    console.log util.inspect o, true, 10

resolveSchema = (type) ->
  dump xns = xmlns.resolveNamespace type
  defs = wsdl.schemas[xns.nsId].complexTypes
  schema = defs[xns.local] ? null
  if schema?.base? 
    dump schema.base 
    dump b = resolveSchema(schema.base)
    (schema[k] = v) for k, v of b
  schema
  
# Finally got schema nonsense working! yay!
dump x = resolveSchema('LoginRequest')
dump p = resolveSchema('Passport')
dump ref = resolveSchema('platformCore:RecordRef')