exports.complexTypes =
  Campaign:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      campaignId: { type: 'xsd:string', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      url: { type: 'xsd:string', minOccurs: '0' }
      baseCost: { type: 'xsd:double', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      expectedRevenue: { type: 'xsd:double', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      local: { type: 'xsd:boolean', minOccurs: '0' }
      totalRevenue: { type: 'xsd:double', minOccurs: '0' }
      roi: { type: 'xsd:double', minOccurs: '0' }
      profit: { type: 'xsd:double', minOccurs: '0' }
      costPerCustomer: { type: 'xsd:double', minOccurs: '0' }
      convCostPerCustomer: { type: 'xsd:double', minOccurs: '0' }
      conversions: { type: 'xsd:long', minOccurs: '0' }
      leadsGenerated: { type: 'xsd:long', minOccurs: '0' }
      uniqueVisitors: { type: 'xsd:long', minOccurs: '0' }
      vertical: { type: 'platformCore:RecordRef', minOccurs: '0' }
      audience: { type: 'platformCore:RecordRef', minOccurs: '0' }
      offer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      promotionCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      family: { type: 'platformCore:RecordRef', minOccurs: '0' }
      searchEngine: { type: 'platformCore:RecordRef', minOccurs: '0' }
      keyword: { type: 'xsd:string', minOccurs: '0' }
      campaignEmailList: { type: 'listMkt:CampaignEmailList', minOccurs: '0' }
      campaignDirectMailList: { type: 'listMkt:CampaignDirectMailList', minOccurs: '0' }
      campaignEventList: { type: 'listMkt:CampaignEventList', minOccurs: '0' }
      eventResponseList: { type: 'listMkt:CampaignEventResponseList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CampaignEmail:
    elements:
      internalId: { type: 'xsd:string', minOccurs: '0' }
      campaignGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      template: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      subscription: { type: 'platformCore:RecordRef', minOccurs: '0' }
      channel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      status: { type: 'listMktTyp:CampaignCampaignEmailStatus', minOccurs: '0' }
      dateScheduled: { type: 'xsd:dateTime', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CampaignEmailList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      campaignEmail: { type: 'listMkt:CampaignEmail', minOccurs: '0', maxOccurs: 'unbounded' }
  CampaignDirectMail:
    elements:
      internalId: { type: 'xsd:string', minOccurs: '0' }
      campaignGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      template: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      subscription: { type: 'platformCore:RecordRef', minOccurs: '0' }
      channel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      status: { type: 'listMktTyp:CampaignCampaignDirectMailStatus', minOccurs: '0' }
      dateScheduled: { type: 'xsd:dateTime', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CampaignDirectMailList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      campaignDirectMail: { type: 'listMkt:CampaignDirectMail', minOccurs: '0', maxOccurs: 'unbounded' }
  CampaignEvent:
    elements:
      internalId: { type: 'xsd:string', minOccurs: '0' }
      campaignGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      subscription: { type: 'platformCore:RecordRef', minOccurs: '0' }
      channel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      status: { type: 'listMktTyp:CampaignCampaignEventStatus', minOccurs: '0' }
      dateScheduled: { type: 'xsd:dateTime', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CampaignEventList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      campaignEvent: { type: 'listMkt:CampaignEvent', minOccurs: '0', maxOccurs: 'unbounded' }
  CampaignEventResponse:
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      dateSent: { type: 'xsd:dateTime', minOccurs: '0' }
      sent: { type: 'xsd:double', minOccurs: '0' }
      opened: { type: 'xsd:double', minOccurs: '0' }
      openedRatio: { type: 'xsd:double', minOccurs: '0' }
      clickedThru: { type: 'xsd:double', minOccurs: '0' }
      clickedThruRatio: { type: 'xsd:double', minOccurs: '0' }
      responded: { type: 'xsd:long', minOccurs: '0' }
      respondedRatio: { type: 'xsd:double', minOccurs: '0' }
      unsubscribed: { type: 'xsd:long', minOccurs: '0' }
      unsubscribedRatio: { type: 'xsd:double', minOccurs: '0' }
      bounced: { type: 'xsd:long', minOccurs: '0' }
      bouncedRatio: { type: 'xsd:double', minOccurs: '0' }
  CampaignEventResponseList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      eventResponse: { type: 'listMkt:CampaignEventResponse', minOccurs: '0', maxOccurs: 'unbounded' }
  CampaignSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      campaignRecipientJoin: { type: 'platformCommon:EntitySearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchBasic', minOccurs: '0' }
      promotionCodeJoin: { type: 'platformCommon:PromotionCodeSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  CampaignSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listMkt:CampaignSearch', minOccurs: '0' }
      columns: { type: 'listMkt:CampaignSearchRow', minOccurs: '0' }
  CampaignSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      campaignRecipientJoin: { type: 'platformCommon:EntitySearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchRowBasic', minOccurs: '0' }
      promotionCodeJoin: { type: 'platformCommon:PromotionCodeSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  CampaignCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isexternal: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CampaignAudience:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CampaignFamily:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CampaignSearchEngine:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CampaignChannel:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      eventType: { type: 'listMktTyp:CampaignChannelEventType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CampaignOffer:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CampaignResponse:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      campaignEvent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      campaignResponseDate: { type: 'xsd:dateTime', minOccurs: '0' }
      channel: { type: 'xsd:string', minOccurs: '0' }
      response: { type: 'listMktTyp:CampaignResponseResponse', minOccurs: '0' }
      note: { type: 'xsd:string', minOccurs: '0' }
      responsesList: { type: 'listMkt:CampaignResponseResponsesList', minOccurs: '0' }
  CampaignResponseResponses:
    elements:
      response: { type: 'xsd:string', minOccurs: '0' }
      responseDate: { type: 'xsd:string', minOccurs: '0' }
      author: { type: 'xsd:string', minOccurs: '0' }
      note: { type: 'xsd:string', minOccurs: '0' }
  CampaignResponseResponsesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      responses: { type: 'listMkt:CampaignResponseResponses', minOccurs: '0', maxOccurs: 'unbounded' }
  CampaignVertical:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CampaignSubscription:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      subscribedByDefault: { type: 'xsd:boolean', minOccurs: '0' }
      unsubscribed: { type: 'xsd:boolean', minOccurs: '0' }
      externalName: { type: 'xsd:string', minOccurs: '0' }
      externalDescription: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  PromotionCode:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      implementation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useType: { type: 'listMktTyp:PromotionCodeUseType', minOccurs: '0' }
      displayLineDiscounts: { type: 'xsd:boolean', minOccurs: '0' }
      code: { type: 'xsd:string', minOccurs: '0' }
      codePattern: { type: 'xsd:string', minOccurs: '0' }
      numberToGenerate: { type: 'xsd:long', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      discount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      discountType: { type: 'xsd:boolean', minOccurs: '0' }
      applyDiscountTo: { type: 'listMktTyp:PromotionCodeApplyDiscountTo', minOccurs: '0' }
      freeShipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumOrderAmount: { type: 'xsd:double', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      isPublic: { type: 'xsd:boolean', minOccurs: '0' }
      currencyList: { type: 'listMkt:PromotionCodeCurrencyList', minOccurs: '0' }
      excludeItems: { type: 'xsd:boolean', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
      itemsList: { type: 'listMkt:PromotionCodeItemsList', minOccurs: '0' }
      partnersList: { type: 'listMkt:PromotionCodePartnersList', minOccurs: '0' }
  PromotionCodePartners:
    elements:
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      code: { type: 'xsd:string', minOccurs: '0' }
  PromotionCodePartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'listMkt:PromotionCodePartners', minOccurs: '0', maxOccurs: 'unbounded' }
  PromotionCodeItems:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
  PromotionCodeItemsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      items: { type: 'listMkt:PromotionCodeItems', minOccurs: '0', maxOccurs: 'unbounded' }
  PromotionCodeSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:PromotionCodeSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  PromotionCodeSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchScriptId: { type: 'xsd:string' }
      savedSearchId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listMkt:PromotionCodeSearch', minOccurs: '0' }
      columns: { type: 'listMkt:PromotionCodeSearchRow', minOccurs: '0' }
  PromotionCodeSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:PromotionCodeSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  PromotionCodeCurrency:
    elements:
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumOrderAmount: { type: 'xsd:double', minOccurs: '0' }
  PromotionCodeCurrencyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      currency: { type: 'listMkt:PromotionCodeCurrency', minOccurs: '0', maxOccurs: 'unbounded' }
  CouponCode:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      promotion: { type: 'platformCore:RecordRef', minOccurs: '1' }
      code: { type: 'xsd:string', minOccurs: '1' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dateSent: { type: 'xsd:dateTime', minOccurs: '0' }
      used: { type: 'xsd:boolean', minOccurs: '0' }
      useCount: { type: 'xsd:long', minOccurs: '0' }
  CouponCodeSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CouponCodeSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  CouponCodeSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchScriptId: { type: 'xsd:string' }
      savedSearchId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listMkt:CouponCodeSearch', minOccurs: '0' }
      columns: { type: 'listMkt:CouponCodeSearchRow', minOccurs: '0' }
  CouponCodeSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CouponCodeSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
