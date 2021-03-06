exports.complexTypes =
  Opportunity:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      estimatedBudget: { type: 'xsd:double', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      syncSalesTeams: { type: 'xsd:boolean', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entityStatus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      probability: { type: 'xsd:double', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      expectedCloseDate: { type: 'xsd:dateTime', minOccurs: '0' }
      daysOpen: { type: 'xsd:long', minOccurs: '0' }
      forecastType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      projectedTotal: { type: 'xsd:double', minOccurs: '0' }
      rangeLow: { type: 'xsd:double', minOccurs: '0' }
      rangeHigh: { type: 'xsd:double', minOccurs: '0' }
      projAltSalesAmt: { type: 'xsd:double', minOccurs: '0' }
      altSalesRangeLow: { type: 'xsd:double', minOccurs: '0' }
      altSalesRangeHigh: { type: 'xsd:double', minOccurs: '0' }
      weightedTotal: { type: 'xsd:double', minOccurs: '0' }
      actionItem: { type: 'xsd:string', minOccurs: '0' }
      winLossReason: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      isBudgetApproved: { type: 'xsd:boolean', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      salesReadiness: { type: 'platformCore:RecordRef', minOccurs: '0' }
      totalCostEstimate: { type: 'xsd:double', minOccurs: '0' }
      buyingTimeFrame: { type: 'platformCore:RecordRef', minOccurs: '0' }
      estGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      buyingReason: { type: 'platformCore:RecordRef', minOccurs: '0' }
      estGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      transactionBillAddress: { type: 'platformCommon:BillAddress', minOccurs: '0' }
      billAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billAddress: { type: 'xsd:string', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      closeDate: { type: 'xsd:dateTime', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      salesTeamList: { type: 'tranSales:OpportunitySalesTeamList', minOccurs: '0' }
      partnersList: { type: 'tranSales:OpportunityPartnersList', minOccurs: '0' }
      itemList: { type: 'tranSales:OpportunityItemList', minOccurs: '0' }
      competitorsList: { type: 'tranSales:OpportunityCompetitorsList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  OpportunitySalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  OpportunitySalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'tranSales:OpportunitySalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  OpportunityItem:
    elements:
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      price: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      altSalesAmt: { type: 'xsd:double', minOccurs: '0' }
      revRecTermInMonths: { type: 'xsd:long', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      fromJob: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      expectedShipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  OpportunityItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranSales:OpportunityItem', minOccurs: '0', maxOccurs: 'unbounded' }
  OpportunityCompetitors:
    elements:
      competitor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      url: { type: 'xsd:string', minOccurs: '0' }
      notes: { type: 'xsd:string', minOccurs: '0' }
      strategy: { type: 'xsd:string', minOccurs: '0' }
      winner: { type: 'xsd:boolean', minOccurs: '0' }
  OpportunityCompetitorsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      competitors: { type: 'tranSales:OpportunityCompetitors', minOccurs: '0', maxOccurs: 'unbounded' }
  OpportunitySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:OpportunitySearchBasic', minOccurs: '0' }
      actualJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      callJoin: { type: 'platformCommon:PhoneCallSearchBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      decisionMakerJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      estimateJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      eventJoin: { type: 'platformCommon:CalendarEventSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      leadSourceJoin: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      orderJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchBasic', minOccurs: '0' }
      partnerJoin: { type: 'platformCommon:PartnerSearchBasic', minOccurs: '0' }
      salesRepJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  OpportunitySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'tranSales:OpportunitySearch', minOccurs: '0' }
      columns: { type: 'tranSales:OpportunitySearchRow', minOccurs: '0' }
  OpportunitySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:OpportunitySearchRowBasic', minOccurs: '0' }
      actualJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      callJoin: { type: 'platformCommon:PhoneCallSearchRowBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      decisionMakerJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      estimateJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      eventJoin: { type: 'platformCommon:CalendarEventSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      leadSourceJoin: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      orderJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      originatingLeadJoin: { type: 'platformCommon:OriginatingLeadSearchRowBasic', minOccurs: '0' }
      partnerJoin: { type: 'platformCommon:PartnerSearchRowBasic', minOccurs: '0' }
      salesRepJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  OpportunityPartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  SalesOrder:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      orderStatus: { type: 'tranSalesTyp:SalesOrderOrderStatus', minOccurs: '0' }
      opportunity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      syncSalesTeams: { type: 'xsd:boolean', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      otherRefNum: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      salesEffectiveDate: { type: 'xsd:dateTime', minOccurs: '0' }
      excludeCommission: { type: 'xsd:boolean', minOccurs: '0' }
      totalCostEstimate: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      discountItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discountRate: { type: 'xsd:string', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      taxItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate: { type: 'xsd:double', minOccurs: '0' }
      toBePrinted: { type: 'xsd:boolean', minOccurs: '0' }
      toBeEmailed: { type: 'xsd:boolean', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      toBeFaxed: { type: 'xsd:boolean', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      messageSel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      transactionBillAddress: { type: 'platformCommon:BillAddress', minOccurs: '0' }
      billAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billAddress: { type: 'xsd:string', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      fob: { type: 'xsd:string', minOccurs: '0' }
      shipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      actualShipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      isMultiShipTo: { type: 'xsd:boolean', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      trackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      linkedTrackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      shipComplete: { type: 'xsd:boolean', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shopperIpAddress: { type: 'xsd:string', minOccurs: '0' }
      saveOnAuthDecline: { type: 'xsd:boolean', minOccurs: '0' }
      creditCard: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revenueStatus: { type: 'platformCommonTyp:RevenueStatus', minOccurs: '0' }
      recognizedRevenue: { type: 'xsd:double', minOccurs: '0' }
      deferredRevenue: { type: 'xsd:double', minOccurs: '0' }
      revRecOnRevCommitment: { type: 'xsd:boolean', minOccurs: '0' }
      revCommitStatus: { type: 'platformCommonTyp:RevenueCommitStatus', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      ccStreet: { type: 'xsd:string', minOccurs: '0' }
      ccZipCode: { type: 'xsd:string', minOccurs: '0' }
      payPalStatus: { type: 'xsd:string', minOccurs: '0' }
      creditCardProcessor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      payPalTranId: { type: 'xsd:string', minOccurs: '0' }
      ccApproved: { type: 'xsd:boolean', minOccurs: '0' }
      getAuth: { type: 'xsd:boolean', minOccurs: '0' }
      authCode: { type: 'xsd:string', minOccurs: '0' }
      ccAvsStreetMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      ccAvsZipMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      ccSecurityCodeMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      altSalesTotal: { type: 'xsd:double', minOccurs: '0' }
      ignoreAvs: { type: 'xsd:boolean', minOccurs: '0' }
      paymentEventResult: { type: 'tranSalesTyp:TransactionPaymentEventResult', minOccurs: '0' }
      paymentEventHoldReason: { type: 'tranSalesTyp:TransactionPaymentEventHoldReason', minOccurs: '0' }
      paymentEventType: { type: 'tranSalesTyp:TransactionPaymentEventType', minOccurs: '0' }
      paymentEventDate: { type: 'xsd:dateTime', minOccurs: '0' }
      paymentEventUpdatedBy: { type: 'xsd:string', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      discountTotal: { type: 'xsd:double', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      altShippingCost: { type: 'xsd:double', minOccurs: '0' }
      altHandlingCost: { type: 'xsd:double', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      paypalAuthId: { type: 'xsd:string', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      paypalProcess: { type: 'xsd:boolean', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ccSecurityCode: { type: 'xsd:string', minOccurs: '0' }
      threeDStatusCode: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      intercoTransaction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      intercoStatus: { type: 'platformCommonTyp:IntercoStatus', minOccurs: '0' }
      debitCardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pnRefNum: { type: 'xsd:string', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      terms: { type: 'platformCore:RecordRef', minOccurs: '0' }
      validFrom: { type: 'xsd:dateTime', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      giftCertApplied: { type: 'xsd:double', minOccurs: '0' }
      tranIsVsoeBundle: { type: 'xsd:boolean', minOccurs: '0' }
      vsoeAutoCalc: { type: 'xsd:boolean', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      salesTeamList: { type: 'tranSales:SalesOrderSalesTeamList', minOccurs: '0' }
      partnersList: { type: 'tranSales:SalesOrderPartnersList', minOccurs: '0' }
      giftCertRedemptionList: { type: 'tranSales:GiftCertRedemptionList', minOccurs: '0' }
      itemList: { type: 'tranSales:SalesOrderItemList', minOccurs: '0' }
      shipGroupList: { type: 'tranSales:SalesOrderShipGroupList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  SalesOrderSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  SalesOrderSalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'tranSales:SalesOrderSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  SalesOrderItem:
    elements:
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      price: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      commitInventory: { type: 'tranSalesTyp:SalesOrderItemCommitInventory', minOccurs: '0' }
      licenseCode: { type: 'xsd:string', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      createPo: { type: 'tranSalesTyp:SalesOrderItemCreatePo', minOccurs: '0' }
      createdPo: { type: 'platformCore:RecordRef', minOccurs: '0' }
      altSalesAmt: { type: 'xsd:double', minOccurs: '0' }
      createWo: { type: 'xsd:boolean', minOccurs: '0' }
      poVendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      poCurrency: { type: 'xsd:string', minOccurs: '0' }
      poRate: { type: 'xsd:double', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecTermInMonths: { type: 'xsd:long', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      deferRevRec: { type: 'xsd:boolean', minOccurs: '0' }
      isClosed: { type: 'xsd:boolean', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fromJob: { type: 'xsd:boolean', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      isEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      percentComplete: { type: 'xsd:double', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityBilled: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityFulfilled: { type: 'xsd:double', minOccurs: '0' }
      quantityPacked: { type: 'xsd:double', minOccurs: '0' }
      quantityPicked: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      giftCertFrom: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientName: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientEmail: { type: 'xsd:string', minOccurs: '0' }
      giftCertMessage: { type: 'xsd:string', minOccurs: '0' }
      giftCertNumber: { type: 'xsd:string', minOccurs: '0' }
      shipGroup: { type: 'xsd:long', minOccurs: '0' }
      itemIsFulfilled: { type: 'xsd:boolean', minOccurs: '0' }
      shipAddress: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeIsEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeAmount: { type: 'xsd:double', minOccurs: '0' }
      vsoeAllocation: { type: 'xsd:double', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      expectedShipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  SalesOrderItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranSales:SalesOrderItem', minOccurs: '0', maxOccurs: 'unbounded' }
  SalesOrderPartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  SalesOrderShipGroupList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      shipGroup: { type: 'tranSales:TransactionShipGroup', minOccurs: '0', maxOccurs: 'unbounded' }
  TransactionSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      accountJoin: { type: 'platformCommon:AccountSearchBasic', minOccurs: '0' }
      accountingPeriodJoin: { type: 'platformCommon:AccountingPeriodSearchBasic', minOccurs: '0' }
      appliedToTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      applyingTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      billingTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      binNumberJoin: { type: 'platformCommon:BinSearchBasic', minOccurs: '0' }
      callJoin: { type: 'platformCommon:PhoneCallSearchBasic', minOccurs: '0' }
      classJoin: { type: 'platformCommon:ClassificationSearchBasic', minOccurs: '0' }
      cogsPurchaseJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      cogsSaleJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      createdFromJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      customerMainJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      departmentJoin: { type: 'platformCommon:DepartmentSearchBasic', minOccurs: '0' }
      depositTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      eventJoin: { type: 'platformCommon:CalendarEventSearchBasic', minOccurs: '0' }
      expenseCategoryJoin: { type: 'platformCommon:ExpenseCategorySearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      fulfillingTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      inventoryDetailJoin: { type: 'platformCommon:InventoryDetailSearchBasic', minOccurs: '0' }
      itemJoin: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
      itemNumberJoin: { type: 'platformCommon:InventoryNumberSearchBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchBasic', minOccurs: '0' }
      jobMainJoin: { type: 'platformCommon:JobSearchBasic', minOccurs: '0' }
      leadSourceJoin: { type: 'platformCommon:CampaignSearchBasic', minOccurs: '0' }
      locationJoin: { type: 'platformCommon:LocationSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchBasic', minOccurs: '0' }
      paidTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      payingTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      purchaseOrderJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      requestorJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      revCommittingTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      rgPostingTransactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      salesOrderJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      salesRepJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      subsidiaryJoin: { type: 'platformCommon:SubsidiarySearchBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
      vendorJoin: { type: 'platformCommon:VendorSearchBasic', minOccurs: '0' }
  TransactionSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'tranSales:TransactionSearch', minOccurs: '0' }
      columns: { type: 'tranSales:TransactionSearchRow', minOccurs: '0' }
  TransactionSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      accountJoin: { type: 'platformCommon:AccountSearchRowBasic', minOccurs: '0' }
      accountingPeriodJoin: { type: 'platformCommon:AccountingPeriodSearchRowBasic', minOccurs: '0' }
      appliedToTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      applyingTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      billingTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      binNumberJoin: { type: 'platformCommon:BinSearchRowBasic', minOccurs: '0' }
      callJoin: { type: 'platformCommon:PhoneCallSearchRowBasic', minOccurs: '0' }
      classJoin: { type: 'platformCommon:ClassificationSearchRowBasic', minOccurs: '0' }
      cogsPurchaseJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      cogsSaleJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      contactPrimaryJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      createdFromJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      customerMainJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      departmentJoin: { type: 'platformCommon:DepartmentSearchRowBasic', minOccurs: '0' }
      depositTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      eventJoin: { type: 'platformCommon:CalendarEventSearchRowBasic', minOccurs: '0' }
      expenseCategoryJoin: { type: 'platformCommon:ExpenseCategorySearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      fulfillingTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      inventoryDetailJoin: { type: 'platformCommon:InventoryDetailSearchRowBasic', minOccurs: '0' }
      itemJoin: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
      itemNumberJoin: { type: 'platformCommon:InventoryNumberSearchRowBasic', minOccurs: '0' }
      jobJoin: { type: 'platformCommon:JobSearchRowBasic', minOccurs: '0' }
      jobMainJoin: { type: 'platformCommon:JobSearchRowBasic', minOccurs: '0' }
      leadSourceJoin: { type: 'platformCommon:CampaignSearchRowBasic', minOccurs: '0' }
      locationJoin: { type: 'platformCommon:LocationSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      opportunityJoin: { type: 'platformCommon:OpportunitySearchRowBasic', minOccurs: '0' }
      paidTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      payingTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      purchaseOrderJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      requestorJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      revCommittingTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      rgPostingTransactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      salesOrderJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      salesRepJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      subsidiaryJoin: { type: 'platformCommon:SubsidiarySearchRowBasic', minOccurs: '0' }
      taskJoin: { type: 'platformCommon:TaskSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
      vendorJoin: { type: 'platformCommon:VendorSearchRowBasic', minOccurs: '0' }
  ItemFulfillment:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      createdFromShipGroup: { type: 'xsd:long', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      shipStatus: { type: 'tranSalesTyp:ItemFulfillmentShipStatus', minOccurs: '0' }
      saturdayDeliveryUps: { type: 'xsd:boolean', minOccurs: '0' }
      sendShipNotifyEmailUps: { type: 'xsd:boolean', minOccurs: '0' }
      sendBackupEmailUps: { type: 'xsd:boolean', minOccurs: '0' }
      shipNotifyEmailAddressUps: { type: 'xsd:string', minOccurs: '0' }
      shipNotifyEmailAddress2Ups: { type: 'xsd:string', minOccurs: '0' }
      backupEmailAddressUps: { type: 'xsd:string', minOccurs: '0' }
      shipNotifyEmailMessageUps: { type: 'xsd:string', minOccurs: '0' }
      thirdPartyAcctUps: { type: 'xsd:string', minOccurs: '0' }
      thirdPartyZipcodeUps: { type: 'xsd:string', minOccurs: '0' }
      thirdPartyCountryUps: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      thirdPartyTypeUps: { type: 'tranSalesTyp:ItemFulfillmentThirdPartyTypeUps', minOccurs: '0' }
      partiesToTransactionUps: { type: 'xsd:boolean', minOccurs: '0' }
      exportTypeUps: { type: 'tranSalesTyp:ItemFulfillmentExportTypeUps', minOccurs: '0' }
      methodOfTransportUps: { type: 'tranSalesTyp:ItemFulfillmentMethodOfTransportUps', minOccurs: '0' }
      carrierIdUps: { type: 'xsd:string', minOccurs: '0' }
      entryNumberUps: { type: 'xsd:string', minOccurs: '0' }
      inbondCodeUps: { type: 'xsd:string', minOccurs: '0' }
      isRoutedExportTransactionUps: { type: 'xsd:boolean', minOccurs: '0' }
      licenseNumberUps: { type: 'xsd:string', minOccurs: '0' }
      licenseDateUps: { type: 'xsd:dateTime', minOccurs: '0' }
      licenseExceptionUps: { type: 'tranSalesTyp:ItemFulfillmentLicenseExceptionUps', minOccurs: '0' }
      eccNumberUps: { type: 'xsd:string', minOccurs: '0' }
      recipientTaxIdUps: { type: 'xsd:string', minOccurs: '0' }
      blanketStartDateUps: { type: 'xsd:dateTime', minOccurs: '0' }
      blanketEndDateUps: { type: 'xsd:dateTime', minOccurs: '0' }
      shipmentWeightUps: { type: 'xsd:double', minOccurs: '0' }
      saturdayDeliveryFedEx: { type: 'xsd:boolean', minOccurs: '0' }
      saturdayPickupFedex: { type: 'xsd:boolean', minOccurs: '0' }
      sendShipNotifyEmailFedEx: { type: 'xsd:boolean', minOccurs: '0' }
      sendBackupEmailFedEx: { type: 'xsd:boolean', minOccurs: '0' }
      signatureHomeDeliveryFedEx: { type: 'xsd:boolean', minOccurs: '0' }
      shipNotifyEmailAddressFedEx: { type: 'xsd:string', minOccurs: '0' }
      backupEmailAddressFedEx: { type: 'xsd:string', minOccurs: '0' }
      shipDateFedEx: { type: 'xsd:dateTime', minOccurs: '0' }
      homeDeliveryTypeFedEx: { type: 'tranSalesTyp:ItemFulfillmentHomeDeliveryTypeFedEx', minOccurs: '0' }
      homeDeliveryDateFedEx: { type: 'xsd:dateTime', minOccurs: '0' }
      bookingConfirmationNumFedEx: { type: 'xsd:string', minOccurs: '0' }
      intlExemptionNumFedEx: { type: 'xsd:string', minOccurs: '0' }
      b13aFilingOptionFedEx: { type: 'tranSalesTyp:ItemFulfillmentB13AFilingOptionFedEx', minOccurs: '0' }
      b13aStatementDataFedEx: { type: 'xsd:string', minOccurs: '0' }
      thirdPartyAcctFedEx: { type: 'xsd:string', minOccurs: '0' }
      thirdPartyCountryFedEx: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      thirdPartyTypeFedEx: { type: 'tranSalesTyp:ItemFulfillmentThirdPartyTypeFedEx', minOccurs: '0' }
      shipmentWeightFedEx: { type: 'xsd:double', minOccurs: '0' }
      termsOfSaleFedEx: { type: 'tranSalesTyp:ItemFulfillmentTermsOfSaleFedEx', minOccurs: '0' }
      termsFreightChargeFedEx: { type: 'xsd:double', minOccurs: '0' }
      termsInsuranceChargeFedEx: { type: 'xsd:double', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      generateIntegratedShipperLabel: { type: 'xsd:boolean', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      transferLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      packageList: { type: 'tranSales:ItemFulfillmentPackageList', minOccurs: '0' }
      packageUpsList: { type: 'tranSales:ItemFulfillmentPackageUpsList', minOccurs: '0' }
      packageUspsList: { type: 'tranSales:ItemFulfillmentPackageUspsList', minOccurs: '0' }
      packageFedExList: { type: 'tranSales:ItemFulfillmentPackageFedExList', minOccurs: '0' }
      itemList: { type: 'tranSales:ItemFulfillmentItemList', minOccurs: '0' }
      shipGroupList: { type: 'tranSales:ItemFulfillmentShipGroupList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ItemFulfillmentItem:
    elements:
      jobName: { type: 'xsd:string', minOccurs: '0' }
      itemReceive: { type: 'xsd:boolean', minOccurs: '0' }
      itemName: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      onHand: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      unitsDisplay: { type: 'xsd:string', minOccurs: '0' }
      createPo: { type: 'xsd:string', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      poNum: { type: 'xsd:string', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      quantityRemaining: { type: 'xsd:double', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      shipGroup: { type: 'xsd:long', minOccurs: '0' }
      itemIsFulfilled: { type: 'xsd:boolean', minOccurs: '0' }
      shipAddress: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ItemFulfillmentItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranSales:ItemFulfillmentItem', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemFulfillmentPackage:
    elements:
      packageWeight: { type: 'xsd:double', minOccurs: '0' }
      packageDescr: { type: 'xsd:string', minOccurs: '0' }
      packageTrackingNumber: { type: 'xsd:string', minOccurs: '0' }
  ItemFulfillmentPackageList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      package: { type: 'tranSales:ItemFulfillmentPackage', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemFulfillmentPackageUps:
    elements:
      packageWeightUps: { type: 'xsd:double', minOccurs: '0' }
      packageDescrUps: { type: 'xsd:string', minOccurs: '0' }
      packageTrackingNumberUps: { type: 'xsd:string', minOccurs: '0' }
      packagingUps: { type: 'tranSalesTyp:ItemFulfillmentPackageUpsPackagingUps', minOccurs: '0' }
      useInsuredValueUps: { type: 'xsd:boolean', minOccurs: '0' }
      insuredValueUps: { type: 'xsd:double', minOccurs: '0' }
      reference1Ups: { type: 'xsd:string', minOccurs: '0' }
      reference2Ups: { type: 'xsd:string', minOccurs: '0' }
      packageLengthUps: { type: 'xsd:long', minOccurs: '0' }
      packageWidthUps: { type: 'xsd:long', minOccurs: '0' }
      packageHeightUps: { type: 'xsd:long', minOccurs: '0' }
      additionalHandlingUps: { type: 'xsd:boolean', minOccurs: '0' }
      useCodUps: { type: 'xsd:boolean', minOccurs: '0' }
      codAmountUps: { type: 'xsd:double', minOccurs: '0' }
      codMethodUps: { type: 'tranSalesTyp:ItemFulfillmentPackageUpsCodMethodUps', minOccurs: '0' }
      deliveryConfUps: { type: 'tranSalesTyp:ItemFulfillmentPackageUpsDeliveryConfUps', minOccurs: '0' }
  ItemFulfillmentPackageUpsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      packageUps: { type: 'tranSales:ItemFulfillmentPackageUps', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemFulfillmentPackageUsps:
    elements:
      packageWeightUsps: { type: 'xsd:double', minOccurs: '0' }
      packageDescrUsps: { type: 'xsd:string', minOccurs: '0' }
      packageTrackingNumberUsps: { type: 'xsd:string', minOccurs: '0' }
      packagingUsps: { type: 'tranSalesTyp:ItemFulfillmentPackageUspsPackagingUsps', minOccurs: '0' }
      useInsuredValueUsps: { type: 'xsd:boolean', minOccurs: '0' }
      insuredValueUsps: { type: 'xsd:double', minOccurs: '0' }
      reference1Usps: { type: 'xsd:string', minOccurs: '0' }
      reference2Usps: { type: 'xsd:string', minOccurs: '0' }
      packageLengthUsps: { type: 'xsd:long', minOccurs: '0' }
      packageWidthUsps: { type: 'xsd:long', minOccurs: '0' }
      packageHeightUsps: { type: 'xsd:long', minOccurs: '0' }
      deliveryConfUsps: { type: 'tranSalesTyp:ItemFulfillmentPackageUspsDeliveryConfUsps', minOccurs: '0' }
  ItemFulfillmentPackageUspsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      packageUsps: { type: 'tranSales:ItemFulfillmentPackageUsps', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemFulfillmentPackageFedEx:
    elements:
      packageWeightFedEx: { type: 'xsd:double', minOccurs: '0' }
      packageTrackingNumberFedEx: { type: 'xsd:string', minOccurs: '0' }
      packagingFedEx: { type: 'tranSalesTyp:ItemFulfillmentPackageFedExPackagingFedEx', minOccurs: '0' }
      admPackageTypeFedEx: { type: 'tranSalesTyp:ItemFulfillmentPackageFedExAdmPackageTypeFedEx', minOccurs: '0' }
      isNonStandardContainerFedEx: { type: 'xsd:boolean', minOccurs: '0' }
      insuredValueFedEx: { type: 'xsd:double', minOccurs: '0' }
      useInsuredValueFedEx: { type: 'xsd:boolean', minOccurs: '0' }
      reference1FedEx: { type: 'xsd:string', minOccurs: '0' }
      packageLengthFedEx: { type: 'xsd:long', minOccurs: '0' }
      packageWidthFedEx: { type: 'xsd:long', minOccurs: '0' }
      packageHeightFedEx: { type: 'xsd:long', minOccurs: '0' }
      useCodFedEx: { type: 'xsd:boolean', minOccurs: '0' }
      codAmountFedEx: { type: 'xsd:double', minOccurs: '0' }
      codMethodFedEx: { type: 'tranSalesTyp:ItemFulfillmentPackageFedExCodMethodFedEx', minOccurs: '0' }
      codFreightTypeFedEx: { type: 'tranSalesTyp:ItemFulfillmentPackageFedExCodFreightTypeFedEx', minOccurs: '0' }
      deliveryConfFedEx: { type: 'tranSalesTyp:ItemFulfillmentPackageFedExDeliveryConfFedEx', minOccurs: '0' }
      signatureOptionsFedEx: { type: 'tranSalesTyp:ItemFulfillmentPackageFedExSignatureOptionsFedEx', minOccurs: '0' }
      signatureReleaseFedEx: { type: 'xsd:string', minOccurs: '0' }
      authorizationNumberFedEx: { type: 'xsd:string', minOccurs: '0' }
  ItemFulfillmentPackageFedExList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      packageFedEx: { type: 'tranSales:ItemFulfillmentPackageFedEx', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemFulfillmentShipGroupList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      shipGroup: { type: 'tranSales:TransactionShipGroup', minOccurs: '0', maxOccurs: 'unbounded' }
  Invoice:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      opportunity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      terms: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dueDate: { type: 'xsd:dateTime', minOccurs: '0' }
      discountDate: { type: 'xsd:dateTime', minOccurs: '0' }
      discountAmount: { type: 'xsd:double', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      otherRefNum: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      salesEffectiveDate: { type: 'xsd:dateTime', minOccurs: '0' }
      excludeCommission: { type: 'xsd:boolean', minOccurs: '0' }
      totalCostEstimate: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amountPaid: { type: 'xsd:double', minOccurs: '0' }
      amountRemaining: { type: 'xsd:double', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      onCreditHold: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discountItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discountRate: { type: 'xsd:string', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      taxItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate: { type: 'xsd:double', minOccurs: '0' }
      toBePrinted: { type: 'xsd:boolean', minOccurs: '0' }
      toBeEmailed: { type: 'xsd:boolean', minOccurs: '0' }
      toBeFaxed: { type: 'xsd:boolean', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      messageSel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      transactionBillAddress: { type: 'platformCommon:BillAddress', minOccurs: '0' }
      billAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billAddress: { type: 'xsd:string', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      fob: { type: 'xsd:string', minOccurs: '0' }
      shipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      trackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      linkedTrackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      revenueStatus: { type: 'platformCommonTyp:RevenueStatus', minOccurs: '0' }
      recognizedRevenue: { type: 'xsd:double', minOccurs: '0' }
      deferredRevenue: { type: 'xsd:double', minOccurs: '0' }
      revRecOnRevCommitment: { type: 'xsd:boolean', minOccurs: '0' }
      syncSalesTeams: { type: 'xsd:boolean', minOccurs: '0' }
      discountTotal: { type: 'xsd:double', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      altShippingCost: { type: 'xsd:double', minOccurs: '0' }
      altHandlingCost: { type: 'xsd:double', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      expCostDiscount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemCostDiscount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      timeDiscount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expCostDiscRate: { type: 'xsd:string', minOccurs: '0' }
      itemCostDiscRate: { type: 'xsd:string', minOccurs: '0' }
      timeDiscRate: { type: 'xsd:string', minOccurs: '0' }
      expCostDiscAmount: { type: 'xsd:double', minOccurs: '0' }
      expCostTaxRate1: { type: 'xsd:double', minOccurs: '0' }
      expCostTaxRate2: { type: 'xsd:double', minOccurs: '0' }
      itemCostDiscAmount: { type: 'xsd:double', minOccurs: '0' }
      expCostTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expCostDiscTax1Amt: { type: 'xsd:double', minOccurs: '0' }
      itemCostTaxRate1: { type: 'xsd:double', minOccurs: '0' }
      timeDiscAmount: { type: 'xsd:double', minOccurs: '0' }
      itemCostTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expCostDiscTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      itemCostDiscTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      itemCostTaxRate2: { type: 'xsd:double', minOccurs: '0' }
      itemCostDiscTax1Amt: { type: 'xsd:double', minOccurs: '0' }
      itemCostDiscPrint: { type: 'xsd:boolean', minOccurs: '0' }
      timeDiscTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      timeTaxRate1: { type: 'xsd:double', minOccurs: '0' }
      expCostDiscPrint: { type: 'xsd:boolean', minOccurs: '0' }
      timeTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      timeDiscPrint: { type: 'xsd:boolean', minOccurs: '0' }
      giftCertApplied: { type: 'xsd:double', minOccurs: '0' }
      timeDiscTax1Amt: { type: 'xsd:double', minOccurs: '0' }
      tranIsVsoeBundle: { type: 'xsd:boolean', minOccurs: '0' }
      timeTaxRate2: { type: 'xsd:double', minOccurs: '0' }
      vsoeAutoCalc: { type: 'xsd:boolean', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      salesTeamList: { type: 'tranSales:InvoiceSalesTeamList', minOccurs: '0' }
      partnersList: { type: 'tranSales:InvoicePartnersList', minOccurs: '0' }
      itemList: { type: 'tranSales:InvoiceItemList', minOccurs: '0' }
      itemCostList: { type: 'tranSales:InvoiceItemCostList', minOccurs: '0' }
      giftCertRedemptionList: { type: 'tranSales:GiftCertRedemptionList', minOccurs: '0' }
      expCostList: { type: 'tranSales:InvoiceExpCostList', minOccurs: '0' }
      timeList: { type: 'tranSales:InvoiceTimeList', minOccurs: '0' }
      shipGroupList: { type: 'tranSales:InvoiceShipGroupList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  InvoiceSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  InvoiceSalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'tranSales:InvoiceSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  InvoiceItem:
    elements:
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      deferRevRec: { type: 'xsd:boolean', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      currentPercent: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      price: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      percentComplete: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityRemaining: { type: 'xsd:double', minOccurs: '0' }
      quantityFulfilled: { type: 'xsd:double', minOccurs: '0' }
      amountOrdered: { type: 'xsd:double', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      licenseCode: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      giftCertFrom: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientName: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientEmail: { type: 'xsd:string', minOccurs: '0' }
      giftCertMessage: { type: 'xsd:string', minOccurs: '0' }
      giftCertNumber: { type: 'xsd:string', minOccurs: '0' }
      shipGroup: { type: 'xsd:long', minOccurs: '0' }
      itemIsFulfilled: { type: 'xsd:boolean', minOccurs: '0' }
      shipAddress: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeIsEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeAmount: { type: 'xsd:double', minOccurs: '0' }
      vsoeAllocation: { type: 'xsd:double', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  InvoiceItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranSales:InvoiceItem', minOccurs: '0', maxOccurs: 'unbounded' }
  InvoiceItemCost:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      billedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      itemDisp: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      jobDisp: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
      unitDisp: { type: 'xsd:string', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      itemCostCount: { type: 'xsd:string', minOccurs: '0' }
      quantity: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
  InvoiceItemCostList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      itemCost: { type: 'tranSales:InvoiceItemCost', minOccurs: '0', maxOccurs: 'unbounded' }
  InvoiceExpCost:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      billedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      jobDisp: { type: 'xsd:string', minOccurs: '0' }
      employeeDisp: { type: 'xsd:string', minOccurs: '0' }
      categoryDisp: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
      originalAmount: { type: 'xsd:double', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      taxableDisp: { type: 'xsd:string', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
  InvoiceExpCostList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      expCost: { type: 'tranSales:InvoiceExpCost', minOccurs: '0', maxOccurs: 'unbounded' }
  InvoiceTime:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      billedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      employeeDisp: { type: 'xsd:string', minOccurs: '0' }
      itemDisp: { type: 'xsd:string', minOccurs: '0' }
      jobDisp: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
      quantity: { type: 'xsd:string', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      unitDisp: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
  InvoiceTimeList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      time: { type: 'tranSales:InvoiceTime', minOccurs: '0', maxOccurs: 'unbounded' }
  InvoicePartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  InvoiceShipGroupList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      shipGroup: { type: 'tranSales:TransactionShipGroup', minOccurs: '0', maxOccurs: 'unbounded' }
  CashSale:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      opportunity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      otherRefNum: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      salesEffectiveDate: { type: 'xsd:dateTime', minOccurs: '0' }
      excludeCommission: { type: 'xsd:boolean', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      undepFunds: { type: 'xsd:boolean', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      totalCostEstimate: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discountItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discountRate: { type: 'xsd:string', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      taxItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate: { type: 'xsd:double', minOccurs: '0' }
      toBePrinted: { type: 'xsd:boolean', minOccurs: '0' }
      toBeEmailed: { type: 'xsd:boolean', minOccurs: '0' }
      toBeFaxed: { type: 'xsd:boolean', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      messageSel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      transactionBillAddress: { type: 'platformCommon:BillAddress', minOccurs: '0' }
      billAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billAddress: { type: 'xsd:string', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      fob: { type: 'xsd:string', minOccurs: '0' }
      shipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      linkedTrackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      trackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revenueStatus: { type: 'platformCommonTyp:RevenueStatus', minOccurs: '0' }
      recognizedRevenue: { type: 'xsd:double', minOccurs: '0' }
      deferredRevenue: { type: 'xsd:double', minOccurs: '0' }
      revRecOnRevCommitment: { type: 'xsd:boolean', minOccurs: '0' }
      syncSalesTeams: { type: 'xsd:boolean', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      payPalStatus: { type: 'xsd:string', minOccurs: '0' }
      creditCard: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      ccStreet: { type: 'xsd:string', minOccurs: '0' }
      ccZipCode: { type: 'xsd:string', minOccurs: '0' }
      creditCardProcessor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ccApproved: { type: 'xsd:boolean', minOccurs: '0' }
      authCode: { type: 'xsd:string', minOccurs: '0' }
      ccAvsStreetMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      ccAvsZipMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      payPalTranId: { type: 'xsd:string', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      ignoreAvs: { type: 'xsd:boolean', minOccurs: '0' }
      itemCostDiscount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemCostDiscRate: { type: 'xsd:string', minOccurs: '0' }
      itemCostDiscAmount: { type: 'xsd:double', minOccurs: '0' }
      itemCostTaxRate1: { type: 'xsd:double', minOccurs: '0' }
      itemCostTaxRate2: { type: 'xsd:double', minOccurs: '0' }
      itemCostDiscTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      itemCostTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemCostDiscTax1Amt: { type: 'xsd:double', minOccurs: '0' }
      itemCostDiscPrint: { type: 'xsd:boolean', minOccurs: '0' }
      expCostDiscount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expCostDiscRate: { type: 'xsd:string', minOccurs: '0' }
      expCostDiscAmount: { type: 'xsd:double', minOccurs: '0' }
      expCostDiscTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      expCostDiscprint: { type: 'xsd:boolean', minOccurs: '0' }
      expCostTaxRate1: { type: 'xsd:double', minOccurs: '0' }
      timeDiscount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expCostTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      timeDiscRate: { type: 'xsd:string', minOccurs: '0' }
      expCostTaxRate2: { type: 'xsd:double', minOccurs: '0' }
      expCostDiscTax1Amt: { type: 'xsd:double', minOccurs: '0' }
      timeDiscAmount: { type: 'xsd:double', minOccurs: '0' }
      timeDiscTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      timeDiscPrint: { type: 'xsd:boolean', minOccurs: '0' }
      discountTotal: { type: 'xsd:double', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      timeTaxRate1: { type: 'xsd:double', minOccurs: '0' }
      altShippingCost: { type: 'xsd:double', minOccurs: '0' }
      timeTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      altHandlingCost: { type: 'xsd:double', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      timeDiscTax1Amt: { type: 'xsd:double', minOccurs: '0' }
      ccSecurityCode: { type: 'xsd:string', minOccurs: '0' }
      timeTaxRate2: { type: 'xsd:double', minOccurs: '0' }
      ccSecurityCodeMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      chargeIt: { type: 'xsd:boolean', minOccurs: '0' }
      debitCardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      threeDStatusCode: { type: 'xsd:string', minOccurs: '0' }
      pnRefNum: { type: 'xsd:string', minOccurs: '0' }
      paypalAuthId: { type: 'xsd:string', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      paypalProcess: { type: 'xsd:boolean', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      validFrom: { type: 'xsd:dateTime', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      giftCertApplied: { type: 'xsd:double', minOccurs: '0' }
      tranIsVsoeBundle: { type: 'xsd:boolean', minOccurs: '0' }
      vsoeAutoCalc: { type: 'xsd:boolean', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      salesTeamList: { type: 'tranSales:CashSaleSalesTeamList', minOccurs: '0' }
      partnersList: { type: 'tranSales:CashSalePartnersList', minOccurs: '0' }
      itemList: { type: 'tranSales:CashSaleItemList', minOccurs: '0' }
      itemCostList: { type: 'tranSales:CashSaleItemCostList', minOccurs: '0' }
      giftCertRedemptionList: { type: 'tranSales:GiftCertRedemptionList', minOccurs: '0' }
      expCostList: { type: 'tranSales:CashSaleExpCostList', minOccurs: '0' }
      timeList: { type: 'tranSales:CashSaleTimeList', minOccurs: '0' }
      shipGroupList: { type: 'tranSales:CashSaleShipGroupList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CashSaleSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  CashSaleSalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'tranSales:CashSaleSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  CashSaleItem:
    elements:
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantityFulfilled: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      price: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      licenseCode: { type: 'xsd:string', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      deferRevRec: { type: 'xsd:boolean', minOccurs: '0' }
      currentPercent: { type: 'xsd:double', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      percentComplete: { type: 'xsd:double', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      amountOrdered: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      quantityOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityRemaining: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      giftCertFrom: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientName: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientEmail: { type: 'xsd:string', minOccurs: '0' }
      giftCertMessage: { type: 'xsd:string', minOccurs: '0' }
      giftCertNumber: { type: 'xsd:string', minOccurs: '0' }
      shipGroup: { type: 'xsd:long', minOccurs: '0' }
      itemIsFulfilled: { type: 'xsd:boolean', minOccurs: '0' }
      shipAddress: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeIsEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeAmount: { type: 'xsd:double', minOccurs: '0' }
      vsoeAllocation: { type: 'xsd:double', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CashSaleItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranSales:CashSaleItem', minOccurs: '0', maxOccurs: 'unbounded' }
  CashSaleItemCost:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      billedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      itemDisp: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      jobDisp: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
      unitDisp: { type: 'xsd:string', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      itemCostCount: { type: 'xsd:string', minOccurs: '0' }
      quantity: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
  CashSaleItemCostList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      itemCost: { type: 'tranSales:CashSaleItemCost', minOccurs: '0', maxOccurs: 'unbounded' }
  CashSaleExpCost:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      billedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      jobDisp: { type: 'xsd:string', minOccurs: '0' }
      employeeDisp: { type: 'xsd:string', minOccurs: '0' }
      categoryDisp: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
      originalAmount: { type: 'xsd:double', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      taxableDisp: { type: 'xsd:string', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
  CashSaleExpCostList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      expCost: { type: 'tranSales:CashSaleExpCost', minOccurs: '0', maxOccurs: 'unbounded' }
  CashSaleTime:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      billedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      employeeDisp: { type: 'xsd:string', minOccurs: '0' }
      itemDisp: { type: 'xsd:string', minOccurs: '0' }
      jobDisp: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'xsd:string', minOccurs: '0' }
      class: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
      quantity: { type: 'xsd:string', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      unitDisp: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
  CashSaleTimeList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      time: { type: 'tranSales:CashSaleTime', minOccurs: '0', maxOccurs: 'unbounded' }
  CashSalePartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  CashSaleShipGroupList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      shipGroup: { type: 'tranSales:TransactionShipGroup', minOccurs: '0', maxOccurs: 'unbounded' }
  Estimate:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      entityStatus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      probability: { type: 'xsd:double', minOccurs: '0' }
      includeInForecast: { type: 'xsd:boolean', minOccurs: '0' }
      forecastType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      opportunity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      terms: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dueDate: { type: 'xsd:dateTime', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expectedCloseDate: { type: 'xsd:dateTime', minOccurs: '0' }
      otherRefNum: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      totalCostEstimate: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discountItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discountRate: { type: 'xsd:string', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      taxItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate: { type: 'xsd:double', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      toBePrinted: { type: 'xsd:boolean', minOccurs: '0' }
      toBeEmailed: { type: 'xsd:boolean', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      toBeFaxed: { type: 'xsd:boolean', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      visibleToCustomer: { type: 'xsd:boolean', minOccurs: '0' }
      messageSel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      transactionBillAddress: { type: 'platformCommon:BillAddress', minOccurs: '0' }
      billAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billAddress: { type: 'xsd:string', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      fob: { type: 'xsd:string', minOccurs: '0' }
      shipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      trackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      linkedTrackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      syncSalesTeams: { type: 'xsd:boolean', minOccurs: '0' }
      altSalesTotal: { type: 'xsd:double', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      discountTotal: { type: 'xsd:double', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      altShippingCost: { type: 'xsd:double', minOccurs: '0' }
      altHandlingCost: { type: 'xsd:double', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      itemList: { type: 'tranSales:EstimateItemList', minOccurs: '0' }
      salesTeamList: { type: 'tranSales:EstimateSalesTeamList', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      partnersList: { type: 'tranSales:EstimatePartnersList', minOccurs: '0' }
      shipGroupList: { type: 'tranSales:EstimateShipGroupList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  EstimateItem:
    elements:
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      price: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      revRecTermInMonths: { type: 'xsd:long', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      altSalesAmt: { type: 'xsd:double', minOccurs: '0' }
      fromJob: { type: 'xsd:boolean', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      isEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      shipGroup: { type: 'xsd:long', minOccurs: '0' }
      itemIsFulfilled: { type: 'xsd:boolean', minOccurs: '0' }
      shipAddress: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expectedShipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  EstimateItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranSales:EstimateItem', minOccurs: '0', maxOccurs: 'unbounded' }
  EstimateSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  EstimateSalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'tranSales:EstimateSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  EstimatePartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  EstimateShipGroupList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      shipGroup: { type: 'tranSales:TransactionShipGroup', minOccurs: '0', maxOccurs: 'unbounded' }
  GiftCertRedemption:
    elements:
      authCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      authCodeApplied: { type: 'xsd:double', minOccurs: '0' }
      authCodeAmtRemaining: { type: 'xsd:double', minOccurs: '0' }
      giftCertAvailable: { type: 'xsd:double', minOccurs: '0' }
  GiftCertRedemptionList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      giftCertRedemption: { type: 'tranSales:GiftCertRedemption', minOccurs: '0', maxOccurs: 'unbounded' }
  TransactionShipGroup:
    elements:
      id: { type: 'xsd:long', minOccurs: '0' }
      isFulfilled: { type: 'xsd:boolean', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      sourceAddressRef: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceAddress: { type: 'xsd:string', minOccurs: '0' }
      destinationAddressRef: { type: 'platformCore:RecordRef', minOccurs: '0' }
      destinationAddress: { type: 'xsd:string', minOccurs: '0' }
      shippingMethodRef: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingMethod: { type: 'xsd:string', minOccurs: '0' }
      isHandlingTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTaxRate: { type: 'xsd:string', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      handlingRate: { type: 'xsd:double', minOccurs: '0' }
      handlingTaxAmt: { type: 'xsd:double', minOccurs: '0' }
      handlingTax2Amt: { type: 'xsd:double', minOccurs: '0' }
      isShippingTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingTaxRate: { type: 'xsd:string', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      shippingRate: { type: 'xsd:double', minOccurs: '0' }
      shippingTaxAmt: { type: 'xsd:double', minOccurs: '0' }
      shippingTax2Amt: { type: 'xsd:double', minOccurs: '0' }
