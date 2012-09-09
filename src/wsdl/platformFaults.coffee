exports.xmlns = 'urn:faults_2012_1.platform.webservices.netsuite.com'
exports.complexTypes =
  SoapFault:
    elements:
      code: { type: 'platformFaultTyp:FaultCodeType' }
      message: { type: 'xsd:string' }
  InsufficientPermissionFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  InvalidAccountFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  InvalidCredentialsFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  InvalidSessionFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  ExceededRequestLimitFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  ExceededUsageLimitFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  ExceededRecordCountFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  InvalidVersionFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  ExceededRequestSizeFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  AsyncFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
  UnexpectedErrorFault:
    base: 'platformFaults:SoapFault'
    abstract: "true"
