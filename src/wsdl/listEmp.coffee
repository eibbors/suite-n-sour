exports.complexTypes =
  Employee:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      template: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entityId: { type: 'xsd:string', minOccurs: '0' }
      salutation: { type: 'xsd:string', minOccurs: '0' }
      firstName: { type: 'xsd:string', minOccurs: '0' }
      middleName: { type: 'xsd:string', minOccurs: '0' }
      lastName: { type: 'xsd:string', minOccurs: '0' }
      altName: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      defaultAddress: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      phoneticName: { type: 'xsd:string', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      dateCreated: { type: 'xsd:dateTime', minOccurs: '0' }
      initials: { type: 'xsd:string', minOccurs: '0' }
      officePhone: { type: 'xsd:string', minOccurs: '0' }
      homePhone: { type: 'xsd:string', minOccurs: '0' }
      mobilePhone: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingClass: { type: 'platformCore:RecordRef', minOccurs: '0' }
      accountNumber: { type: 'xsd:string', minOccurs: '0' }
      comments: { type: 'xsd:string', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCommonTyp:GlobalSubscriptionStatus', minOccurs: '0' }
      image: { type: 'platformCore:RecordRef', minOccurs: '0' }
      payFrequency: { type: 'listEmpTyp:EmployeePayFrequency', minOccurs: '0' }
      lastPaidDate: { type: 'xsd:dateTime', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useTimeData: { type: 'listEmpTyp:EmployeeUseTimeData', minOccurs: '0' }
      usePerquest: { type: 'xsd:boolean', minOccurs: '0' }
      workplace: { type: 'platformCore:RecordRef', minOccurs: '0' }
      adpId: { type: 'xsd:string', minOccurs: '0' }
      directDeposit: { type: 'xsd:boolean', minOccurs: '0' }
      expenseLimit: { type: 'xsd:double', minOccurs: '0' }
      purchaseOrderLimit: { type: 'xsd:double', minOccurs: '0' }
      purchaseOrderApprovalLimit: { type: 'xsd:double', minOccurs: '0' }
      socialSecurityNumber: { type: 'xsd:string', minOccurs: '0' }
      supervisor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      approver: { type: 'platformCore:RecordRef', minOccurs: '0' }
      approvalLimit: { type: 'xsd:double', minOccurs: '0' }
      timeApprover: { type: 'platformCore:RecordRef', minOccurs: '0' }
      employeeType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isSalesRep: { type: 'xsd:boolean', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isSupportRep: { type: 'xsd:boolean', minOccurs: '0' }
      isJobResource: { type: 'xsd:boolean', minOccurs: '0' }
      laborCost: { type: 'xsd:double', minOccurs: '0' }
      birthDate: { type: 'xsd:dateTime', minOccurs: '0' }
      hireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      releaseDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastReviewDate: { type: 'xsd:dateTime', minOccurs: '0' }
      nextReviewDate: { type: 'xsd:dateTime', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      employeeStatus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      jobDescription: { type: 'xsd:string', minOccurs: '0' }
      maritalStatus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ethnicity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      gender: { type: 'listEmpTyp:Gender', minOccurs: '0' }
      purchaseOrderApprover: { type: 'platformCore:RecordRef', minOccurs: '0' }
      workCalendar: { type: 'platformCore:RecordRef', minOccurs: '0' }
      giveAccess: { type: 'xsd:boolean', minOccurs: '0' }
      concurrentWebServicesUser: { type: 'xsd:boolean', minOccurs: '0' }
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
      hasOfflineAccess: { type: 'xsd:boolean', minOccurs: '0' }
      password: { type: 'xsd:string', minOccurs: '0' }
      password2: { type: 'xsd:string', minOccurs: '0' }
      requirePwdChange: { type: 'xsd:boolean', minOccurs: '0' }
      inheritIPRules: { type: 'xsd:boolean', minOccurs: '0' }
      IPAddressRule: { type: 'xsd:string', minOccurs: '0' }
      commissionPaymentPreference: { type: 'listEmpTyp:EmployeeCommissionPaymentPreference', minOccurs: '0' }
      billPay: { type: 'xsd:boolean', minOccurs: '0' }
      eligibleForCommission: { type: 'xsd:boolean', minOccurs: '0' }
      subscriptionsList: { type: 'listEmp:EmployeeSubscriptionsList', minOccurs: '0' }
      addressbookList: { type: 'listEmp:EmployeeAddressbookList', minOccurs: '0' }
      rolesList: { type: 'listEmp:EmployeeRolesList', minOccurs: '0' }
      hrEducationList: { type: 'listEmp:EmployeeHrEducationList', minOccurs: '0' }
      accruedTimeList: { type: 'listEmp:EmployeeAccruedTimeList', minOccurs: '0' }
      directDepositList: { type: 'listEmp:EmployeeDirectDepositList', minOccurs: '0' }
      companyContributionList: { type: 'listEmp:EmployeeCompanyContributionList', minOccurs: '0' }
      earningList: { type: 'listEmp:EmployeeEarningList', minOccurs: '0' }
      emergencyContactList: { type: 'listEmp:EmployeeEmergencyContactList', minOccurs: '0' }
      deductionList: { type: 'listEmp:EmployeeDeductionList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  EmployeeSubscriptions:
    elements:
      subscribed: { type: 'xsd:string', minOccurs: '0' }
      subscription: { type: 'xsd:string', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
  EmployeeSubscriptionsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      subscriptions: { type: 'listEmp:EmployeeSubscriptions', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeAddressbook:
    elements:
      defaultShipping: { type: 'xsd:boolean', minOccurs: '0' }
      defaultBilling: { type: 'xsd:boolean', minOccurs: '0' }
      label: { type: 'xsd:string', minOccurs: '0' }
      attention: { type: 'xsd:string', minOccurs: '0' }
      addressee: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      addr1: { type: 'xsd:string', minOccurs: '0' }
      addr2: { type: 'xsd:string', minOccurs: '0' }
      addr3: { type: 'xsd:string', minOccurs: '0' }
      city: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
      zip: { type: 'xsd:string', minOccurs: '0' }
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      addrText: { type: 'xsd:string', minOccurs: '0' }
      override: { type: 'xsd:boolean', minOccurs: '0' }
      internalId: { type: 'xsd:string', minOccurs: '0' }
  EmployeeAddressbookList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      addressbook: { type: 'listEmp:EmployeeAddressbook', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeRoles:
    elements:
      selectedRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
  EmployeeRolesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      roles: { type: 'listEmp:EmployeeRoles', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      departmentJoin: { type: 'platformCommon:DepartmentSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      locationJoin: { type: 'platformCommon:LocationSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      subsidiaryJoin: { type: 'platformCommon:SubsidiarySearchBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  EmployeeSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listEmp:EmployeeSearch', minOccurs: '0' }
      columns: { type: 'listEmp:EmployeeSearchRow', minOccurs: '0' }
  EmployeeSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      departmentJoin: { type: 'platformCommon:DepartmentSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      locationJoin: { type: 'platformCommon:LocationSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      subsidiaryJoin: { type: 'platformCommon:SubsidiarySearchRowBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  EmployeeEmergencyContact:
    elements:
      id: { type: 'xsd:long', minOccurs: '0' }
      contact: { type: 'xsd:string', minOccurs: '0' }
      relationship: { type: 'xsd:string', minOccurs: '0' }
      address: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
  EmployeeEmergencyContactList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      employeeEmergencyContact: { type: 'listEmp:EmployeeEmergencyContact', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeHrEducation:
    elements:
      education: { type: 'platformCore:RecordRef', minOccurs: '0' }
      degree: { type: 'xsd:string', minOccurs: '0' }
      degreeDate: { type: 'xsd:dateTime', minOccurs: '0' }
  EmployeeHrEducationList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      employeeHrEducation: { type: 'listEmp:EmployeeHrEducation', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeAccruedTime:
    elements:
      payrollItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      accruedHours: { type: 'xsd:double', minOccurs: '0' }
      accrualRate: { type: 'xsd:double', minOccurs: '0' }
      monetaryRate: { type: 'xsd:double', minOccurs: '0' }
      resetAccruedHoursAtYearEnd: { type: 'xsd:boolean', minOccurs: '0' }
      accrualMethod: { type: 'listEmpTyp:EmployeeAccruedTimeAccrualMethod', minOccurs: '0' }
      maximumAccruedHours: { type: 'xsd:double', minOccurs: '0' }
      inactive: { type: 'xsd:boolean', minOccurs: '0' }
  EmployeeAccruedTimeList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      employeeAccruedTime: { type: 'listEmp:EmployeeAccruedTime', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeDeduction:
    elements:
      payrollItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      limit: { type: 'xsd:double', minOccurs: '0' }
      inactive: { type: 'xsd:boolean', minOccurs: '0' }
  EmployeeDeductionList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      employeeDeduction: { type: 'listEmp:EmployeeDeduction', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeCompanyContribution:
    elements:
      payrollItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      limit: { type: 'xsd:double', minOccurs: '0' }
      inactive: { type: 'xsd:boolean', minOccurs: '0' }
  EmployeeCompanyContributionList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      employeeCompanyContribution: { type: 'listEmp:EmployeeCompanyContribution', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeEarning:
    elements:
      payrollItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      payRate: { type: 'xsd:string', minOccurs: '0' }
      primaryEarning: { type: 'xsd:boolean', minOccurs: '0' }
      defaultHours: { type: 'xsd:double', minOccurs: '0' }
      inactive: { type: 'xsd:boolean', minOccurs: '0' }
      defaultEarning: { type: 'xsd:boolean', minOccurs: '0' }
  EmployeeEarningList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      employeeEarning: { type: 'listEmp:EmployeeEarning', minOccurs: '0', maxOccurs: 'unbounded' }
  EmployeeDirectDeposit:
    elements:
      id: { type: 'xsd:long', minOccurs: '0' }
      netAccount: { type: 'xsd:boolean', minOccurs: '0' }
      savingsAccount: { type: 'xsd:boolean', minOccurs: '0' }
      accountPrenoted: { type: 'xsd:boolean', minOccurs: '0' }
      accountStatus: { type: 'listEmpTyp:EmployeeDirectDepositAccountStatus', minOccurs: '0' }
      bankName: { type: 'xsd:string', minOccurs: '0' }
      bankId: { type: 'xsd:string', minOccurs: '0' }
      bankNumber: { type: 'xsd:string', minOccurs: '0' }
      bankRoutingNumber: { type: 'xsd:string', minOccurs: '0' }
      bankAccountNumber: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      inactive: { type: 'xsd:boolean', minOccurs: '0' }
  EmployeeDirectDepositList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      employeeDirectDeposit: { type: 'listEmp:EmployeeDirectDeposit', minOccurs: '0', maxOccurs: 'unbounded' }
  PayrollItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      liabilityAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      employeePaid: { type: 'xsd:boolean', minOccurs: '0' }
      inactive: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  PayrollItemSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:PayrollItemSearchBasic', minOccurs: '0' }
  PayrollItemSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:PayrollItemSearchRowBasic', minOccurs: '0' }
