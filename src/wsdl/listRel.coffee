exports.complexTypes =
  Subscriptions:
    elements:
      subscribed: { type: 'xsd:boolean', minOccurs: '0' }
      subscription: { type: 'platformCore:RecordRef', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
  SubscriptionsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      subscriptions: { type: 'listRel:Subscriptions', minOccurs: '0', maxOccurs: 'unbounded' }
  Contact:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entityId: { type: 'xsd:string', minOccurs: '0' }
      company: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salutation: { type: 'xsd:string', minOccurs: '0' }
      firstName: { type: 'xsd:string', minOccurs: '0' }
      middleName: { type: 'xsd:string', minOccurs: '0' }
      lastName: { type: 'xsd:string', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      defaultAddress: { type: 'xsd:string', minOccurs: '0' }
      isPrivate: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      phoneticName: { type: 'xsd:string', minOccurs: '0' }
      categoryList: { type: 'listRel:CategoryList', minOccurs: '0' }
      altEmail: { type: 'xsd:string', minOccurs: '0' }
      officePhone: { type: 'xsd:string', minOccurs: '0' }
      homePhone: { type: 'xsd:string', minOccurs: '0' }
      mobilePhone: { type: 'xsd:string', minOccurs: '0' }
      supervisor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supervisorPhone: { type: 'xsd:string', minOccurs: '0' }
      assistant: { type: 'platformCore:RecordRef', minOccurs: '0' }
      assistantPhone: { type: 'xsd:string', minOccurs: '0' }
      comments: { type: 'xsd:string', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCommonTyp:GlobalSubscriptionStatus', minOccurs: '0' }
      image: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billPay: { type: 'xsd:boolean', minOccurs: '0' }
      dateCreated: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      addressbookList: { type: 'listRel:ContactAddressbookList', minOccurs: '0' }
      subscriptionsList: { type: 'listRel:SubscriptionsList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CategoryList:
    elements:
      category: { type: 'platformCore:RecordRef', maxOccurs: 'unbounded' }
  ContactAddressbook:
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
      zip: { type: 'xsd:string', minOccurs: '0' }
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      addrText: { type: 'xsd:string', minOccurs: '0' }
      override: { type: 'xsd:boolean', minOccurs: '0' }
      internalId: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
  ContactAddressbookList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      addressbook: { type: 'listRel:ContactAddressbook', minOccurs: '0', maxOccurs: 'unbounded' }
  ContactSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      callJoin: { type: 'platformCommon:PhoneCallSearchBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      customerPrimaryJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      eventJoin: { type: 'platformCommon:CalendarEventSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchBasic', minOccurs: '0' }
      jobPrimaryJoin: { type: 'platformCommon:JobSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchBasic', minOccurs: '0' }
      partnerJoin: { type: 'platformCommon:PartnerSearchBasic', minOccurs: '0' }
      partnerPrimaryJoin: { type: 'platformCommon:PartnerSearchBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
      vendorJoin: { type: 'platformCommon:VendorSearchBasic', minOccurs: '0' }
      vendorPrimaryJoin: { type: 'platformCommon:VendorSearchBasic', minOccurs: '0' }
  ContactSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:ContactSearch', minOccurs: '0' }
      columns: { type: 'listRel:ContactSearchRow', minOccurs: '0' }
  ContactSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      callJoin: { type: 'platformCommon:PhoneCallSearchRowBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchRowBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      customerPrimaryJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      eventJoin: { type: 'platformCommon:CalendarEventSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchRowBasic', minOccurs: '0' }
      jobPrimaryJoin: { type: 'platformCommon:JobSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchRowBasic', minOccurs: '0' }
      partnerJoin: { type: 'platformCommon:PartnerSearchRowBasic', minOccurs: '0' }
      partnerPrimaryJoin: { type: 'platformCommon:PartnerSearchRowBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
      vendorJoin: { type: 'platformCommon:VendorSearchRowBasic', minOccurs: '0' }
      vendorPrimaryJoin: { type: 'platformCommon:VendorSearchRowBasic', minOccurs: '0' }
  Customer:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entityId: { type: 'xsd:string', minOccurs: '0' }
      altName: { type: 'xsd:string', minOccurs: '0' }
      isPerson: { type: 'xsd:boolean', minOccurs: '0' }
      phoneticName: { type: 'xsd:string', minOccurs: '0' }
      salutation: { type: 'xsd:string', minOccurs: '0' }
      firstName: { type: 'xsd:string', minOccurs: '0' }
      middleName: { type: 'xsd:string', minOccurs: '0' }
      lastName: { type: 'xsd:string', minOccurs: '0' }
      companyName: { type: 'xsd:string', minOccurs: '0' }
      entityStatus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      url: { type: 'xsd:string', minOccurs: '0' }
      defaultAddress: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      printOnCheckAs: { type: 'xsd:string', minOccurs: '0' }
      altPhone: { type: 'xsd:string', minOccurs: '0' }
      homePhone: { type: 'xsd:string', minOccurs: '0' }
      mobilePhone: { type: 'xsd:string', minOccurs: '0' }
      altEmail: { type: 'xsd:string', minOccurs: '0' }
      language: { type: 'platformCommonTyp:Language', minOccurs: '0' }
      comments: { type: 'xsd:string', minOccurs: '0' }
      dateCreated: { type: 'xsd:dateTime', minOccurs: '0' }
      image: { type: 'platformCore:RecordRef', minOccurs: '0' }
      emailPreference: { type: 'listRelTyp:EmailPreference', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      representingSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      territory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vatRegNumber: { type: 'xsd:string', minOccurs: '0' }
      accountNumber: { type: 'xsd:string', minOccurs: '0' }
      taxExempt: { type: 'xsd:boolean', minOccurs: '0' }
      terms: { type: 'platformCore:RecordRef', minOccurs: '0' }
      creditLimit: { type: 'xsd:double', minOccurs: '0' }
      creditHoldOverride: { type: 'listRelTyp:CustomerCreditHoldOverride', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      overdueBalance: { type: 'xsd:double', minOccurs: '0' }
      daysOverdue: { type: 'xsd:long', minOccurs: '0' }
      unbilledOrders: { type: 'xsd:double', minOccurs: '0' }
      consolUnbilledOrders: { type: 'xsd:double', minOccurs: '0' }
      consolOverdueBalance: { type: 'xsd:double', minOccurs: '0' }
      consolDepositBalance: { type: 'xsd:double', minOccurs: '0' }
      consolBalance: { type: 'xsd:double', minOccurs: '0' }
      consolAging: { type: 'xsd:double', minOccurs: '0' }
      consolDaysOverdue: { type: 'xsd:long', minOccurs: '0' }
      priceLevel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      prefCCProcessor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      depositBalance: { type: 'xsd:double', minOccurs: '0' }
      shipComplete: { type: 'xsd:boolean', minOccurs: '0' }
      taxable: { type: 'xsd:boolean', minOccurs: '0' }
      taxItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      resaleNumber: { type: 'xsd:string', minOccurs: '0' }
      aging: { type: 'xsd:double', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      reminderDays: { type: 'xsd:long', minOccurs: '0' }
      shippingItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      thirdPartyAcct: { type: 'xsd:string', minOccurs: '0' }
      thirdPartyZipcode: { type: 'xsd:string', minOccurs: '0' }
      thirdPartyCountry: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      giveAccess: { type: 'xsd:boolean', minOccurs: '0' }
      estimatedBudget: { type: 'xsd:double', minOccurs: '0' }
      accessRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
      password: { type: 'xsd:string', minOccurs: '0' }
      password2: { type: 'xsd:string', minOccurs: '0' }
      requirePwdChange: { type: 'xsd:boolean', minOccurs: '0' }
      campaignCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      receivablesAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      webLead: { type: 'xsd:string', minOccurs: '0' }
      referrer: { type: 'xsd:string', minOccurs: '0' }
      keywords: { type: 'xsd:string', minOccurs: '0' }
      clickStream: { type: 'xsd:string', minOccurs: '0' }
      lastPageVisited: { type: 'xsd:string', minOccurs: '0' }
      visits: { type: 'xsd:long', minOccurs: '0' }
      firstVisit: { type: 'xsd:dateTime', minOccurs: '0' }
      lastVisit: { type: 'xsd:dateTime', minOccurs: '0' }
      billPay: { type: 'xsd:boolean', minOccurs: '0' }
      openingBalance: { type: 'xsd:double', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      openingBalanceDate: { type: 'xsd:dateTime', minOccurs: '0' }
      openingBalanceAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stage: { type: 'listRelTyp:CustomerStage', minOccurs: '0' }
      emailTransactions: { type: 'xsd:boolean', minOccurs: '0' }
      printTransactions: { type: 'xsd:boolean', minOccurs: '0' }
      faxTransactions: { type: 'xsd:boolean', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      isBudgetApproved: { type: 'xsd:boolean', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCommonTyp:GlobalSubscriptionStatus', minOccurs: '0' }
      salesReadiness: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTeamList: { type: 'listRel:CustomerSalesTeamList', minOccurs: '0' }
      buyingReason: { type: 'platformCore:RecordRef', minOccurs: '0' }
      downloadList: { type: 'listRel:CustomerDownloadList', minOccurs: '0' }
      buyingTimeFrame: { type: 'platformCore:RecordRef', minOccurs: '0' }
      addressbookList: { type: 'listRel:CustomerAddressbookList', minOccurs: '0' }
      subscriptionsList: { type: 'listRel:SubscriptionsList', minOccurs: '0' }
      contactRolesList: { type: 'listRel:ContactAccessRolesList', minOccurs: '0' }
      currencyList: { type: 'listRel:CustomerCurrencyList', minOccurs: '0' }
      creditCardsList: { type: 'listRel:CustomerCreditCardsList', minOccurs: '0' }
      partnersList: { type: 'listRel:CustomerPartnersList', minOccurs: '0' }
      groupPricingList: { type: 'listRel:CustomerGroupPricingList', minOccurs: '0' }
      itemPricingList: { type: 'listRel:CustomerItemPricingList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CustomerDownload:
    elements:
      file: { type: 'platformCore:RecordRef', minOccurs: '0' }
      licenseCode: { type: 'xsd:string', minOccurs: '0' }
      remainingDownloads: { type: 'xsd:long', minOccurs: '0' }
      expiration: { type: 'xsd:dateTime', minOccurs: '0' }
  CustomerDownloadList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      download: { type: 'listRel:CustomerDownload', minOccurs: '0', maxOccurs: 'unbounded' }
  ContactAccessRoles:
    elements:
      giveAccess: { type: 'xsd:boolean', minOccurs: '0' }
      contact: { type: 'platformCore:RecordRef', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      role: { type: 'platformCore:RecordRef', minOccurs: '0' }
      password: { type: 'xsd:string', minOccurs: '0' }
      password2: { type: 'xsd:string', minOccurs: '0' }
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
  ContactAccessRolesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      contactRoles: { type: 'listRel:ContactAccessRoles', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  CustomerSalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'listRel:CustomerSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerAddressbook:
    elements:
      defaultShipping: { type: 'xsd:boolean', minOccurs: '0' }
      defaultBilling: { type: 'xsd:boolean', minOccurs: '0' }
      isResidential: { type: 'xsd:boolean', minOccurs: '0' }
      label: { type: 'xsd:string', minOccurs: '0' }
      attention: { type: 'xsd:string', minOccurs: '0' }
      addressee: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      addr1: { type: 'xsd:string', minOccurs: '0' }
      addr2: { type: 'xsd:string', minOccurs: '0' }
      addr3: { type: 'xsd:string', minOccurs: '0' }
      city: { type: 'xsd:string', minOccurs: '0' }
      zip: { type: 'xsd:string', minOccurs: '0' }
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      addrText: { type: 'xsd:string', minOccurs: '0' }
      override: { type: 'xsd:boolean', minOccurs: '0' }
      internalId: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
  CustomerAddressbookList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      addressbook: { type: 'listRel:CustomerAddressbook', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerCreditCards:
    elements:
      internalId: { type: 'xsd:string', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      debitcardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      ccMemo: { type: 'xsd:string', minOccurs: '0' }
      validfrom: { type: 'xsd:dateTime', minOccurs: '0' }
      ccDefault: { type: 'xsd:boolean', minOccurs: '0' }
  CustomerCreditCardsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      creditCards: { type: 'listRel:CustomerCreditCards', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerGroupPricing:
    elements:
      group: { type: 'platformCore:RecordRef', minOccurs: '0' }
      level: { type: 'platformCore:RecordRef', minOccurs: '0' }
  CustomerGroupPricingList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      groupPricing: { type: 'listRel:CustomerGroupPricing', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerItemPricing:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      level: { type: 'platformCore:RecordRef', minOccurs: '0' }
      price: { type: 'xsd:double', minOccurs: '0' }
  CustomerItemPricingList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      itemPricing: { type: 'listRel:CustomerItemPricing', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerPartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      callJoin: { type: 'platformCommon:PhoneCallSearchBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      eventJoin: { type: 'platformCommon:CalendarEventSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      hostedPageJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchBasic', minOccurs: '0' }
      leadSourceJoin: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchBasic', minOccurs: '0' }
      parentCustomerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      partnerJoin: { type: 'platformCommon:PartnerSearchBasic', minOccurs: '0' }
      salesRepJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      subCustomerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchBasic', minOccurs: '0' }
      topLevelParentJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
      webSiteCategoryJoin: { type: 'platformCommon:SiteCategorySearchBasic', minOccurs: '0' }
      webSiteItemJoin: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
  CustomerSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:CustomerSearch', minOccurs: '0' }
      columns: { type: 'listRel:CustomerSearchRow', minOccurs: '0' }
  CustomerSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      callJoin: { type: 'platformCommon:PhoneCallSearchRowBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchRowBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      eventJoin: { type: 'platformCommon:CalendarEventSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      hostedPageJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchRowBasic', minOccurs: '0' }
      leadSourceJoin: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchRowBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchRowBasic', minOccurs: '0' }
      parentCustomerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      partnerJoin: { type: 'platformCommon:PartnerSearchRowBasic', minOccurs: '0' }
      salesRepJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      subCustomerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchRowBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchRowBasic', minOccurs: '0' }
      topLevelParentJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
      webSiteCategoryJoin: { type: 'platformCommon:SiteCategorySearchRowBasic', minOccurs: '0' }
      webSiteItemJoin: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
  CustomerStatus:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      stage: { type: 'listRelTyp:CustomerStatusStage', minOccurs: '0' }
      probability: { type: 'xsd:double', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      includeInLeadReports: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  Partner:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entityId: { type: 'xsd:string', minOccurs: '0' }
      altName: { type: 'xsd:string', minOccurs: '0' }
      partnerCode: { type: 'xsd:string', minOccurs: '0' }
      isPerson: { type: 'xsd:boolean', minOccurs: '0' }
      phoneticName: { type: 'xsd:string', minOccurs: '0' }
      salutation: { type: 'xsd:string', minOccurs: '0' }
      firstName: { type: 'xsd:string', minOccurs: '0' }
      middleName: { type: 'xsd:string', minOccurs: '0' }
      lastName: { type: 'xsd:string', minOccurs: '0' }
      companyName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      url: { type: 'xsd:string', minOccurs: '0' }
      defaultAddress: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      dateCreated: { type: 'xsd:dateTime', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCommonTyp:GlobalSubscriptionStatus', minOccurs: '0' }
      referringUrl: { type: 'xsd:string', minOccurs: '0' }
      roleList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      categoryList: { type: 'listRel:CategoryList', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      printOnCheckAs: { type: 'xsd:string', minOccurs: '0' }
      taxIdNum: { type: 'xsd:string', minOccurs: '0' }
      vatRegNumber: { type: 'xsd:string', minOccurs: '0' }
      comments: { type: 'xsd:string', minOccurs: '0' }
      bcn: { type: 'xsd:string', minOccurs: '0' }
      image: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxFractionUnit: { type: 'listRelTyp:TaxFractionUnit', minOccurs: '0' }
      emailPreference: { type: 'listRelTyp:EmailPreference', minOccurs: '0' }
      taxRounding: { type: 'listRelTyp:TaxRounding', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      homePhone: { type: 'xsd:string', minOccurs: '0' }
      mobilePhone: { type: 'xsd:string', minOccurs: '0' }
      altEmail: { type: 'xsd:string', minOccurs: '0' }
      giveAccess: { type: 'xsd:boolean', minOccurs: '0' }
      accessRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
      password: { type: 'xsd:string', minOccurs: '0' }
      password2: { type: 'xsd:string', minOccurs: '0' }
      requirePwdChange: { type: 'xsd:boolean', minOccurs: '0' }
      subPartnerLogin: { type: 'xsd:boolean', minOccurs: '0' }
      loginAs: { type: 'xsd:string', minOccurs: '0' }
      eligibleForCommission: { type: 'xsd:boolean', minOccurs: '0' }
      contactRolesList: { type: 'listRel:ContactAccessRolesList', minOccurs: '0' }
      promoCodeList: { type: 'listRel:PartnerPromoCodeList', minOccurs: '0' }
      addressbookList: { type: 'listRel:PartnerAddressbookList', minOccurs: '0' }
      subscriptionsList: { type: 'listRel:SubscriptionsList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  PartnerPromoCode:
    elements:
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discount: { type: 'xsd:string', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
  PartnerPromoCodeList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      promoCode: { type: 'listRel:PartnerPromoCode', minOccurs: '0', maxOccurs: 'unbounded' }
  PartnerAddressbook:
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
      zip: { type: 'xsd:string', minOccurs: '0' }
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      addrText: { type: 'xsd:string', minOccurs: '0' }
      override: { type: 'xsd:boolean', minOccurs: '0' }
      internalId: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
  PartnerAddressbookList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      addressbook: { type: 'listRel:PartnerAddressbook', minOccurs: '0', maxOccurs: 'unbounded' }
  PartnerSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:PartnerSearchBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  PartnerSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:PartnerSearch', minOccurs: '0' }
      columns: { type: 'listRel:PartnerSearchRow', minOccurs: '0' }
  PartnerSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:PartnerSearchRowBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  Vendor:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entityId: { type: 'xsd:string', minOccurs: '0' }
      altName: { type: 'xsd:string', minOccurs: '0' }
      isPerson: { type: 'xsd:boolean', minOccurs: '0' }
      phoneticName: { type: 'xsd:string', minOccurs: '0' }
      salutation: { type: 'xsd:string', minOccurs: '0' }
      firstName: { type: 'xsd:string', minOccurs: '0' }
      middleName: { type: 'xsd:string', minOccurs: '0' }
      lastName: { type: 'xsd:string', minOccurs: '0' }
      companyName: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      url: { type: 'xsd:string', minOccurs: '0' }
      defaultAddress: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      dateCreated: { type: 'xsd:dateTime', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      printOnCheckAs: { type: 'xsd:string', minOccurs: '0' }
      altPhone: { type: 'xsd:string', minOccurs: '0' }
      homePhone: { type: 'xsd:string', minOccurs: '0' }
      mobilePhone: { type: 'xsd:string', minOccurs: '0' }
      altEmail: { type: 'xsd:string', minOccurs: '0' }
      comments: { type: 'xsd:string', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCommonTyp:GlobalSubscriptionStatus', minOccurs: '0' }
      image: { type: 'platformCore:RecordRef', minOccurs: '0' }
      emailPreference: { type: 'listRelTyp:EmailPreference', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      representingSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      accountNumber: { type: 'xsd:string', minOccurs: '0' }
      legalName: { type: 'xsd:string', minOccurs: '0' }
      vatRegNumber: { type: 'xsd:string', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      payablesAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      terms: { type: 'platformCore:RecordRef', minOccurs: '0' }
      creditLimit: { type: 'xsd:double', minOccurs: '0' }
      openingBalance: { type: 'xsd:double', minOccurs: '0' }
      openingBalanceDate: { type: 'xsd:dateTime', minOccurs: '0' }
      openingBalanceAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      bcn: { type: 'xsd:string', minOccurs: '0' }
      unbilledOrders: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      is1099Eligible: { type: 'xsd:boolean', minOccurs: '0' }
      isJobResourceVend: { type: 'xsd:boolean', minOccurs: '0' }
      laborCost: { type: 'xsd:double', minOccurs: '0' }
      workCalendar: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxIdNum: { type: 'xsd:string', minOccurs: '0' }
      taxItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      giveAccess: { type: 'xsd:boolean', minOccurs: '0' }
      sendEmail: { type: 'xsd:boolean', minOccurs: '0' }
      billPay: { type: 'xsd:boolean', minOccurs: '0' }
      isAccountant: { type: 'xsd:boolean', minOccurs: '0' }
      password: { type: 'xsd:string', minOccurs: '0' }
      password2: { type: 'xsd:string', minOccurs: '0' }
      requirePwdChange: { type: 'xsd:boolean', minOccurs: '0' }
      eligibleForCommission: { type: 'xsd:boolean', minOccurs: '0' }
      emailTransactions: { type: 'xsd:boolean', minOccurs: '0' }
      printTransactions: { type: 'xsd:boolean', minOccurs: '0' }
      faxTransactions: { type: 'xsd:boolean', minOccurs: '0' }
      pricingScheduleList: { type: 'listRel:VendorPricingScheduleList', minOccurs: '0' }
      subscriptionsList: { type: 'listRel:SubscriptionsList', minOccurs: '0' }
      addressbookList: { type: 'listRel:VendorAddressbookList', minOccurs: '0' }
      rolesList: { type: 'listRel:VendorRolesList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorPricingSchedule:
    elements:
      scheduleName: { type: 'xsd:string', minOccurs: '0' }
      scheduleDiscount: { type: 'xsd:double', minOccurs: '0' }
  VendorPricingScheduleList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      pricingSchedule: { type: 'listRel:VendorPricingSchedule', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorAddressbook:
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
      zip: { type: 'xsd:string', minOccurs: '0' }
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      addrText: { type: 'xsd:string', minOccurs: '0' }
      override: { type: 'xsd:boolean', minOccurs: '0' }
      internalId: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
  VendorAddressbookList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      addressbook: { type: 'listRel:VendorAddressbook', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorRoles:
    elements:
      selectedRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
  VendorRolesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      roles: { type: 'listRel:VendorRoles', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:VendorSearchBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  VendorSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:VendorSearch', minOccurs: '0' }
      columns: { type: 'listRel:VendorSearchRow', minOccurs: '0' }
  VendorSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:VendorSearchRowBasic', minOccurs: '0' }
      campaignResponseJoin: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesFromJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      messagesToJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  EntityGroup:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      groupName: { type: 'xsd:string', minOccurs: '0' }
      groupType: { type: 'listRelTyp:EntityGroupType', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      groupOwner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isSavedSearch: { type: 'xsd:boolean', minOccurs: '0' }
      parentGroupType: { type: 'listRelTyp:EntityGroupType', minOccurs: '0' }
      savedSearch: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isSalesTeam: { type: 'xsd:boolean', minOccurs: '0' }
      comments: { type: 'xsd:string', minOccurs: '0' }
      isPrivate: { type: 'xsd:boolean', minOccurs: '0' }
      restrictionGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      isSalesRep: { type: 'xsd:boolean', minOccurs: '0' }
      isSupportRep: { type: 'xsd:boolean', minOccurs: '0' }
      isProductTeam: { type: 'xsd:boolean', minOccurs: '0' }
      isFunctionalTeam: { type: 'xsd:boolean', minOccurs: '0' }
      issueRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      calendarName: { type: 'xsd:string', minOccurs: '0' }
      calendarStartTime: { type: 'listRelTyp:EntityGroupDailyTime', minOccurs: '0' }
      calendarEndTime: { type: 'listRelTyp:EntityGroupDailyTime', minOccurs: '0' }
      calendarDefaultView: { type: 'listRelTyp:EntityGroupDefView', minOccurs: '0' }
      calendarPeriod: { type: 'listRelTyp:EntityGroupPeriodSize', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  EntityGroupSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:EntityGroupSearchBasic', minOccurs: '0' }
      groupMemberJoin: { type: 'platformCommon:EntitySearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  EntityGroupSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:EntityGroupSearch', minOccurs: '0' }
      columns: { type: 'listRel:EntityGroupSearchRow', minOccurs: '0' }
  EntityGroupSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:EntityGroupSearchRowBasic', minOccurs: '0' }
      groupMemberJoin: { type: 'platformCommon:EntitySearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  Job:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entityId: { type: 'xsd:string', minOccurs: '0' }
      altName: { type: 'xsd:string', minOccurs: '0' }
      companyName: { type: 'xsd:string', minOccurs: '0' }
      phoneticName: { type: 'xsd:string', minOccurs: '0' }
      entityStatus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      defaultAddress: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      billPay: { type: 'xsd:boolean', minOccurs: '0' }
      dateCreated: { type: 'xsd:dateTime', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      workplace: { type: 'platformCore:RecordRef', minOccurs: '0' }
      language: { type: 'platformCore:RecordRef', minOccurs: '0' }
      comments: { type: 'xsd:string', minOccurs: '0' }
      accountNumber: { type: 'xsd:string', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fxRate: { type: 'xsd:double', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      altPhone: { type: 'xsd:string', minOccurs: '0' }
      calculatedEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      calculatedEndDateBaseline: { type: 'xsd:dateTime', minOccurs: '0' }
      startDateBaseline: { type: 'xsd:dateTime', minOccurs: '0' }
      projectedEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      projectedEndDateBaseline: { type: 'xsd:dateTime', minOccurs: '0' }
      lastBaselineDate: { type: 'xsd:dateTime', minOccurs: '0' }
      jobType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      percentComplete: { type: 'xsd:double', minOccurs: '0' }
      estimatedCost: { type: 'xsd:double', minOccurs: '0' }
      estimatedRevenue: { type: 'xsd:double', minOccurs: '0' }
      estimatedTime: { type: 'platformCore:Duration', minOccurs: '0' }
      estimatedTimeOverride: { type: 'platformCore:Duration', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      emailPreference: { type: 'listRelTyp:EmailPreference', minOccurs: '0' }
      openingBalance: { type: 'xsd:double', minOccurs: '0' }
      openingBalanceDate: { type: 'xsd:dateTime', minOccurs: '0' }
      openingBalanceAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      jobBillingType: { type: 'listRelTyp:JobBillingType', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      jobItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      percentTimeComplete: { type: 'xsd:double', minOccurs: '0' }
      actualTime: { type: 'platformCore:Duration', minOccurs: '0' }
      allowTime: { type: 'xsd:boolean', minOccurs: '0' }
      timeRemaining: { type: 'platformCore:Duration', minOccurs: '0' }
      limitTimeToAssignees: { type: 'xsd:boolean', minOccurs: '0' }
      estimatedLaborCost: { type: 'xsd:double', minOccurs: '0' }
      estimatedLaborCostBaseline: { type: 'xsd:double', minOccurs: '0' }
      estimateRevRecTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      estimatedLaborRevenue: { type: 'xsd:double', minOccurs: '0' }
      estimatedGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      estimatedGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      allowAllResourcesForTasks: { type: 'xsd:boolean', minOccurs: '0' }
      jobPrice: { type: 'xsd:double', minOccurs: '0' }
      isUtilizedTime: { type: 'xsd:boolean', minOccurs: '0' }
      isProductiveTime: { type: 'xsd:boolean', minOccurs: '0' }
      isExemptTime: { type: 'xsd:boolean', minOccurs: '0' }
      materializeTime: { type: 'xsd:boolean', minOccurs: '0' }
      allowExpenses: { type: 'xsd:boolean', minOccurs: '0' }
      allocatePayrollExpenses: { type: 'xsd:boolean', minOccurs: '0' }
      includeCrmTasksInTotals: { type: 'xsd:boolean', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCommonTyp:GlobalSubscriptionStatus', minOccurs: '0' }
      jobResourcesList: { type: 'listRel:JobResourcesList', minOccurs: '0' }
      addressbookList: { type: 'listRel:JobAddressbookList', minOccurs: '0' }
      milestonesList: { type: 'listRel:JobMilestonesList', minOccurs: '0' }
      creditCardsList: { type: 'listRel:JobCreditCardsList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  JobAddressbook:
    elements:
      defaultShipping: { type: 'xsd:boolean', minOccurs: '0' }
      defaultBilling: { type: 'xsd:boolean', minOccurs: '0' }
      isResidential: { type: 'xsd:boolean', minOccurs: '0' }
      label: { type: 'xsd:string', minOccurs: '0' }
      attention: { type: 'xsd:string', minOccurs: '0' }
      addressee: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      addr1: { type: 'xsd:string', minOccurs: '0' }
      addr2: { type: 'xsd:string', minOccurs: '0' }
      addr3: { type: 'xsd:string', minOccurs: '0' }
      city: { type: 'xsd:string', minOccurs: '0' }
      zip: { type: 'xsd:string', minOccurs: '0' }
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      addrText: { type: 'xsd:string', minOccurs: '0' }
      override: { type: 'xsd:boolean', minOccurs: '0' }
      internalId: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
  JobAddressbookList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      addressbook: { type: 'listRel:JobAddressbook', minOccurs: '0', maxOccurs: 'unbounded' }
  JobResources:
    elements:
      jobResource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      role: { type: 'platformCore:RecordRef', minOccurs: '0' }
  JobResourcesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      jobResources: { type: 'listRel:JobResources', minOccurs: '0', maxOccurs: 'unbounded' }
  JobMilestones:
    elements:
      milestoneName: { type: 'xsd:string', minOccurs: '0' }
      milestoneOrder: { type: 'xsd:string', minOccurs: '0' }
      milestoneEstComplete: { type: 'xsd:dateTime', minOccurs: '0' }
      milestoneCompleted: { type: 'xsd:boolean', minOccurs: '0' }
      milestoneComments: { type: 'xsd:string', minOccurs: '0' }
  JobMilestonesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      milestones: { type: 'listRel:JobMilestones', minOccurs: '0', maxOccurs: 'unbounded' }
  JobCreditCards:
    elements:
      internalId: { type: 'xsd:string', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ccMemo: { type: 'xsd:string', minOccurs: '0' }
      ccDefault: { type: 'xsd:boolean', minOccurs: '0' }
      debitCardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      validFrom: { type: 'xsd:dateTime', minOccurs: '0' }
  JobCreditCardsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      creditCards: { type: 'listRel:JobCreditCards', minOccurs: '0', maxOccurs: 'unbounded' }
  JobSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:JobSearchBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      projectTaskJoin: { type: 'platformCommon:ProjectTaskSearchBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchBasic', minOccurs: '0' }
  JobSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:JobSearch', minOccurs: '0' }
      columns: { type: 'listRel:JobSearchRow', minOccurs: '0' }
  JobSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:JobSearchRowBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      projectTaskJoin: { type: 'platformCommon:ProjectTaskSearchRowBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchRowBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchRowBasic', minOccurs: '0' }
  JobType:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  JobStatus:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CustomerStatusSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CustomerStatusSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  CustomerStatusSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:CustomerStatusSearch', minOccurs: '0' }
      columns: { type: 'listRel:CustomerStatusSearchRow', minOccurs: '0' }
  CustomerStatusSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CustomerStatusSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  JobStatusSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:JobStatusSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  JobStatusSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:JobStatusSearch', minOccurs: '0' }
      columns: { type: 'listRel:JobStatusSearchRow', minOccurs: '0' }
  JobStatusSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:JobStatusSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  JobTypeSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:JobTypeSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  JobTypeSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listRel:JobTypeSearch', minOccurs: '0' }
      columns: { type: 'listRel:JobTypeSearchRow', minOccurs: '0' }
  JobTypeSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:JobTypeSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  OriginatingLeadSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:OriginatingLeadSearchBasic', minOccurs: '0' }
  OriginatingLeadSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:OriginatingLeadSearchRowBasic', minOccurs: '0' }
  CustomerCurrency:
    elements:
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      consolBalance: { type: 'xsd:double', minOccurs: '0' }
      depositBalance: { type: 'xsd:double', minOccurs: '0' }
      consolDepositBalance: { type: 'xsd:double', minOccurs: '0' }
      overdueBalance: { type: 'xsd:double', minOccurs: '0' }
      consolOverdueBalance: { type: 'xsd:double', minOccurs: '0' }
      unbilledOrders: { type: 'xsd:double', minOccurs: '0' }
      consolUnbilledOrders: { type: 'xsd:double', minOccurs: '0' }
  CustomerCurrencyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      currency: { type: 'listRel:CustomerCurrency', minOccurs: '0', maxOccurs: 'unbounded' }
