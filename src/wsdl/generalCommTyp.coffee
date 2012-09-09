simpleTypes = module.exports =
  NoteDirection:
    base: 'xsd:string'
    values: ["_incoming","_outgoing"]
  MessageMessageType:
    base: 'xsd:string'
    values: ["_email","_emailedReport","_fax","_pdf","_print"]
