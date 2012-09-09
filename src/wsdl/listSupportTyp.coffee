simpleTypes = module.exports =
  SupportCaseStatusStage:
    base: 'xsd:string'
    values: ["_closed","_escalated","_open"]
  SupportCaseStage:
    base: 'xsd:string'
    values: ["_closed","_escalated","_open"]
  SolutionStatus:
    base: 'xsd:string'
    values: ["_approved","_unapproved"]
  IssueEventStatus:
    base: 'xsd:string'
    values: ["_closed","_onHold","_open","_resolved"]
  IssueTrackCode:
    base: 'xsd:string'
    values: ["_never","_onAnyChange","_whenBaseStatusIsClosed","_whenBaseStatusIsOnHold","_whenBaseStatusIsOpen","_whenBaseStatusIsResolved"]
