exports.complexTypes =
  ShipAddress:
    elements:
      shipAttention: { type: 'xsd:string', minOccurs: '0' }
      shipAddressee: { type: 'xsd:string', minOccurs: '0' }
      shipPhone: { type: 'xsd:string', minOccurs: '0' }
      shipAddr1: { type: 'xsd:string', minOccurs: '0' }
      shipAddr2: { type: 'xsd:string', minOccurs: '0' }
      shipAddr3: { type: 'xsd:string', minOccurs: '0' }
      shipCity: { type: 'xsd:string', minOccurs: '0' }
      shipState: { type: 'xsd:string', minOccurs: '0' }
      shipZip: { type: 'xsd:string', minOccurs: '0' }
      shipCountry: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      shipIsResidential: { type: 'xsd:boolean', minOccurs: '0' }
  BillAddress:
    elements:
      billAttention: { type: 'xsd:string', minOccurs: '0' }
      billAddressee: { type: 'xsd:string', minOccurs: '0' }
      billPhone: { type: 'xsd:string', minOccurs: '0' }
      billAddr1: { type: 'xsd:string', minOccurs: '0' }
      billAddr2: { type: 'xsd:string', minOccurs: '0' }
      billAddr3: { type: 'xsd:string', minOccurs: '0' }
      billCity: { type: 'xsd:string', minOccurs: '0' }
      billState: { type: 'xsd:string', minOccurs: '0' }
      billZip: { type: 'xsd:string', minOccurs: '0' }
      billCountry: { type: 'platformCommonTyp:Country', minOccurs: '0' }
  PresentationItem:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemType: { type: 'platformCommonTyp:PresentationItemType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      onlinePrice: { type: 'xsd:double', minOccurs: '0' }
      basePrice: { type: 'xsd:double', minOccurs: '0' }
  Partners:
    elements:
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      partnerRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  LandedCost:
    elements:
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      source: { type: 'platformCommonTyp:LandedCostSource', minOccurs: '0' }
      transaction: { type: 'platformCore:RecordRef', minOccurs: '0' }
  CustomerSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  TimeItem:
    elements:
      id: { type: 'xsd:long', minOccurs: '0' }
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      timeType: { type: 'platformCommonTyp:TimeItemTimeType', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      payrollItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      temporaryLocalJurisdiction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      temporaryStateJurisdiction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      hours: { type: 'platformCore:Duration', minOccurs: '0' }
      hoursTotal: { type: 'platformCore:Duration', minOccurs: '0' }
      caseTaskEvent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      isUtilized: { type: 'xsd:boolean', minOccurs: '0' }
      isProductive: { type: 'xsd:boolean', minOccurs: '0' }
      isExempt: { type: 'xsd:boolean', minOccurs: '0' }
  InventoryDetail:
    base: 'platformCore:Record'
    elements:
      inventoryAssignmentList: { type: 'platformCommon:InventoryAssignmentList', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
  InventoryAssignmentList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'false' }
    elements:
      inventoryAssignment: { type: 'platformCommon:InventoryAssignment', minOccurs: '0', maxOccurs: 'unbounded' }
  InventoryAssignment:
    elements:
      internalId: { type: 'xsd:string', minOccurs: '0' }
      issueInventoryNumber: { type: 'platformCore:RecordRef', minOccurs: '0' }
      receiptInventoryNumber: { type: 'xsd:string', minOccurs: '0' }
      binNumber: { type: 'platformCore:RecordRef', minOccurs: '0' }
      toBinNumber: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:boolean', minOccurs: '0' }
  InventoryDetailSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      binNumber: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      inventoryNumber: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      quantity: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
  InventoryDetailSearchRowBasic:
    elements:
      binNumber: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      inventoryNumber: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantity: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
  EntitySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressLabel: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      attention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      comments: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      county: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      entityId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fax: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giveAccess: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      image: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isDefaultBilling: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultShipping: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      language: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      level: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      permission: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phoneticName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      type: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      zipCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  EntitySearchRowBasic:
    elements:
      address: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressInternalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressLabel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      attention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billZipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      comments: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      countryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityNumber: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fax: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      globalSubscriptionStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      image: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultBilling: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultShipping: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      language: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      level: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      permission: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phoneticName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscription: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionStatus: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      zipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  ContactSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressLabel: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      attention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      availableOffline: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      comments: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      company: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      contactRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      county: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      employer: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      entityId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fax: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      firstName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giveAccess: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      group: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      hasDuplicates: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      image: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isDefaultBilling: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultShipping: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPrivate: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      language: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      level: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      middleName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      permission: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phoneticName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      salutation: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      type: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      zipCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  ContactSearchRowBasic:
    elements:
      address: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressInternalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressLabel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      attention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      availableOffline: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billZipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      comments: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      company: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      contactRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      countryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityNumber: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fax: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giveAccess: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      globalSubscriptionStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      hasDuplicates: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      homePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      image: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultBilling: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultShipping: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      language: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      level: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      middleName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      mobilePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      permission: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phoneticName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      salutation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscription: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionStatus: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      zipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  CustomerSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      accountNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressLabel: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      attention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      availableOffline: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      balance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      billAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      boughtAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      boughtDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      buyingReason: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      buyingTimeFrame: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      ccCustomerCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ccDefault: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      ccExpDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      ccHolderName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ccNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ccType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      classBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      comments: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      companyName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      consolBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      consolDaysOverdue: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      consolDepositBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      consolOverdueBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      consolUnbilledOrders: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      contact: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      contribution: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      conversionDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      county: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      creditHold: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      creditHoldOverride: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      creditLimit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      currency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      custStage: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      custStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      dateClosed: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      daysOverdue: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      depositBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      deptBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      emailPreference: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      emailTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      entityId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      entityStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      estimatedBudget: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      explicitConversion: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fax: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      faxTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      firstName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      firstOrderDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      firstSaleDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      fxBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxConsolBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxConsolUnbilledOrders: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxUnbilledOrders: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      giveAccess: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      group: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      groupPricingLevel: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      hasDuplicates: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      image: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isBudgetApproved: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultBilling: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultShipping: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPerson: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isReportedLead: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isShipAddress: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      itemPricingLevel: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      itemPricingUnitPrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      itemsBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      itemsOrdered: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      language: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      lastOrderDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastSaleDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      leadDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      leadSource: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      level: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      locationBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      manualCreditHold: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      merchantAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      middleName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      monthlyClosing: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      onCreditHold: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      orderedAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      orderedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      otherRelationships: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      overdueBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      parentItemsBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      parentItemsOrdered: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerContribution: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      partnerRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerTeamMember: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      pec: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      permission: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phoneticName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      priceLevel: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      pricingItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      printTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      prospectDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      pstExempt: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      receivablesAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      reminderDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      resaleNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      role: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesReadiness: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesRep: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesTeamMember: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesTeamRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salutation: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipComplete: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      shippingItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      stage: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      taxable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      terms: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      territory: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      unbilledOrders: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      url: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      vatRegNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      webLead: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      zipCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  CustomerSearchRowBasic:
    elements:
      accountNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressInternalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressLabel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altContact: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      attention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      availableOffline: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      balance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billZipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      buyingReason: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      buyingTimeFrame: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccCustomerCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccDefault: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccExpDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccHolderName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccInternalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      comments: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      companyName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      consolBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      consolDaysOverdue: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      consolDepositBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      consolOverdueBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      consolUnbilledOrders: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      contribution: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      contributionPrimary: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      conversionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      countryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      creditHold: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      creditHoldOverride: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      creditLimit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      currency: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateClosed: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysOverdue: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      depositBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      emailPreference: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      emailTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityNumber: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedBudget: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      explicitConversion: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fax: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      faxTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstOrderDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstSaleDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxConsolBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxConsolUnbilledOrders: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxUnbilledOrders: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      giveAccess: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      globalSubscriptionStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      groupPricingLevel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      hasDuplicates: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      homePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      image: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isBudgetApproved: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultBilling: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultShipping: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isPerson: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isShipAddress: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      itemPricingLevel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      itemPricingUnitPrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobEndDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobProjectedEnd: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobStartDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      language: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastOrderDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastSaleDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      leadDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      leadSource: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      level: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      manualCreditHold: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      middleName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      mobilePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      monthlyClosing: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      onCreditHold: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      overdueBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerContribution: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerRole: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerTeamMember: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      pec: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      permission: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phoneticName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      prefCCProcessor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      priceLevel: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      pricingGroup: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      pricingItem: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      printTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      prospectDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      receivablesAccount: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      reminderDays: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      resaleNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      role: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesReadiness: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesRep: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTeamMember: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTeamRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salutation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipComplete: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shippingItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      stage: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscription: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionStatus: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      terms: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      territory: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      unbilledOrders: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      url: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      vatRegNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      webLead: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      zipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  CalendarEventSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      attendee: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      calendar: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      completedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      instanceStart: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isUpcomingEvent: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      location: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      message: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      organizer: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      resource: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      response: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      status: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  CalendarEventSearchRowBasic:
    elements:
      attendee: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      company: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      completedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      endTime: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      instanceEnd: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      instanceStart: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      markdone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      organizer: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      recurrence: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      resource: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      response: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      startTime: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      transaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  TaskSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      actualTime: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      assigned: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      company: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      completedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      contact: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      estimatedTime: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedTimeOverride: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isJobSummaryTask: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isJobTask: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPrivate: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      milestone: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      percentComplete: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      percentTimeComplete: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      priority: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      status: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      timeRemaining: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  TaskSearchRowBasic:
    elements:
      accessLevel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      actualTime: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      assigned: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      company: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      completedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      dueDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedTime: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedTimeOverride: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isJobSummaryTask: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isJobTask: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      markdone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      milestone: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      order: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      percentComplete: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      percentTimeComplete: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      priority: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      startTime: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      timeRemaining: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      transaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  OpportunitySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      amount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      availableOffline: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      buyingReason: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      buyingTimeFrame: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      class: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      closeDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      competitor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      contribution: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      currency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      custType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      daysOpen: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      daysToClose: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      department: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      entity: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      entityStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      estimatedBudget: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      expectedCloseDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      forecastType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      foreignProjectedAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      foreignRangeHigh: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      foreignRangeLow: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxTranCostEstimate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isBudgetApproved: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      leadSource: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      memo: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      number: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      partner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerContribution: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      partnerRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerTeamMember: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriodRelative: { type: 'platformCommonTyp:PostingPeriodDate', minOccurs: '0' }
      probability: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      projAltSalesAmt: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      projectedTotal: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      rangeHigh: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      rangeHighAlt: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      rangeLow: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      rangeLowAlt: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      salesReadiness: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesRep: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesTeamMember: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesTeamRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      status: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      taxPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxPeriodRelative: { type: 'platformCommonTyp:PostingPeriodDate', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      tranCostEstimate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      tranDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      tranEstGrossProfit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      tranEstGrossProfitPct: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      tranFxEstGrossProfit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      tranId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      winLossReason: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      wonBy: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  OpportunitySearchRowBasic:
    elements:
      actionItem: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      availableOffline: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      buyingReason: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      buyingTimeFrame: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      class: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      closeDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      competitor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      contribution: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      contributionPrimary: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      currency: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      custType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysOpen: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysToClose: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      decisionMaker: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      department: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      entity: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedBudget: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      expectedCloseDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      forecastType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      foreignProjectedAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      foreignRangeHigh: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      foreignRangeLow: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxTranCostEstimate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isBudgetApproved: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      leadSource: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      memo: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      partner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerContribution: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerTeamMember: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      period: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      probability: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      projAltSalesAmt: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      projectedTotal: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      rangeHigh: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      rangeHighAlt: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      rangeLow: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      rangeLowAlt: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesReadiness: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesRep: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTeamMember: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTeamRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxPeriod: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      total: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranCostEstimate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranEstGrossProfit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranEstGrossProfitPct: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranFxEstGrossProfit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      weightedTotal: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      winLossReason: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      wonBy: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  EmployeeSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressLabel: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      alienNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      anniversary: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      approvalLimit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      approver: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      attention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      authWorkDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      billAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billingClass: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      birthDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      birthDay: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      cContribution: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      class: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      comments: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      commissionPlan: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      concurrentWebServicesUser: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      county: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      deduction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      department: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      earning: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      education: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      eligibleForCommission: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      employeeStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      employeeType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      employeeTypeKpi: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      entityId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ethnicity: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      expenseLimit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fax: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      firstName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      gender: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      giveAccess: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      group: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      hireDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      I9Verified: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      image: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isDefaultBilling: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultShipping: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isJobResource: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isTemplate: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      jobDescription: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      laborCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      language: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      lastPaidDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastReviewDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      level: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      maritalStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      middleName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      nextReviewDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      offlineAccess: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      payFrequency: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      permChangeDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      permission: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      permissionChange: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phoneticName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      primaryEarningAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      primaryEarningItem: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      primaryEarningType: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      purchaseOrderApprovalLimit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      purchaseOrderApprover: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      purchaseOrderLimit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      releaseDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      residentStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      role: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      roleChange: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      roleChangeDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      salesRep: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      salesRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salutation: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      socialSecurityNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      supervisor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      supportRep: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      timeApprover: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      type: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      usePerquest: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      useTimeData: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      visaExpDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      visaType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      withholding: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      workCalendar: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      workplace: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      zipCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  EmployeeSearchRowBasic:
    elements:
      accountNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressInternalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressLabel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      alienNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      approvalLimit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      approver: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      attention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      authWorkDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billingClass: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billZipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      birthDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      birthDay: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      class: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      comments: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      concurrentWebServicesUser: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      countryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      department: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      eligibleForCommission: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      employeeStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      employeeType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityNumber: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      ethnicity: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      expenseLimit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fax: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      gender: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      giveAccess: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      globalSubscriptionStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      hireDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      homePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      i9Verified: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      image: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultBilling: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultShipping: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isJobResource: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isSalesRep: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isSupportRep: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isTemplate: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      laborCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      language: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastPaidDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastReviewDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      level: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      maritalStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      middleName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      mobilePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      nextReviewDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      offlineAccess: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      payFrequency: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      permChangeDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      permChangeLevel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      permission: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      permissionChange: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phoneticName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      primaryEarningAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      primaryEarningItem: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      primaryEarningType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      purchaseOrderApprovalLimit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      purchaseOrderApprover: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      purchaseOrderLimit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      releaseDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      residentStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      role: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      roleChange: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      roleChangeAction: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      roleChangeDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salutation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      socialSecurityNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscription: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionStatus: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      supervisor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      timeApprover: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      usePerquest: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      useTimeData: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      visaExpDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      visaType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      workCalendar: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      workplace: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      zipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  PhoneCallSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      assigned: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      company: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      completedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      contact: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      createdBy: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isPrivate: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      priority: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      status: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  PhoneCallSearchRowBasic:
    elements:
      accessLevel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      assigned: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      company: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      completedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      markdone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      priority: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      startTime: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      transaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  SupportCaseSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      assigned: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      awaitingReply: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      caseNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      closedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      company: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      contact: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      escalateTo: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      helpDesk: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      inboundEmail: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      issue: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      lastMessage: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastReopenedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      locked: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      message: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      messageAuthor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      messageDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      messageType: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      module: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      number: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      origin: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      priority: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      product: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      serialNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      stage: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      status: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  SupportCaseSearchRowBasic:
    elements:
      assigned: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      awaitingReply: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      company: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      customerStage: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      escalatee: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      helpDesk: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      inboundEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      issue: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      issueNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastMessageDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastReopenedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      locked: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      module: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      origin: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      priority: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      product: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      serialNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      stage: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  MessageSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      author: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      authorEmail: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      bcc: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      cc: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      hasAttachment: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      internalOnly: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      message: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      messageDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      messageType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      recipient: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      recipientEmail: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subject: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  MessageSearchRowBasic:
    elements:
      author: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      authorEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      bcc: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      cc: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      hasAttachment: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalOnly: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isEmailed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isIncoming: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      messageDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      messageType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      recipient: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      recipientEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subject: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  NoteSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      author: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      direction: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      note: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      noteDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      noteType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  NoteSearchRowBasic:
    elements:
      author: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      direction: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      note: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      noteDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      noteType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      recType: { type: 'platformCore:RecordRef' }
      availableOffline: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      created: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      id: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModified: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastModifiedBy: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  CustomRecordSearchRowBasic:
    elements:
      recType: { type: 'platformCore:RecordRef' }
      altName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      availableOffline: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      created: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      id: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModified: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedBy: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  AccountSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      balance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      cashFlowRateType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      category1099Misc: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      generalRateType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      number: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      type: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  AccountSearchRowBasic:
    elements:
      balance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      cashFlowRateType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      category1099Misc: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      generalRateType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      number: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  RevRecScheduleSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      amount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      defRev: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      entity: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      incomeAcct: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      jeDoc: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      name: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      postPeriod: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      srcDoc: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      srcDocDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      srcTranPostPeriod: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  RevRecScheduleSearchRowBasic:
    elements:
      amount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      defRev: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      incomeAcct: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      jeDoc: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      jeDocUrl: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      nameUrl: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      postPeriod: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      srcDoc: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      srcDocLine: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  RevRecTemplateSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      amorMethod: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      amorPeriod: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      amorStartOffset: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      amorTermSrc: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      amorType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      contraAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      deferralAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      periodOffset: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      targetAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      useForeignAmounts: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
  RevRecTemplateSearchRowBasic:
    elements:
      amorInactive: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      amorMethod: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      amorPeriod: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      amorStartOffset: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      amorTermSrc: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      amorType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      contraAccount: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      deferralAccount: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      periodOffset: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      targetAccount: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      useForeignAmounts: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
  BinSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      binNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      inactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      memo: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  BinSearchRowBasic:
    elements:
      binNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      inactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      memo: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  DepartmentSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      nameNoHierarchy: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  DepartmentSearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      nameNoHierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  LocationSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      county: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isOffice: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      makeInventoryAvailable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      makeInventoryAvailableStore: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      nameNoHierarchy: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      tranprefix: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      zip: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  LocationSearchRowBasic:
    elements:
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isOffice: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      makeInventoryAvailable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      makeInventoryAvailableStore: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      nameNoHierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranPrefix: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      zip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  ClassificationSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      nameNoHierarchy: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  ClassificationSearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      nameNoHierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  TransactionSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      account: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      accountType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      actualShipDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      altSalesAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      altSalesNetAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      amount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      amountPaid: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      amountRemaining: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      amountUnbilled: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      anyLineItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      appliedToForeignAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      appliedToIsFxVariance: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      appliedToLinkAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      appliedToLinkType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      appliedToTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      applyingForeignAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      applyingIsFxVariance: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      applyingLinkAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      applyingLinkType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      applyingTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      approvalStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      authCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      avsStreetMatch: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      avsZipMatch: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      billable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      billAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billAddressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billAttention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billCity: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billCountry: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      billCounty: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      billingStatus: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      billingTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      billPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billState: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billVarianceStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      billZip: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      binNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      binNumberQuantity: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      buildEntireAssembly: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      buildVariance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      built: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      ccCustomerCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ccExpireDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      ccName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ccNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      class: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      cleared: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      closed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      closeDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      cogs: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      commissionEffectiveDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      commit: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      confirmationNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      contribution: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      costComponentAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costComponentCategory: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      costComponentItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      costComponentQuantity: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costComponentStandardCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costEstimate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costEstimateRate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costEstimateType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      createdBy: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      createdFrom: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      creditAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      cscMatch: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      currency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customerSubOf: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customForm: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      custType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      daysOpen: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      daysOverdue: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      debitAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      deferredRevenue: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      deferRevRec: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      department: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      depositDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      depositTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      dueDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      employee: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      entity: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      entityStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      estGrossProfit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estGrossProfitPct: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      exchangeRate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      excludeCommission: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      expectedCloseDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      expectedReceiptDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      expenseCategory: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      expenseDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      finChrg: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      forecastType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      fulfillingTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      fxAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxCostEstimate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxCostEstimateRate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxEstGrossProfit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxTranCostEstimate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxVsoeAllocation: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxVsoeAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      fxVsoePrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoAvailabelToCharge: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      gcoAvailableToRefund: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      gcoAvsStreetMatch: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      gcoAvsZipMatch: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      gcoBuyerAccountAge: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      gcoBuyerIp: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      gcoChargeAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoChargebackAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoConfirmedChargedTotal: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoConfirmedRefundedTotal: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoCreditcardNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      gcoCscMatch: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      gcoFinancialState: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      gcoFulfillmentState: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      gcoOrderId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      gcoOrderTotal: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoPromotionAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoPromotionName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      gcoRefundAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoShippingTotal: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      gcoStateChangedDetail: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giftCertificate: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      grossAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      includeInForecast: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      intercoStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      intercoTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      inVsoeBundle: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isAllocation: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isGcoChargeback: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isGcoChargeConfirmed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isGcoPaymentGuaranteed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isGcoRefundConfirmed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isIntercompanyAdjustment: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPayPalMeth: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isReversal: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isRevRecTransaction: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isShipAddress: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isTransferPriceCosting: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isVsoeAlloc: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      itemSubOf: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      leadSource: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      mainLine: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      mainName: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      matchBillToReceipt: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      memo: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      memoMain: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      memorized: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      merchantAccount: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      message: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      multiSubsidiary: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      nameText: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      netAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      nextApprover: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      nextBillDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      number: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      opportunity: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      otherRefNum: { type: 'platformCore:SearchTextNumberField', minOccurs: '0' }
      otherRefNumNonDeposit: { type: 'platformCore:SearchTextNumberField', minOccurs: '0' }
      packageCount: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      paidTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      partner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerContribution: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      partnerRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerTeamMember: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      payingTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      paymentEventDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      paymentEventHoldReason: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      paymentEventResult: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      paymentEventType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      payPalPending: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      payPalStatus: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      payPalTranId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      pnRefNum: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      poAsText: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      posting: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriodRelative: { type: 'platformCommonTyp:PostingPeriodDate', minOccurs: '0' }
      priceLevel: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      printedPickingTicket: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      probability: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      projectedAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      promoCode: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      purchaseOrder: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      quantity: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityBilled: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityCommitted: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityPacked: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityPicked: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityRevCommitted: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityShipRecv: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      recognizedRevenue: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      recordType: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      revCommitStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      revCommittingStatus: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      revCommittingTransaction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      revenueStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      reversalDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      reversalNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      revRecEndDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      revRecOnRevCommitment: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      revRecStartDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      revRecTermInMonths: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      salesEffectiveDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      salesOrder: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesRep: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesTeamMember: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesTeamRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      serialNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      serialNumberCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      serialNumberCostAdjustment: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      serialNumberQuantity: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      serialNumbers: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipAddressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipAttention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipCity: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipComplete: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      shipCountry: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      shipCounty: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      shipGroup: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      shipMethod: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      shipPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipping: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      shipRecvStatus: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      shipRecvStatusLine: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      shipState: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      shipTo: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      shipZip: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      source: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      status: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      taxItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      taxLine: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      taxPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxPeriodRelative: { type: 'platformCommonTyp:PostingPeriodDate', minOccurs: '0' }
      taxRate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      terms: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      toBeEmailed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      toBePrinted: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      toSubsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      totalAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      trackingNumbers: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      tranCostEstimate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      tranDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      tranEstGrossProfit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      tranEstGrossProfitPct: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      tranFxEstGrossProfit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      tranId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      tranIsVsoeBundle: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      transactionDiscount: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      transactionLineType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      transferLocation: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      transferOrderQuantityCommitted: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      transferOrderQuantityPacked: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      transferOrderQuantityPicked: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      transferOrderQuantityReceived: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      transferOrderQuantityShipped: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      type: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      unit: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      unitCostOverride: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      vendType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      visibleToCustomer: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      voided: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      vsoeAllocation: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      vsoeAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      vsoeDelivered: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      vsoePrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      webSite: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  TransactionSearchRowBasic:
    elements:
      abbrev: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      account: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      accountType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      actualShipDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      altSalesAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      altSalesNetAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      amount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      amountPaid: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      amountRemaining: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      amountUnbilled: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      appliedToForeignAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      appliedToIsFxVariance: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      appliedToLinkAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      appliedToLinkType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      appliedToTransaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      applyingForeignAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      applyingIsFxVariance: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      applyingLinkAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      applyingLinkType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      applyingTransaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      approvalStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      authCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      avsStreetMatch: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      avsZipMatch: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      billingAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      billingSchedule: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billingTransaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billVarianceStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      binNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      binNumberQuantity: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      buildEntireAssembly: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      buildVariance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      built: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccCustomerCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccExpDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccHolderName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccStreet: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccZipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      class: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      cleared: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      closed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      closeDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      cogsAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      commissionEffectiveDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      commit: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      confirmationNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      contribution: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      contributionPrimary: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costComponentAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costComponentCategory: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      costComponentItem: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      costComponentQuantity: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costComponentStandardCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costEstimate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costEstimateRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costEstimateType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdBy: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdFrom: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      creditAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      cscMatch: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      currency: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customForm: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      custType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysOpen: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysOverdue: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      debitAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      deferredRevenue: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      deferRevRec: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      department: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      depositDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      depositTransaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      discountAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      dueDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      effectiveRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      entity: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      estGrossProfit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estGrossProfitPct: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estGrossProfitPercent: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      exchangeRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      excludeCommission: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      expectedCloseDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      expectedReceiptDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      expenseCategory: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      expenseDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      forecastType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fulfillingTransaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxCostEstimate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxCostEstimateRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxEstGrossProfit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxTranCostEstimate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxVsoeAllocation: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxVsoeAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxVsoePrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoAvailabelToCharge: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoAvailableToRefund: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoAvsStreetMatch: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoAvsZipMatch: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoBuyerAccountAge: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoBuyerIp: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoChargeAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoChargebackAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoConfirmedChargedTotal: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoConfirmedRefundedTotal: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoCreditcardNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoCscMatch: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoFinancialState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoFulfillmentState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoOrderId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoOrderTotal: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoPromotionAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoPromotionName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoRefundAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoShippingTotal: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcoStateChangedDetail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCert: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      grossAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      includeInForecast: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      intercoStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      intercoTransaction: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      inVsoeBundle: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isAllocation: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isGcoChargeback: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isGcoChargeConfirmed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isGcoPaymentGuaranteed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isGcoRefundConfirmed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isIntercompanyAdjustment: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isReversal: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isRevRecTransaction: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isShipAddress: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isTransferPriceCosting: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      leadSource: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      line: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      lineSequenceNumber: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      mainLine: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      mainName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      matchBillToReceipt: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      memo: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      memoMain: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      memorized: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      merchantAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      multiSubsidiary: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      netAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      netAmountNoTax: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      nextApprover: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      nextBillDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      opportunity: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      options: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      originator: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      otherRefNum: { type: 'platformCore:SearchColumnTextNumberField', minOccurs: '0', maxOccurs: 'unbounded' }
      packageCount: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      paidAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      paidTransaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerContribution: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerTeamMember: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      payingAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      payingTransaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      paymentEventDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      paymentEventHoldReason: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      paymentEventResult: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      paymentEventType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      paymentMethod: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      payPalPending: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      payPalStatus: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      payPalTranId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      payrollBatch: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      pnRefNum: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      poRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      posting: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      postingPeriod: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      priceLevel: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      print: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      probability: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      projectedAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      promoCode: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      purchaseOrder: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantity: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityBilled: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityCommitted: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityPacked: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityPicked: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityRevCommitted: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityShipRecv: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityUom: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      rate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      realizedGainPostingTransaction: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      recognizedRevenue: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      recordType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      revCommitStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      revCommittingTransaction: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      revenueStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      reversalDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      reversalNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      revRecEndDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      revRecOnRevCommitment: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      revRecStartDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      rgAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      rgAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesEffectiveDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesOrder: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesRep: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTeamMember: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTeamRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      serialNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      serialNumberCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      serialNumberCostAdjustment: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      serialNumberQuantity: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      serialNumbers: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipComplete: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipGroup: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipMethod: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shippingAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipRecvStatusLine: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipTo: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      signedAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      source: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxCode: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxLine: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxPeriod: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxTotal: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      termInMonths: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      terms: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      toBeEmailed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      toBePrinted: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      toSubsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      total: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      totalCostEstimate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      trackingNumbers: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranEstGrossProfit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranFxEstGrossProfit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranIsVsoeBundle: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      transactionDiscount: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      transactionLineType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      transferLocation: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      transferOrderItemLine: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      transferOrderQuantityCommitted: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      transferOrderQuantityPacked: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      transferOrderQuantityPicked: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      transferOrderQuantityReceived: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      transferOrderQuantityShipped: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      unit: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      unitCostOverride: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      visibleToCustomer: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoeAllocation: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoeAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoeDeferral: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoeDelivered: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoePermitDiscount: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoePrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      webSite: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  ItemSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      account: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      atpLeadTime: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      atpMethod: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      autoLeadTime: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      autoPreferredStockLevel: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      autoReorderPoint: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      availableToPartners: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      averageCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      binNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      binOnHandAvail: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      binOnHandCount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      buildEntireAssembly: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      buildTime: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      buyItNowPrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      caption: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      class: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      component: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      componentOf: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      copyDescription: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      correlatedItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      correlatedItemCorrelation: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      correlatedItemCount: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      correlatedItemLift: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      correlatedItemPurchaseRate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      cost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costCategory: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      costEstimate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costEstimateType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      costingMethod: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      created: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      createJob: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      dateViewed: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      daysBeforeExpiration: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      defaultReturnCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      demandModifier: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      demandSource: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      department: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      displayIneBayStore: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      displayName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      dontShowPrice: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      eBayItemDescription: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      eBayItemSubtitle: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      eBayItemTitle: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ebayRelistingOption: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      endAuctionsWhenOutOfStock: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      excludeFromSitemap: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      featuredDescription: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      feedDescription: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      feedName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fixedLotSize: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      froogleProductFeed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      fxCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      giftCertAuthCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giftCertEmail: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giftCertExpDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      giftCertFrom: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giftCertMsg: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giftCertOrigAmt: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giftCertRecipient: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      imageUrl: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      inventoryLocation: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      isAvailable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDropShipItem: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isFulfillable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isGcoCompliant: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isLotItem: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isOnline: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPreferredVendor: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isSerialItem: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isSpecialOrderItem: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isSpecialWorkOrderItem: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      issueProduct: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      isTaxable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isVsoeBundle: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      itemId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      itemUrl: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastPurchasePrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      lastQuantityAvailableChange: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      leadTime: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      listingDuration: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      locationAtpLeadTime: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationAverageCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationDefaultReturnCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationDemandSource: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      locationFixedLotSize: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationPreferredStockLevel: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationQuantityAvailable: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationQuantityBackOrdered: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationQuantityCommitted: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationQuantityInTransit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationQuantityOnHand: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationQuantityOnOrder: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationReorderPoint: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      locationSupplyLotSizingMethod: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      locationSupplyType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      locationTotalValue: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      manufacturer: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      manufactureraddr1: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      manufacturerCity: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      manufacturerState: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      manufacturerTariff: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      manufacturerTaxId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      manufacturerZip: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      matchBillToReceipt: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      matrix: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      matrixChild: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      metaTagHtml: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      minimumQuantity: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      mpn: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      multManufactureAddr: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      nexTagCategory: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      nexTagProductFeed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      numActiveListings: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      numberAllowedDownloads: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      numCurrentlyListed: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      offerSupport: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      onlineCustomerPrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      onSpecial: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      otherVendor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      outOfStockBehavior: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      overallQuantityPricingType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      pageTitle: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      preferenceCriterion: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      preferredBin: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      preferredLocation: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      preferredStockLevel: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      preferredStockLevelDays: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      price: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      pricesIncludeTax: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      primaryCategory: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      quantityAvailable: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityBackOrdered: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityCommitted: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityOnHand: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityOnOrder: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      reorderMultiple: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      reorderPoint: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      reservePrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      safetyStockLevel: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      safetyStockLevelDays: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      salesDescription: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      saleUnit: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      scheduleBCode: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      scheduleBNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      scheduleBQuantity: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      searchKeywords: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      seasonalDemand: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      sellOnEBay: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      serialNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      serialNumberLocation: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      shipIndividually: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      shipPackage: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      shippingRate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      shoppingDotComCategory: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shoppingProductFeed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      shopzillaCategoryId: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      shopzillaProductFeed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      sitemapPriority: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      softDescriptor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      startingPrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      stockDescription: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      stockUnit: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      storeDescription: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      subType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      supplyType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      taxCode: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      thumbnailUrl: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      totalValue: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      trackLandedCost: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      transferPrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      type: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      unitsType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      upcCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      urlComponent: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      useBins: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      useMarginalRates: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      vendor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      vendorCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      vendorCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      vendorCostEntered: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      vendorName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      vsoeDelivered: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      vsoePrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      webSite: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      weight: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      yahooProductFeed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  ItemSearchRowBasic:
    elements:
      alternateDemandSourceItem: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      assetAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      atpLeadTime: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      atpMethod: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      autoLeadTime: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      autoPreferredStockLevel: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      autoReorderPoint: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      availableToPartners: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      averageCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      basePrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      billExchRateVarianceAcct: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPriceVarianceAcct: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billQtyVarianceAcct: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      binNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      binOnHandAvail: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      binOnHandCount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      buildEntireAssembly: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      buildTime: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      buyItNowPrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      categoryPreferred: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      class: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      copyDescription: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      correlatedItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      correlatedItemCorrelation: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      correlatedItemCount: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      correlatedItemLift: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      correlatedItemPurchaseRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      cost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costCategory: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      costEstimate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costEstimateType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      costingMethod: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      countryOfManufacture: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      created: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      createJob: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      custReturnVarianceAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateViewed: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysBeforeExpiration: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      defaultReturnCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      deferredExpenseAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      deferredRevenueAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      demandModifier: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      demandSource: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      department: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      departmentnohierarchy: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      displayIneBayStore: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      displayName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      dontShowPrice: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      eBayItemDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      eBayItemSubtitle: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      eBayItemTitle: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ebayRelistingOption: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      endAuctionsWhenOutOfStock: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      excludeFromSitemap: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      expenseAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      featuredDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      feedDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      feedName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      fixedLotSize: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      froogleProductFeed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      fxCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      gainLossAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCertAuthCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCertEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCertExpirationDate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCertFrom: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCertMessage: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCertOriginalAmount: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCertRecipient: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      hits: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      imageUrl: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      incomeAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      inventoryLocation: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isAvailable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDropShipItem: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isFulfillable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isGcoCompliant: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isLotItem: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isOnline: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isSerialItem: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isSpecialOrderItem: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isSpecialWorkOrderItem: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      issueProduct: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isTaxable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isVsoeBundle: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      itemId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      itemUrl: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastPurchasePrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastQuantityAvailableChange: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      leadTime: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      liabilityAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      listingDuration: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationAtpLeadTime: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationAverageCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationBinQuantityAvailable: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationDefaultReturnCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationDemandSource: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationFixedLotSize: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationPreferredStockLevel: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationQuantityAvailable: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationQuantityBackOrdered: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationQuantityCommitted: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationQuantityInTransit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationQuantityOnHand: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationQuantityOnOrder: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationReOrderPoint: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationSupplyLotSizingMethod: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationSupplyType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationTotalValue: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      manufacturer: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      manufacturerAddr1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      manufacturerCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      manufacturerState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      manufacturerTariff: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      manufacturerTaxId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      manufacturerZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      matchBillToReceipt: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      memberItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      memberQuantity: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      metaTagHtml: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      minimumQuantity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      modified: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      mpn: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      multManufactureAddr: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      nextagCategory: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      nextagProductFeed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      noPriceMessage: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      numActiveListings: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      numberAllowedDownloads: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      numCurrentlyListed: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      offerSupport: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      onlineCustomerPrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      onlinePrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      onSpecial: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      otherPrices: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      otherVendor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      outOfStockBehavior: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      outOfStockMessage: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      overallQuantityPricingType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      pageTitle: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      preferenceCriterion: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      preferredBin: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      preferredLocation: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      preferredStockLevel: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      preferredStockLevelDays: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      pricesIncludeTax: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      pricingGroup: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      primaryCategory: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      prodPriceVarianceAcct: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      prodQtyVarianceAcct: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      purchaseDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      purchasePriceVarianceAcct: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      purchaseUnit: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityAvailable: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityBackOrdered: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityCommitted: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityOnHand: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityOnOrder: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityPricingSchedule: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      reorderMultiple: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      reOrderPoint: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      reservePrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      revRecSchedule: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      safetyStockLevel: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      safetyStockLevelDays: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTaxCode: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      saleUnit: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      scheduleBCode: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      scheduleBNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      scheduleBQuantity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      searchKeywords: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      seasonalDemand: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      sellOnEBay: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      serialNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      serialNumberLocation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipIndividually: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPackage: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shippingRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      shoppingDotComCategory: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shoppingProductFeed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      shopzillaCategoryId: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      shopzillaProductFeed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      sitemapPriority: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      softDescriptor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      startingPrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      stockDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      stockUnit: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      storeDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      storeDetailedDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      storeDisplayImage: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      storeDisplayName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      storeDisplayThumbnail: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      supplyLotSizingMethod: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      supplyReplenishmentMethod: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      supplyType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxSchedule: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      thumbNailUrl: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      totalValue: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      trackLandedCost: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      transferPrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      unbuildVarianceAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      unitsType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      upcCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      urlComponent: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      useBins: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      useMarginalRates: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendorCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendorCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendorCostEntered: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendorName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendorSchedule: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendReturnVarianceAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoeDeferral: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoeDelivered: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoePermitDiscount: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      vsoePrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      webSite: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      weight: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      weightUnit: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      yahooProductFeed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  PartnerSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressLabel: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      assignTasks: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      attention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      class: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      comments: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      commissionPlan: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      county: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      department: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      eligibleForCommission: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      emailPreference: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      entityId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fax: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      firstName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giveAccess: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      group: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      hasDuplicates: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      image: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isDefaultBilling: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultShipping: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPerson: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      language: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      level: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      middleName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      otherRelationships: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      permission: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phoneticName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      promoCode: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salutation: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      URL: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      zipCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  PartnerSearchRowBasic:
    elements:
      address: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressInternalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressLabel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      assignTasks: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      attention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billZipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      class: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      comments: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      companyName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      countryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      department: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      eligibleForCommission: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      emailPreference: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityNumber: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fax: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giveAccess: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      globalSubscriptionStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      hasDuplicates: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      homePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      image: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultBilling: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultShipping: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isPerson: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      language: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      level: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      middleName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      mobilePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      permission: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phoneticName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      promoCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      salutation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscription: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionStatus: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      url: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      zipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  VendorSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      accountNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressLabel: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      attention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      balance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      billAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      comments: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      contact: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      county: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      creditLimit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      currency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      currentExchangeRate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      eligibleForCommission: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      emailPreference: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      emailTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      entityId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fax: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      faxTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      firstName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giveAccess: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      group: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      hasDuplicates: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      image: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      is1099Eligible: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultBilling: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultShipping: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isJobResourceVend: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPerson: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      laborCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      language: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      level: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      middleName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      otherRelationships: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      payablesAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      pec: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      permission: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phoneticName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      printTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      salutation: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipAddress: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      taxIdNum: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      unbilledOrders: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      url: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      vatRegNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      workCalendar: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      zipCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  VendorSearchRowBasic:
    elements:
      accountNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressInternalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressLabel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altContact: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      attention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      balance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billZipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      comments: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      companyName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      countryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      creditLimit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      currency: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      currentExchangeRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      eligibleForCommission: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      emailPreference: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      emailTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityNumber: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      expenseAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fax: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      faxTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      giveAccess: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      globalSubscriptionStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      hasDuplicates: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      homePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      image: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      is1099Eligible: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultBilling: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultShipping: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isJobResourceVend: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isPerson: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      laborCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      language: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      level: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      middleName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      mobilePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      payablesAccount: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      pec: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      permission: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phoneticName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      printOnCheckAs: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      printTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      salutation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscription: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionStatus: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxIdNum: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      terms: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      unbilledOrders: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      url: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      vatRegNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      workCalendar: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      zipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  SiteCategorySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      dateViewed: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      excludeFromSitemap: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      name: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      sitemapPriority: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
  SiteCategorySearchRowBasic:
    elements:
      dateViewed: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      excludeFromSitemap: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fullName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      hidden: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      hits: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      longDescription: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      pageTitle: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      sitemapPriority: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      urlComponent: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  TimeBillSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      approved: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      billable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      class: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customer: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      date: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      department: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      duration: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      employee: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      exempt: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      lastModified: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      memo: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      paidByPayroll: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      paidExternally: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      payItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      productive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      status: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      temporaryLocalJurisdiction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      temporaryStateJurisdiction: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      type: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      utilized: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  TimeBillSearchRowBasic:
    elements:
      break: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      class: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customer: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      date: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      department: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      durationDecimal: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      employee: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      endTime: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      hours: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isBillable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isExempt: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isProductive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isUtilized: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModified: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      memo: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      paidExternally: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      payItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      payrollDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      rate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      startTime: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      supervisorApproval: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      temporaryLocalJurisdiction: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      temporaryStateJurisdiction: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  SolutionSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      abstract: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      assigned: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      caseCount: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      code: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      find: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isOnline: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      number: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      status: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      topic: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  SolutionSearchRowBasic:
    elements:
      assigned: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseCount: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      displayOnline: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      previewref: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      solutionCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  TopicSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  TopicSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  SubsidiarySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      currency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fax: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isElimination: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      legalName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      nameNoHierarchy: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      taxIdNum: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      tranPrefix: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      url: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      zip: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  SubsidiarySearchRowBasic:
    elements:
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      anonymousCustomerInboundEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      anonymousCustomerOnlineForms: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseAssignmentTemplate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseAutomaticClosureTemplate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseCopyEmployeeTemplate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseCreationTemplate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseEscalationTemplate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseUpdateTemplate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      companyNameForSupportMessages: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      currency: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      employeeCaseUpdateTemplate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      fax: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isElimination: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      legalName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      mainSupportEmailAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      nameNoHierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxIdNum: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      tranPrefix: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      url: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      zip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  GiftCertificateSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      amountAvailableBilled: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      amountRemaining: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      expirationDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      giftCertCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isActive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      liabilityAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      message: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      originalAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      purchaseDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      sender: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  GiftCertificateSearchRowBasic:
    elements:
      amountRemaining: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      amtAvailBilled: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      expirationDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      gcActive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      giftCertCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      incomeAcct: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      liabilityAcct: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      originalAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      purchaseDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      sender: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  FolderSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      class: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      department: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      group: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isTopLevel: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      numFiles: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      predecessor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      private: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      size: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  FolderSearchRowBasic:
    elements:
      class: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      department: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      folderSize: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      group: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      numFiles: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
  FileSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      availableWithoutLogin: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      created: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      dateViewed: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      documentSize: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fileType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      folder: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isAvailable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isLink: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      modified: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      url: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  FileSearchRowBasic:
    elements:
      availableWithoutLogin: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      created: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateViewed: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      documentSize: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      fileType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      folder: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      hits: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      hostedPath: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isAvailable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      modified: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      url: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  JobSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      accountNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      actualTime: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      address: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressee: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressLabel: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      addressPhone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      allocatePayrollExpenses: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      allowAllResourcesForTasks: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      allowExpenses: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      allowTime: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      attention: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      calculatedEndDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      calculatedEndDateBaseline: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      city: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      comments: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      contact: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      county: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customer: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      dateCreated: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      entityId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      estCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estEndDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      estimatedGrossProfit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedGrossProfitPercent: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedLaborCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedLaborCostBaseline: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedLaborRevenue: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedTime: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedTimeOverride: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedTimeOverrideBaseline: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estRevenue: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      fax: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      giveAccess: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      globalSubscriptionStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      image: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      includeCrmTasksInTotals: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isDefaultBilling: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isDefaultShipping: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isExemptTime: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isProductiveTime: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isUtilizedTime: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      jobBillingType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      jobItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      jobPrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      jobResource: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      jobResourceRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      language: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      lastBaselineDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      level: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      limitTimeToAssignees: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      materializeTime: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      pctComplete: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      percentTimeComplete: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      permission: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      phone: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      phoneticName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      projectedEndDateBaseline: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      startDateBaseline: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      state: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      status: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      timeRemaining: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      type: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      zipCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  JobSearchRowBasic:
    elements:
      accountNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      actualTime: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      address: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      address3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressInternalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressLabel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      addressPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      allocatePayrollExpenses: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      allowAllResourcesForTasks: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      allowExpenses: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      allowTime: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      altContact: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altEmail: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      attention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billingSchedule: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      billPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      billZipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      calculatedEndDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      calculatedEndDateBaseline: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      city: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      comments: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      companyName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      countryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customer: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateCreated: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityNumber: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedGrossProfit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedGrossProfitPercent: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedLaborCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedLaborCostBaseline: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedLaborRevenue: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedRevenue: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedTime: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedTimeOverride: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedTimeOverrideBaseline: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      fax: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      globalSubscriptionStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      image: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      includeCrmTasksInTotals: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultBilling: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDefaultShipping: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isExemptTime: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isProductiveTime: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isUtilizedTime: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobBillingType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobPrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobResource: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobResourceRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      language: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastBaselineDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      level: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      limitTimeToAssignees: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      materializeTime: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      percentComplete: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      percentTimeComplete: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      permission: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      phone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      phoneticName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      projectedEndDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      projectedEndDateBaseline: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress1: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress3: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddressee: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAttention: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCity: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountry: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipCountryCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipPhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipState: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipZip: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDateBaseline: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscription: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscriptionStatus: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      timeRemaining: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      zipCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  IssueSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      ageInMonths: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      assigned: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      buildBroken: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      buildBrokenName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      buildFixed: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      buildFixedName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      buildTarget: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      buildTargetName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      caseCount: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      caseNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      closedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      dateReleased: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      details: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      duplicateOf: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      eFix: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      employeeOrTeam: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      eventStatus: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      externalAbstract: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalDetails: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalFixedIn: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      fixed: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      fixedBy: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isOwner: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isReviewed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isShowStopper: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      issueAbstract: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      issueNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      module: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      number: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      originalFixedIn: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      priority: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      product: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      productTeam: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      reportedBy: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      reproduce: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      resolved: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      resolvedBy: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      reviewer: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      severity: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      source: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      status: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      tags: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      tracking: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      type: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      userType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      versionBroken: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      versionFixed: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      versionTarget: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  IssueSearchRowBasic:
    elements:
      ageInMonths: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      assigned: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      buildBroken: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      buildFixed: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      buildTarget: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseCount: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      caseNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      closedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateReleased: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      duplicateOf: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      employeeOrTeam: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      eventStatus: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalAbstract: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalDetails: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalFixedIn: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      fixed: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      fixedBy: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isOwner: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isReviewed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isShowStopper: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      issueAbstract: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      issueStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      module: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      number: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      originalFixedIn: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      priority: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      product: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      productTeam: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      reportedBy: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      reproduce: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      resolved: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      resolvedBy: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      reviewer: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      severity: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      source: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      tags: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      type: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      userType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      versionBroken: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      versionFixed: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      versionTarget: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  GroupMemberSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      groupId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  CampaignSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      audience: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      baseCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      campaignEventType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      campaignId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      channel: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      cost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      event: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      expectedRevenue: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      family: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      group: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isSalesCampaign: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      keyword: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      manager: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      managerRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      number: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      offer: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      promoCode: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      recipient: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      response: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      responseCategory: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      responseCode: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      responseComments: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      responseDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      scheduleDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      searchEngine: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      status: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      subscription: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      template: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      vertical: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  CampaignSearchRowBasic:
    elements:
      audience: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      baseCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      campaignId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      channel: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      cost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      event: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      executedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      expectedRevenue: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      family: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isSalesCampaign: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      keyword: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      managerRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      offer: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      promoCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      recipient: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      response: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      responseCategory: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      responseCode: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      responseDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      responseNotes: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      revenue: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      roi: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      scheduledDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      searchEngine: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      subscription: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      url: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      vertical: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  EntityGroupSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      email: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      groupName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      groupOwner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      groupType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isDynamic: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPrivate: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  EntityGroupSearchRowBasic:
    elements:
      email: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      groupName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      groupType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDynamic: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isPrivate: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      savedSearch: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      size: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  PromotionCodeSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      applyDiscountTo: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      code: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      discount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      discountAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      freeShipItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPublic: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  PromotionCodeSearchRowBasic:
    elements:
      code: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      discount: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      discountAmount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isPublic: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  BudgetSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      account: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      amount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      class: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      currency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customer: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      department: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      global: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      year: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      year2: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  BudgetSearchRowBasic:
    elements:
      account: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      amount: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      class: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      classnohierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      currency: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customer: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      department: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      departmentnohierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      global: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      locationnohierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiarynohierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      year: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      year2: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  ProjectTaskSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      actualWork: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      assignee: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      company: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      constraintType: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      contact: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      cost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costBase: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costBaseBaseline: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costBaseline: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costBaseVariance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costVariance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costVariancePercent: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      createdDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      endDateBaseline: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      endDateVariance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedWork: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedWorkBaseline: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedWorkVariance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedWorkVariancePercent: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      id: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isSummaryTask: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      percentWorkComplete: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      predecessor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      predecessors: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      priority: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      remainingWork: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      startDateBaseline: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      startDateVariance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      status: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      successor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  ProjectTaskSearchRowBasic:
    elements:
      actualWork: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      company: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      constraintType: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      cost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costBase: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costBaseBaseline: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costBaseline: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costBaseVariance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costVariance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costVariancePercent: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      createdDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDateBaseline: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDateVariance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedWork: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedWorkBaseline: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedWorkVariance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedWorkVariancePercent: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      id: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isSummaryTask: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      message: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      percentWorkComplete: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      predecessor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      predecessors: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      predecessorType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      priority: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      remainingWork: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDateBaseline: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDateVariance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      status: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      successor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      successorType: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  ProjectTaskAssignmentSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      actualWork: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      cost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      costBase: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      estimatedWork: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      estimatedWorkBaseline: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      grossProfit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      grossProfitBase: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      price: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      priceBase: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      resource: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      resourceName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      serviceItem: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      serviceItemDesc: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      unitCost: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      unitCostBase: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      unitPrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      unitPriceBase: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      workCalendar: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  ProjectTaskAssignmentSearchRowBasic:
    elements:
      actualWork: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      cost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      costBase: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedWork: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedWorkBaseline: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      grossProfit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      grossProfitBase: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      price: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      priceBase: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      resource: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      resourceName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      serviceItem: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      serviceItemDesc: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      unitCost: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      unitCostBase: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      unitPrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      unitPriceBase: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      workCalendar: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
  AccountingPeriodSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      allLocked: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      allowNonGlChanges: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      apLocked: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      arLocked: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      closed: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      closedOnDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isAdjust: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isQuarter: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isYear: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      payrollLocked: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      periodName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
  AccountingPeriodSearchRowBasic:
    elements:
      allLocked: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      allowNonGLChanges: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      apLocked: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      arLocked: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      closed: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      closedOnDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isAdjust: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isQuarter: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isYear: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      payrollLocked: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      periodName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
  ContactCategorySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      private: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      sync: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
  ContactCategorySearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      private: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      sync: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
  ContactRoleSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  ContactRoleSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerCategorySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  CustomerCategorySearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerStatusSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      includeInLeadReports: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      probability: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
  CustomerStatusSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      includeInLeadReports: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      probability: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  ExpenseCategorySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      account: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  ExpenseCategorySearchRowBasic:
    elements:
      account: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  JobStatusSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  JobStatusSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  JobTypeSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  JobTypeSearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
  NoteTypeSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  NoteTypeSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  PartnerCategorySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  PartnerCategorySearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
  PaymentMethodSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      account: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      creditCard: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isDebitCard: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  PaymentMethodSearchRowBasic:
    elements:
      account: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      creditCard: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isDebitCard: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  PriceLevelSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      discountPct: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isOnline: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  PriceLevelSearchRowBasic:
    elements:
      discountPct: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isOnline: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  SalesRoleSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  SalesRoleSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  TermSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      dateDriven: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      dayDiscountExpires: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      dayOfMonthNetDue: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      daysUntilExpiry: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      daysUntilNetDue: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      discountPercent: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      discountPercentDateDriven: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      dueNextMonthIfWithinDays: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      preferred: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
  TermSearchRowBasic:
    elements:
      dateDriven: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      dayDiscountExpires: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      dayOfMonthNetDue: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysUntilExpiry: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysUntilNetDue: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      discountPercent: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      discountPercentDateDriven: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      dueNextMonthIfWithinDays: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      preferred: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorCategorySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isTaxAgency: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  VendorCategorySearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isTaxAgency: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  WinLossReasonSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  WinLossReasonSearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  OriginatingLeadSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      accountNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      availableOffline: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      balance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      boughtAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      boughtDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      buyingReason: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      buyingTimeFrame: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      category: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      ccCustomerCode: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ccDefault: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      ccExpDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      ccHolderName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ccNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      ccType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      classBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      companyName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      contact: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      contribution: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      conversionDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      creditHoldOverride: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      creditLimit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      currency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      custStage: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      custStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      dateClosed: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      daysOverdue: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      depositBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      deptBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      emailTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      endDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      entityStatus: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      estimatedBudget: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      explicitConversion: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      faxTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      firstName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      firstOrderDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      firstSaleDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      group: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      groupPricingLevel: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      hasDuplicates: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isBudgetApproved: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isPerson: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isReportedLead: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isShipAddress: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      itemPricingLevel: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      itemPricingUnitPrice: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      itemsBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      itemsOrdered: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      lastName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      leadDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      leadSource: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      locationBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      manualCreditHold: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      merchantAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      middleName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      onCreditHold: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      orderedAmount: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      orderedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      otherRelationships: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      overdueBalance: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      parent: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      parentItemsBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      parentItemsOrdered: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerContribution: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      partnerRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      partnerTeamMember: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      pec: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      priceLevel: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      pricingItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      printTransactions: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      prospectDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      pstExempt: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      reminderDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      resaleNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      role: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesReadiness: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesRep: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesTeamMember: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salesTeamRole: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      salutation: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      shipComplete: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      shippingItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      stage: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      startDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      subsidBought: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      taxable: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      terms: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      territory: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      title: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      unbilledOrders: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      url: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      vatRegNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      webLead: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  OriginatingLeadSearchRowBasic:
    elements:
      accountNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      altContact: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      availableOffline: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      balance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      billAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      buyingReason: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      buyingTimeFrame: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      category: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccCustomerCode: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccDefault: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccExpDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccHolderName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      ccType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      companyName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      contact: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      contribution: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      contributionPrimary: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      conversionDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      creditHoldOverride: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      creditLimit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      currency: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateClosed: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      daysOverdue: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      depositBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      emailTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      endDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      entityStatus: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      estimatedBudget: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      explicitConversion: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      faxTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstOrderDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      firstSaleDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      giveAccess: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      groupPricingLevel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      hasDuplicates: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      homePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      isBudgetApproved: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isPerson: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isShipAddress: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      itemPricingLevel: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      itemPricingUnitPrice: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobEndDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobProjectedEnd: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobStartDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      jobType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      leadDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      leadSource: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      manualCreditHold: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      middleName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      mobilePhone: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      onCreditHold: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      overdueBalance: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      parent: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerContribution: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerRole: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      partnerTeamMember: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      pec: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      prefCCProcessor: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      priceLevel: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      pricingGroup: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      pricingItem: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      printTransactions: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      prospectDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      reminderDays: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      resaleNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      role: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesReadiness: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesRep: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTeamMember: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salesTeamRole: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      salutation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipAddress: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      shipComplete: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      shippingItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      stage: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      startDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxable: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      taxItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      terms: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      territory: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      title: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      unbilledOrders: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      url: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      vatRegNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      webLead: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  UnitsTypeSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      abbreviation: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      baseUnit: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      conversionRate: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInActive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      pluralAbbreviation: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      pluralName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      unitName: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  UnitsTypeSearchRowBasic:
    elements:
      abbreviation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      baseUnit: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      conversionRate: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInActive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      pluralAbbreviation: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      pluralName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      unitName: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomListSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      isOrdered: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      owner: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      scriptId: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  CustomListSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      isOrdered: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      owner: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      scriptId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  PricingGroupSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  PricingGroupSearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  InventoryNumberSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      expirationDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      inventoryNumber: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      isOnHand: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      memo: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      quantityAvailable: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityInTransit: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityOnHand: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      quantityOnOrder: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  InventoryNumberSearchRowBasic:
    elements:
      expirationDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      inventoryNumber: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      isonhand: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      memo: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityavailable: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityintransit: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityonhand: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityonorder: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  AppDefinitionSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  AppDefinitionSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  AppPackageSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      appDefinition: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      version: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  AppPackageSearchRowBasic:
    elements:
      appDefinition: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      bundle: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      packageFile: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      version: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  NexusSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      country: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      state: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  NexusSearchRowBasic:
    elements:
      country: { type: 'platformCore:SearchColumnEnumSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      state: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
  OtherNameCategorySearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
  OtherNameCategorySearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerMessageSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      description: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      isInactive: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      preferred: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
  CustomerMessageSearchRowBasic:
    elements:
      description: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      preferred: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemDemandPlanSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      alternateSourceItem: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      analysisDuration: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      demandDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      memo: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      projectionDuration: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      projectionInterval: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      projectionMethod: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      projectionStartDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      quantity: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      units: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  ItemDemandPlanSearchRowBasic:
    elements:
      alternateSourceItem: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      analysisDuration: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      demandDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      memo: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      projectionDuration: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      projectionInterval: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      projectionMethod: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      projectionStartDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantity: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityUom: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      units: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  ItemSupplyPlanSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      lastModifiedDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      location: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      memo: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      orderCreated: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
      orderDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      orderType: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      quantity: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      receiptDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      units: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  ItemSupplyPlanSearchRowBasic:
    elements:
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      lastModifiedDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      location: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      memo: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      orderCreated: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      orderDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      orderType: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantity: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      quantityUom: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      receiptDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      subsidiary: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      units: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
  CurrencyRateSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      baseCurrency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      effectiveDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      exchangeRate: { type: 'platformCore:SearchDoubleField', minOccurs: '0' }
      transactionCurrency: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
  CurrencyRateSearchRowBasic:
    elements:
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      baseCurrency: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      effectiveDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      exchangeRate: { type: 'platformCore:SearchColumnDoubleField', minOccurs: '0', maxOccurs: 'unbounded' }
      transactionCurrency: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemRevisionSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      effectiveDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      item: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      obsoleteDate: { type: 'platformCore:SearchDateField', minOccurs: '0' }
  ItemRevisionSearchRowBasic:
    elements:
      effectiveDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      item: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      memo: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      obsoleteDate: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
  CouponCodeSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      code: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      customer: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      dateSent: { type: 'platformCore:SearchDateField', minOccurs: '0' }
      id: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      promotion: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      useCount: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      used: { type: 'platformCore:SearchBooleanField', minOccurs: '0' }
  CouponCodeSearchRowBasic:
    elements:
      code: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customer: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      dateSent: { type: 'platformCore:SearchColumnDateField', minOccurs: '0', maxOccurs: 'unbounded' }
      id: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      promotion: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      useCount: { type: 'platformCore:SearchColumnLongField', minOccurs: '0', maxOccurs: 'unbounded' }
      used: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
  PayrollItemSearchBasic:
    base: 'platformCore:SearchRecord'
    elements:
      externalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      externalIdString: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      internalId: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      internalIdNumber: { type: 'platformCore:SearchLongField', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      itemTypeNoHierarchy: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0' }
      liabilityAccount: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      name: { type: 'platformCore:SearchStringField', minOccurs: '0' }
      subsidiary: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      vendor: { type: 'platformCore:SearchMultiSelectField', minOccurs: '0' }
      customFieldList: { type: 'platformCore:SearchCustomFieldList', minOccurs: '0' }
  PayrollItemSearchRowBasic:
    elements:
      externalId: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      internalId: { type: 'platformCore:SearchColumnSelectField', minOccurs: '0', maxOccurs: 'unbounded' }
      expenseAccount: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      isInactive: { type: 'platformCore:SearchColumnBooleanField', minOccurs: '0', maxOccurs: 'unbounded' }
      itemTypeNoHierarchy: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      liabilityAccount: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      name: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      vendor: { type: 'platformCore:SearchColumnStringField', minOccurs: '0', maxOccurs: 'unbounded' }
      customFieldList: { type: 'platformCore:SearchColumnCustomFieldList', minOccurs: '0' }
