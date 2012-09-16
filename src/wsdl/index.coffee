

# Load enum data type namespaces
enums = 
  actSchedTyp: require './actSchedTyp'
  demandPlanningTyp: require './demandPlanningTyp'
  docFileCabTyp: require './docFileCabTyp'
  generalCommTyp: require './generalCommTyp'
  tranCustTyp: require './tranCustTyp'
  tranEmpTyp: require './tranEmpTyp'
  tranInvtTyp: require './tranInvtTyp'
  tranFinTyp: require './tranFinTyp'
  tranPurchTyp: require './tranPurchTyp'
  listRelTyp: require './listRelTyp'
  tranSalesTyp: require './tranSalesTyp'
  listSupportTyp: require './listSupportTyp'
  platformFaultTyp: require './platformFaultTyp'
  platformCoreTyp: require './platformCoreTyp'
  setupCustomTyp: require './setupCustomTyp'
  platformCommonTyp: require './platformCommonTyp'
  listEmpTyp: require './listEmpTyp'
  listAcctTyp: require './listAcctTyp'
  listMktTyp: require './listMktTyp'

# Load complex type and element schemas
schemas = 
  platformFaults: require './platformFaults'
  platformCore: require './platformCore'
  platformMsgs: require './platformMsgs'
  actSched: require './actSched'
  generalComm: require './generalComm'
  listRel: require './listRel'
  tranPurch: require './tranPurch'
  listSupport: require './listSupport'
  tranSales: require './tranSales'
  listAcct: require './listAcct'
  tranFin: require './tranFin'
  tranCust: require './tranCust'
  tranBank: require './tranBank'
  platformCommon: require './platformCommon'
  tranGeneral: require './tranGeneral'
  listEmp: require './listEmp'
  setupCustom: require './setupCustom'
  docFileCab: require './docFileCab'
  tranInvt: require './tranInvt'
  listSite: require './listSite'
  tranEmp: require './tranEmp'
  listMkt: require './listMkt'
  demandPlanning: require './demandPlanning'

# Load a directory that can be used to look up the
# proper namespace by it's formal id (ie platformMsgs)
# or look it up by member/object type
# xmlns = require './xmlns'


# # fetchNamespace = (type) ->
# #   if type.indexOf(':') > 0
# #     [nsId, typeId] = type.split(':')
# #     { typeId, nsId, urn: xmlns[nsId] ? xmlns[typeId] ? xmlns.tns }
# #   else 
# #     { typeId: type, nsId: null, urn: xmlns[type] ? xmlns.tns } 
# console.log fetchNamespace 'platformCore:RecordRef'
# console.log schemas['platformCore']['complexTypes']['RecordRef']
# class SuiteTalkObject
#   constructor: (type, init) ->

module.exports = { enums, schemas }