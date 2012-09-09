exports.complexTypes =
  CalendarEvent:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      company: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contact: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supportCase: { type: 'platformCore:RecordRef', minOccurs: '0' }
      transaction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      period: { type: 'xsd:long', minOccurs: '0' }
      frequency: { type: 'actSchedTyp:CalendarEventFrequency', minOccurs: '0' }
      recurrenceDowMaskList: { type: 'actSched:RecurrenceDowMaskList', minOccurs: '0' }
      recurrenceDow: { type: 'actSchedTyp:CalendarEventDow', minOccurs: '0' }
      recurrenceDowim: { type: 'actSchedTyp:CalendarEventDowim', minOccurs: '0' }
      seriesStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endByDate: { type: 'xsd:dateTime', minOccurs: '0' }
      noEndDate: { type: 'xsd:boolean', minOccurs: '0' }
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      recurrence: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      allDayEvent: { type: 'xsd:boolean', minOccurs: '0' }
      timedEvent: { type: 'xsd:boolean', minOccurs: '0' }
      reminderType: { type: 'actSchedTyp:CalendarEventReminderType', minOccurs: '0' }
      reminderMinutes: { type: 'actSchedTyp:CalendarEventReminderMinutes', minOccurs: '0' }
      status: { type: 'actSchedTyp:CalendarEventStatus', minOccurs: '0' }
      accessLevel: { type: 'actSchedTyp:CalendarEventAccessLevel', minOccurs: '0' }
      organizer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      exclusionDateList: { type: 'actSched:ExclusionDateList', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      attendeeList: { type: 'actSched:CalendarEventAttendeeList', minOccurs: '0' }
      resourceList: { type: 'actSched:CalendarEventResourceList', minOccurs: '0' }
      timeItemList: { type: 'actSched:CalendarEventTimeItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ExclusionDateList:
    elements:
      exclusionDate: { type: 'xsd:dateTime', maxOccurs: 'unbounded' }
  RecurrenceDowMaskList:
    elements:
      recurrenceDowMask: { type: 'actSchedTyp:CalendarEventDow', minOccurs: '1', maxOccurs: '7' }
  CalendarEventAttendee:
    elements:
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
      attendee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      response: { type: 'platformCoreTyp:CalendarEventAttendeeResponse', minOccurs: '0' }
      attendance: { type: 'actSchedTyp:CalendarEventAttendeeAttendance', minOccurs: '0' }
  CalendarEventAttendeeList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      attendee: { type: 'actSched:CalendarEventAttendee', minOccurs: '0', maxOccurs: 'unbounded' }
  CalendarEventResource:
    elements:
      resource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
  CalendarEventResourceList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      resource: { type: 'actSched:CalendarEventResource', minOccurs: '0', maxOccurs: 'unbounded' }
  CalendarEventSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CalendarEventSearchBasic', minOccurs: '0' }
      attendeeJoin: { type: 'platformCommon:EntitySearchBasic', minOccurs: '0' }
      attendeeContactJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      attendeeCustomerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  CalendarEventSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'actSched:CalendarEventSearch', minOccurs: '0' }
      columns: { type: 'actSched:CalendarEventSearchRow', minOccurs: '0' }
  CalendarEventSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CalendarEventSearchRowBasic', minOccurs: '0' }
      attendeeJoin: { type: 'platformCommon:EntitySearchRowBasic', minOccurs: '0' }
      attendeeContactJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      attendeeCustomerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchRowBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  Task:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      company: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contact: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supportCase: { type: 'platformCore:RecordRef', minOccurs: '0' }
      transaction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      milestone: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      assigned: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
      timedEvent: { type: 'xsd:boolean', minOccurs: '0' }
      estimatedTime: { type: 'platformCore:Duration', minOccurs: '0' }
      estimatedTimeOverride: { type: 'platformCore:Duration', minOccurs: '0' }
      actualTime: { type: 'platformCore:Duration', minOccurs: '0' }
      timeRemaining: { type: 'platformCore:Duration', minOccurs: '0' }
      percentTimeComplete: { type: 'xsd:double', minOccurs: '0' }
      percentComplete: { type: 'xsd:double', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      dueDate: { type: 'xsd:dateTime', minOccurs: '0' }
      completedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      priority: { type: 'actSchedTyp:TaskPriority', minOccurs: '0' }
      status: { type: 'actSchedTyp:TaskStatus', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      accessLevel: { type: 'xsd:boolean', minOccurs: '0' }
      reminderType: { type: 'actSchedTyp:TaskReminderType', minOccurs: '0' }
      reminderMinutes: { type: 'actSchedTyp:TaskReminderMinutes', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contactList: { type: 'actSched:TaskContactList', minOccurs: '0' }
      timeItemList: { type: 'actSched:TaskTimeItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  TaskContact:
    elements:
      company: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contact: { type: 'platformCore:RecordRef', minOccurs: '0' }
  TaskContactList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      contact: { type: 'actSched:TaskContact', minOccurs: '0', maxOccurs: 'unbounded' }
  TaskSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:TaskSearchBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchBasic', minOccurs: '0' }
      companyCustomerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  TaskSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'actSched:TaskSearch', minOccurs: '0' }
      columns: { type: 'actSched:TaskSearchRow', minOccurs: '0' }
  TaskSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:TaskSearchRowBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchRowBasic', minOccurs: '0' }
      companyCustomerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchRowBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchRowBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchRowBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  PhoneCall:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      message: { type: 'xsd:string', minOccurs: '0' }
      company: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contact: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supportCase: { type: 'platformCore:RecordRef', minOccurs: '0' }
      transaction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      milestone: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      assigned: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      timedEvent: { type: 'xsd:boolean', minOccurs: '0' }
      completedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      status: { type: 'actSchedTyp:PhoneCallStatus', minOccurs: '0' }
      priority: { type: 'actSchedTyp:PhoneCallPriority', minOccurs: '0' }
      accessLevel: { type: 'xsd:boolean', minOccurs: '0' }
      reminderType: { type: 'actSchedTyp:PhoneCallReminderType', minOccurs: '0' }
      reminderMinutes: { type: 'actSchedTyp:PhoneCallReminderMinutes', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      contactList: { type: 'actSched:PhoneCallContactList', minOccurs: '0' }
      timeItemList: { type: 'actSched:PhoneCallTimeItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  PhoneCallContact:
    elements:
      company: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contact: { type: 'platformCore:RecordRef', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
  PhoneCallContactList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      contact: { type: 'actSched:PhoneCallContact', minOccurs: '0', maxOccurs: 'unbounded' }
  PhoneCallSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:PhoneCallSearchBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchBasic', minOccurs: '0' }
      companyCustomerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  PhoneCallSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'actSched:PhoneCallSearch', minOccurs: '0' }
      columns: { type: 'actSched:PhoneCallSearchRow', minOccurs: '0' }
  PhoneCallSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:PhoneCallSearchRowBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchRowBasic', minOccurs: '0' }
      companyCustomerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchRowBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  ProjectTask:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      eventId: { type: 'platformCore:RecordRef', minOccurs: '0' }
      percentTimeComplete: { type: 'xsd:double', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      company: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contact: { type: 'platformCore:RecordRef', minOccurs: '0' }
      order: { type: 'platformCore:RecordRef', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      priority: { type: 'platformCore:RecordRef', minOccurs: '0' }
      estimatedWork: { type: 'xsd:double', minOccurs: '0' }
      estimatedWorkBaseline: { type: 'xsd:double', minOccurs: '0' }
      constraintType: { type: 'actSchedTyp:ProjectTaskConstraintType', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      startDateBaseline: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDateBaseline: { type: 'xsd:dateTime', minOccurs: '0' }
      actualWork: { type: 'xsd:double', minOccurs: '0' }
      remainingWork: { type: 'xsd:double', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      status: { type: 'actSchedTyp:ProjectTaskStatus', minOccurs: '0' }
      assigneeList: { type: 'actSched:ProjectTaskAssigneeList', minOccurs: '0' }
      predecessorList: { type: 'actSched:ProjectTaskPredecessorList', minOccurs: '0' }
      timeItemList: { type: 'actSched:ProjectTaskTimeItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ProjectTaskPredecessor:
    elements:
      task: { type: 'platformCore:RecordRef', minOccurs: '0' }
      type: { type: 'actSchedTyp:ProjectTaskPredecessorPredecessorType', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
  ProjectTaskPredecessorList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      projectTaskPredecessor: { type: 'actSched:ProjectTaskPredecessor', minOccurs: '0', maxOccurs: 'unbounded' }
  ProjectTaskAssignee:
    elements:
      resource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      units: { type: 'xsd:double', minOccurs: '0' }
      serviceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      estimatedWork: { type: 'xsd:double', minOccurs: '0' }
      unitCost: { type: 'xsd:double', minOccurs: '0' }
      unitPrice: { type: 'xsd:double', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      price: { type: 'xsd:double', minOccurs: '0' }
  ProjectTaskAssigneeList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      projectTaskAssignee: { type: 'actSched:ProjectTaskAssignee', minOccurs: '0', maxOccurs: 'unbounded' }
  ProjectTaskSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:ProjectTaskSearchBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchBasic', minOccurs: '0' }
      predecessorJoin: { type: 'platformCommon:ProjectTaskSearchBasic', minOccurs: '0' }
      projectTaskAssignmentJoin: { type: 'platformCommon:ProjectTaskAssignmentSearchBasic', minOccurs: '0' }
      successorJoin: { type: 'platformCommon:ProjectTaskSearchBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  ProjectTaskSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'actSched:ProjectTaskSearch', minOccurs: '0' }
      columns: { type: 'actSched:ProjectTaskSearchRow', minOccurs: '0' }
  ProjectTaskSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:ProjectTaskSearchRowBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchRowBasic', minOccurs: '0' }
      predecessorJoin: { type: 'platformCommon:ProjectTaskSearchRowBasic', minOccurs: '0' }
      projectTaskAssignmentJoin: { type: 'platformCommon:ProjectTaskAssignmentSearchRowBasic', minOccurs: '0' }
      successorJoin: { type: 'platformCommon:ProjectTaskSearchRowBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  PhoneCallTimeItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      timeItem: { type: 'platformCommon:TimeItem', minOccurs: '0', maxOccurs: 'unbounded' }
  CalendarEventTimeItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      timeItem: { type: 'platformCommon:TimeItem', minOccurs: '0', maxOccurs: 'unbounded' }
  TaskTimeItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      timeItem: { type: 'platformCommon:TimeItem', minOccurs: '0', maxOccurs: 'unbounded' }
  ProjectTaskTimeItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      timeItem: { type: 'platformCommon:TimeItem', minOccurs: '0', maxOccurs: 'unbounded' }
