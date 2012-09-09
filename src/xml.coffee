# suite-n-sour.js :: xml.coffee - by Robbie Saunders (eibbors.com)
# A variety of functions for working with XML, generating payloads, etc.
xml2js = require 'xml2js'

# Verify a string starts with an <?xml?> declaration, or at least what appears to be a
# root xml element... Great for detecting totally invalid xml data before parsing
# returns whatever triggered a positive result or false
# Takes optional second argument that simplifies test to a check for leading `<` 
verifyXML = (str, simple=false) ->
  if simple then return /\S/.exec(str)[0] is '<' 
  xmlv = /<\?xml(\s+(\S+)=.(\S+).\s+(\S+)=.(\S+).)?.*\?>/gi.exec str
  if xmlv # If we catch <?xml<anything>?>, then check for up to 2 args and return match
    res = { matched: xmlv[0] }
    if xmlv[2] then res[xmlv[2]] = xmlv[3]
    if xmlv[4] then res[xmlv[4]] = xmlv[5]
  else # If we don't, see if first non whitespace is an xml element or comment
    begx = /^\s*((<!--.*-->)|(<(\w+).*>))/gi.exec str 
    if begx then res = { matched: begx }
  res or false

# Simply creates and an xml2js parser and uses it on input, then calls back w/ results
# cb(err, parsed) where if err isn't empty, the parsed value is just the input recycled
# You may provide custom options for the Parser instantiation 
parseXML = (str, cb, options) ->
  options ?= { explicitRoot: true, normalize: false, trim: false }
  parser = new xml2js.Parser options
  parser.parseString str, (err, res) ->
    if not err then cb err, res
    else cb err, str

# Simple function I wrote to 'render' simple js objects as SIMPLE xml, using a syntax similar
# to xml2js' parser would generate ('@' property denotes attributes stored as key value pairs)
renderXML = (obj) ->
  pload = '' 
  for key, value of obj
    switch typeof value
      when 'object'
        if value is null then continue
        else if Array.isArray(value)
          for ai in value
            sibl = {}
            sibl[key] = ai
            pload += "#{renderXML(sibl)}"
        else 
          pload += "<#{key}"
          if value['@']? # handle @ property (attributes) then delete her
            if typeof value['@'] is 'object'
              for ak, av of value['@']
                if typeof av is 'undefined' then pload += " #{ak}"
                else pload += " #{ak}=\"#{av}\""
            else pload += " #{value['@']}"
            delete value['@']
            if value['=']
              pload += ">#{value['=']}</#{key}>"
              continue
          if value.constructor is 'Date' # append GMTString for date
            pload += ">#{value.toGMTString()}</#{key}>"
          else # render the object's properties recursively
            pload += ">#{renderXML(value)}</#{key}>"
      when 'function'
        pload += "<#{key}>#{value()}</#{key}>"
      when 'undefined'
        pload += "<#{key}/>"
      else
        pload += "<#{key}>#{value}</#{key}>"
  return pload

# Extremely simple, but should cover anything we'll need it for (currently nothing?)
escapeXML = (str) ->
  str.replace(/&/g, '&amp;')
     .replace(/</g, '&lt;')
     .replace(//>g, '&gt;')
     .replace(/"/g, '&quot;')
     .replace(/'/g, '&apos;')

# Just a shortcut to wrap object properties and strings in CDATA markup
cdata = (value, escape=true) ->
  if typeof value is 'object'
    for k,v of value
      value[k] = cdata(v)
  else
    if not /^\s*<!\[CDATA\[/.test(value)
      value = "<![CDATA[#{value}]]>"
  value

# Uber simple function to parse 'xmlns:tagname' into name/ns 
qname = (n, tns) ->
  [ns..., name] = n.split(':')
  {ns: ns.join('') or tns ? null, name}

# Felt like I was reinventing the wheel again with this class, but I could not
# locate a CoffeeScript or JS module that would work with NetSuite's SOAP webservices
# Anyway, this is a more formal way of modeling XML elements than plain JSON, which
# is a necessity when working with NS's webservices
class SimpleType
  constructor: (@name='', options) ->
    @attributes = options.attributes ? {}
    @minOccurs = options.minOccurs ? 1
    @maxOccurs = options.maxOccurs ? 1
    @value ?= options.value ? options.default ? undefined

  # This should be overridden by subclasses
  isValid: -> 
    if @minOccurs > 0 and @value is undefined
      return false
    else 
      return true

  # Set the value...? Maybe?
  setValue: (val) -> @value = val
  # Set one of the attribute values (or create a new one)
  setAttr: (key, val) -> @attributes[key] = val

  # Chainable method that can be used to set the value, ie: @set('example').set('value', 15)
  # set the attr obj, @set('@', {type: 'gangsta', streetname: 'dj fruitloop'})
  # or set a single attr, @set('@attrkey1', '<3-2-69').set('@sick', true)
  set: (key, val) ->
    if arguments.length is 1 then @setValue key
    else if key is '=' or key is 'value' then @setValue val
    else if key is '@' then @attributes = val
    else if key.indexOf('@') is 0 then @setAttr key[1..], val
    return @

  # XML object that can be rendered using this module's renderXML function
  toXML: -> 
    obj = {}
    obj[@name] = { '@': @attributes, '=': @value }

  # Note that this is refering to XML strings now
  toString: ->
    attrs = ' '+("#{k}=\"#{v}\"" for k,v of @attributes).join(' ')
    switch @value
      when undefined then "<#{@name}#{attrs}/>"
      when null then "<#{@name}#{attrs}></#{@name}>"
      else "<#{@name}#{attrs}>#{@value.toString()}</#{@name}>"



# Export all of the juicy goodness
module.exports =
  parse: parseXML
  render: renderXML
  verify: verifyXML
  escape: escapeXML
  cdata: cdata
  qname: qname
  SimpleType: SimpleType