# suite-n-sour.js :: ui/search.coffee - by Robbie Saunders (eibbors.com)
# Mixin providing search related extensions + models for ui clients

# Used to model NetSuite searches (mimics nlobjSearch)
class Search
  constructor: (@type, @searchId, @filters=[], @columns=[]) ->
    @isPublic = false
    @scriptId = null
    return @

  # Extract and initialize properties from api call result
  extract: (result) ->
    @searchId = result.searchId ? -1
    @isPublic = result.ispublic ? false
    @scriptId = result.scriptid ? null
    @filters = (new SearchFilter(result["filter#{i}"]) for i in [0...result.filtercount])   
    @columns = (new SearchColumn(result["column#{i}"]) for i in [0...result.columncount])
    return @

  fltr: (nameOrObj, extras...) ->
    @filters ?= []
    if typeof nameOrObj is 'object'
      for obj in [nameOrObj].concat(extras)
        @filters.push new SearchFilter(obj)
    else 
      filters.push new SearchFilter.apply(arguments)

# Models search filters (mimics nlobjSearchFilter)
class SearchFilter 
  constructor: (@name, @join=null, @operator=null, @values..., options) ->
    if arguments.length is 1
      obj = arguments[0]
      for k,v in obj
        @[k] = v
    else
      @formula = options.formula ? null
      @summarytype = options.summarytype ? null
      @isor = options.isor ? false
      @isnot = options.isnot ? false
      @leftparens = options.leftparens ? 0
      @rightparens = options.rightparens ? 0
    return @

  addValue: (values...) ->
    @values = @values.concat values
    return @

# Models search columns (mimics nlobjSearchColumn)
class SearchColumn 
  constructor: (@name, @join=null, @summary=null, options={}) ->
    if arguments.length is 1
      obj = arguments[0]
      for k,v in obj
        @[k] = v
    else 
      @type = options.type ? null
      @label = options.label ? null
      @sortdir = options.sortdir ? null
      @index = options.index ? -1
      @functionid = options.functionid ? null
      @formula = options.formula ? null
      @userindex = options.userindex ? -1
      @whenorderedby = options.whenorderedby ? null
      @whenorderedbyjoin = options.whenorderedbyjoin ? null
    return @

# Wrapper providing helpers for working with search result sets
class SearchResults 
  constructor: (result={}) ->
    @columns = result.columns ? []
    @rows = result.rows ? []

  # Returns rows as standard objects, improving user friendliness
  getRowObjects: ->
    for row in @rows
      obj = 
        id: row.id
        recordType: row.recordType
      for cell in row.cells 
        obj[cell.name] = cell.value
      obj

  # Returns an array (=rows) of arrays (=cells)
  # First row will include column titles unless you pass false
  buildArray: (inclHeader=true) ->
    table = []
    if inclHeader 
      table.push []
      for col in @columns
        table[0][col.index - 1] = col.name
    for row in @rows
      tr = []
      for cell in row.cells
        tr[cell.index - 1] = cell.value
      table.push tr
    table

# Extend prototype of passed client type
exports.extend = (client) ->

  # Execute a global keyword search and return SearchResults object
  client::searchGlobal = (keywords, cb) ->
    @jsonr 'searchGlobal', [keywords], {}, (res) ->
      cb new SearchResults(res?.result), res

  # Perform a duplicate record search for (record) type by fields object or search id
  client::searchDuplicate = (type, fields, id, cb) ->
    if isNaN(id) then id = -1
    # fields = psuedoHashMap(fields)
    @jsonr 'searchDuplicate', [type, id, fields], {}, cb

  # Get the set of possible search columns for a particular record type
  client::getSearchColumns = (type, filter, op, cb) ->
    @jsonr 'getSearchColumns', [type, filter, op], {}, (res) ->
      cb res.result, res

  # Fetch filter expressions given search filter objects in either format:
  client::buildSearchFilterExpression = (filters..., cb) ->
    filterSet = []
    for filter in filters
      if Array.isArray filter then filterSet = filterSet.concat(filter)
      else filterSet.push filter
    @jsonr 'buildSearchFilterExpression', [filterSet], {method: 'POST'}, cb

  # Not really sure what good this is for...
  # TODO: investigate usage
  client::parseSearchFilterExpression = (filterExpression, cb) ->
    @jsonr 'parseSearchFilterExpression', [filterExpression], {method: 'POST'}, cb

  # Execute a search for a certain record type
  client::searchRecord = (type, id, filters=[], columns=[], cb) ->
    if not Array.isArray filters then filters = [filters]
    if not Array.isArray columns then columns = [columns]
    @jsonr 'searchRecord', [type, id, filters, columns], {method: 'POST'}, (res) ->
      cb new SearchResults(res?.result), res

  # Load existing marshalled nlobjSearch properties from server 
  client::loadSearch = (type, searchId, cb) ->
    @jsonr 'loadSearch', [type, searchId], {}, (res) ->
      s = new Search(type, searchId, [], []).extract(res.result)
      cb s, res

  # Attempts to save full blown searches, will fail for ADHOC searchinga
  client::saveSearch = (title, search, cb) ->
    args = [title, search.scriptId, search.type, search.searchId, 
             search.filters, search.columns, search.isPublic]
    @jsonr 'saveSearch', args, {}, cb

  # Delete an existing search for recordtype/searchid
  client::deleteSearch = (type, searchId, cb) ->
    @jsonr 'deleteSearch', [type, searchId], {}, cb

  # Request search page (data used to generate search forms
  client::prepareSearchPage = (type, searchId, filters=[], columns=[], cb) ->
    @jsonr 'prepareSearchPage', [type, searchId, filters, columns], {}, cb

  # Requst results of provided search
  client::prepareSearchResults = (type, searchId, filters=[], columns=[], cb) ->
    @jsonr 'prepareSearchResults', [type, searchId, filters, columns], {}, cb

  # Retrieve subset of provided search's results (like Array.slice function)
  client::searchRecordSlice = (type, searchId, filters=[], columns=[], start, end, cb) ->
    @jsonr 'searchRecordSlice', [type, searchId, filters, columns, start, end], {}, cb

  # Fetches auto suggestions for uber search (global search) terms
  client::getAutoSuggestions = (val, cb) ->
    @circid ?= 0
    query = { circid: ++@circid, mapkey: 'uberautosuggest', cur_val: val }  
    @get '/app/common/autosuggest.nl', { query }, (res) =>
      if res.error
        cb null, res
      else
        res.parseBody 'json', (parsed) =>
          cb parsed, res

  # Return model classes, helpers, etc.
  return {
    Search: Search
    Column: SearchColumn
    Filter: SearchFilter
    Results: SearchResults
  }