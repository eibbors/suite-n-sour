exports.complexTypes =
  JournalEntry:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      reversalDate: { type: 'xsd:dateTime', minOccurs: '0' }
      reversalDefer: { type: 'xsd:boolean', minOccurs: '0' }
      parentExpenseAlloc: { type: 'platformCore:RecordRef', minOccurs: '0' }
      reversalEntry: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      toSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      approved: { type: 'xsd:boolean', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      lineList: { type: 'tranGeneral:JournalEntryLineList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  JournalEntryLine:
    elements:
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      debit: { type: 'xsd:double', minOccurs: '0' }
      credit: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      eliminate: { type: 'xsd:boolean', minOccurs: '0' }
      schedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      residual: { type: 'xsd:string', minOccurs: '0' }
      scheduleNum: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      tax1Acct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  JournalEntryLineList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      line: { type: 'tranGeneral:JournalEntryLine', minOccurs: '0', maxOccurs: 'unbounded' }
  InterCompanyJournalEntry:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      reversalDate: { type: 'xsd:dateTime', minOccurs: '0' }
      reversalDefer: { type: 'xsd:boolean', minOccurs: '0' }
      parentExpenseAlloc: { type: 'platformCore:RecordRef', minOccurs: '0' }
      reversalEntry: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      toSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      approved: { type: 'xsd:boolean', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lineList: { type: 'tranGeneral:InterCompanyJournalEntryLineList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  InterCompanyJournalEntryLine:
    elements:
      lineSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      debit: { type: 'xsd:double', minOccurs: '0' }
      credit: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      schedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      eliminate: { type: 'xsd:boolean', minOccurs: '0' }
      residual: { type: 'xsd:string', minOccurs: '0' }
      amortizationSched: { type: 'platformCore:RecordRef', minOccurs: '0' }
      scheduleNum: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationResidual: { type: 'xsd:string', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      tax1Acct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  InterCompanyJournalEntryLineList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      line: { type: 'tranGeneral:InterCompanyJournalEntryLine', minOccurs: '0', maxOccurs: 'unbounded' }
