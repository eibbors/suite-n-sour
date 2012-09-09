exports.complexTypes =
  CashRefund:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      otherRefNum: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      salesEffectiveDate: { type: 'xsd:dateTime', minOccurs: '0' }
      refundCheck: { type: 'xsd:boolean', minOccurs: '0' }
      toPrint2: { type: 'xsd:boolean', minOccurs: '0' }
      excludeCommission: { type: 'xsd:boolean', minOccurs: '0' }
      totalCostEstimate: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
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
      email: { type: 'xsd:string', minOccurs: '0' }
      toBeFaxed: { type: 'xsd:boolean', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      messageSel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      transactionBillAddress: { type: 'platformCommon:BillAddress', minOccurs: '0' }
      billAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billAddress: { type: 'xsd:string', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      syncSalesTeams: { type: 'xsd:boolean', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revenueStatus: { type: 'platformCommonTyp:RevenueStatus', minOccurs: '0' }
      recognizedRevenue: { type: 'xsd:double', minOccurs: '0' }
      deferredRevenue: { type: 'xsd:double', minOccurs: '0' }
      revRecOnRevCommitment: { type: 'xsd:boolean', minOccurs: '0' }
      creditCard: { type: 'platformCore:RecordRef', minOccurs: '0' }
      chargeIt: { type: 'xsd:boolean', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      ccStreet: { type: 'xsd:string', minOccurs: '0' }
      ccZipCode: { type: 'xsd:string', minOccurs: '0' }
      ccApproved: { type: 'xsd:boolean', minOccurs: '0' }
      creditCardProcessor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      debitCardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      pnRefNum: { type: 'xsd:string', minOccurs: '0' }
      validFrom: { type: 'xsd:dateTime', minOccurs: '0' }
      payPalTranId: { type: 'xsd:string', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      discountTotal: { type: 'xsd:double', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      altShippingCost: { type: 'xsd:double', minOccurs: '0' }
      payPalStatus: { type: 'xsd:string', minOccurs: '0' }
      altHandlingCost: { type: 'xsd:double', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      payPalAuthId: { type: 'xsd:string', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      giftCert: { type: 'platformCore:RecordRef', minOccurs: '0' }
      giftCertTotal: { type: 'xsd:double', minOccurs: '0' }
      giftCertApplied: { type: 'xsd:double', minOccurs: '0' }
      giftCertAvailable: { type: 'xsd:double', minOccurs: '0' }
      tranIsVsoeBundle: { type: 'xsd:boolean', minOccurs: '0' }
      payPalProcess: { type: 'xsd:boolean', minOccurs: '0' }
      vsoeAutoCalc: { type: 'xsd:boolean', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      itemList: { type: 'tranCust:CashRefundItemList', minOccurs: '0' }
      salesTeamList: { type: 'tranCust:CashRefundSalesTeamList', minOccurs: '0' }
      partnersList: { type: 'tranCust:CashRefundPartnersList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CashRefundItem:
    elements:
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      price: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:string', minOccurs: '0' }
      taxRate2: { type: 'xsd:string', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      giftCertFrom: { type: 'xsd:string', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      giftCertRecipientName: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientEmail: { type: 'xsd:string', minOccurs: '0' }
      giftCertMessage: { type: 'xsd:string', minOccurs: '0' }
      giftCertNumber: { type: 'xsd:string', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeIsEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeAmount: { type: 'xsd:double', minOccurs: '0' }
      vsoeAllocation: { type: 'xsd:double', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CashRefundItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranCust:CashRefundItem', minOccurs: '0', maxOccurs: 'unbounded' }
  CashRefundSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  CashRefundSalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'tranCust:CashRefundSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  CashRefundPartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerPayment:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      arAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      pending: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      payment: { type: 'xsd:double', minOccurs: '0' }
      autoApply: { type: 'xsd:boolean', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      checkNum: { type: 'xsd:string', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      creditCard: { type: 'platformCore:RecordRef', minOccurs: '0' }
      chargeIt: { type: 'xsd:boolean', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      ccStreet: { type: 'xsd:string', minOccurs: '0' }
      ccZipCode: { type: 'xsd:string', minOccurs: '0' }
      ccApproved: { type: 'xsd:boolean', minOccurs: '0' }
      authCode: { type: 'xsd:string', minOccurs: '0' }
      ccAvsStreetMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      ccAvsZipMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      ccSecurityCode: { type: 'xsd:string', minOccurs: '0' }
      ignoreAvs: { type: 'xsd:boolean', minOccurs: '0' }
      ccSecurityCodeMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      threeDStatusCode: { type: 'xsd:string', minOccurs: '0' }
      pnRefNum: { type: 'xsd:string', minOccurs: '0' }
      creditCardProcessor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      debitCardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      validFrom: { type: 'xsd:dateTime', minOccurs: '0' }
      undepFunds: { type: 'xsd:boolean', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      applied: { type: 'xsd:double', minOccurs: '0' }
      unapplied: { type: 'xsd:double', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      applyList: { type: 'tranCust:CustomerPaymentApplyList', minOccurs: '0' }
      creditList: { type: 'tranCust:CustomerPaymentCreditList', minOccurs: '0' }
      depositList: { type: 'tranCust:CustomerPaymentDepositList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CustomerPaymentApply:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      applyDate: { type: 'xsd:dateTime', minOccurs: '0' }
      job: { type: 'xsd:string', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      due: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      discDate: { type: 'xsd:dateTime', minOccurs: '0' }
      discAmt: { type: 'xsd:double', minOccurs: '0' }
      disc: { type: 'xsd:double', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  CustomerPaymentApplyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      apply: { type: 'tranCust:CustomerPaymentApply', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerPaymentCredit:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      creditDate: { type: 'xsd:dateTime', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      appliedTo: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      due: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  CustomerPaymentCreditList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      credit: { type: 'tranCust:CustomerPaymentCredit', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerPaymentDeposit:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      depositDate: { type: 'xsd:dateTime', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      remaining: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  CustomerPaymentDepositList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      deposit: { type: 'tranCust:CustomerPaymentDeposit', minOccurs: '0', maxOccurs: 'unbounded' }
  ReturnAuthorization:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      intercoTransaction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      intercoStatus: { type: 'platformCommonTyp:IntercoStatus', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      otherRefNum: { type: 'xsd:string', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      salesEffectiveDate: { type: 'xsd:dateTime', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      totalCostEstimate: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      excludeCommission: { type: 'xsd:boolean', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      discountItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discountRate: { type: 'xsd:string', minOccurs: '0' }
      taxItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate: { type: 'xsd:double', minOccurs: '0' }
      toBePrinted: { type: 'xsd:boolean', minOccurs: '0' }
      toBeEmailed: { type: 'xsd:boolean', minOccurs: '0' }
      toBeFaxed: { type: 'xsd:boolean', minOccurs: '0' }
      messageSel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      transactionBillAddress: { type: 'platformCommon:BillAddress', minOccurs: '0' }
      billAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billAddress: { type: 'xsd:string', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      syncSalesTeams: { type: 'xsd:boolean', minOccurs: '0' }
      revenueStatus: { type: 'platformCommonTyp:RevenueStatus', minOccurs: '0' }
      recognizedRevenue: { type: 'xsd:double', minOccurs: '0' }
      deferredRevenue: { type: 'xsd:double', minOccurs: '0' }
      revRecOnRevCommitment: { type: 'xsd:boolean', minOccurs: '0' }
      revCommitStatus: { type: 'platformCommonTyp:RevenueCommitStatus', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      creditCard: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      altSalesTotal: { type: 'xsd:double', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      ccStreet: { type: 'xsd:string', minOccurs: '0' }
      ccZipCode: { type: 'xsd:string', minOccurs: '0' }
      ccApproved: { type: 'xsd:boolean', minOccurs: '0' }
      pnRefNum: { type: 'xsd:string', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      discountTotal: { type: 'xsd:double', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      creditCardProcessor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      payPalAuthId: { type: 'xsd:string', minOccurs: '0' }
      payPalProcess: { type: 'xsd:boolean', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      debitCardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      validFrom: { type: 'xsd:dateTime', minOccurs: '0' }
      orderStatus: { type: 'tranCustTyp:ReturnAuthorizationOrderStatus', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      giftCert: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      giftCertTotal: { type: 'xsd:double', minOccurs: '0' }
      giftCertApplied: { type: 'xsd:double', minOccurs: '0' }
      giftCertAvailable: { type: 'xsd:double', minOccurs: '0' }
      tranIsVsoeBundle: { type: 'xsd:boolean', minOccurs: '0' }
      vsoeAutoCalc: { type: 'xsd:boolean', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      itemList: { type: 'tranCust:ReturnAuthorizationItemList', minOccurs: '0' }
      salesTeamList: { type: 'tranCust:ReturnAuthorizationSalesTeamList', minOccurs: '0' }
      partnersList: { type: 'tranCust:ReturnAuthorizationPartnersList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ReturnAuthorizationItem:
    elements:
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      quantityReceived: { type: 'xsd:double', minOccurs: '0' }
      quantityBilled: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      price: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      revRecTermInMonths: { type: 'xsd:long', minOccurs: '0' }
      deferRevRec: { type: 'xsd:boolean', minOccurs: '0' }
      isClosed: { type: 'xsd:boolean', minOccurs: '0' }
      isDropShipment: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      giftCertFrom: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientName: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientEmail: { type: 'xsd:string', minOccurs: '0' }
      giftCertMessage: { type: 'xsd:string', minOccurs: '0' }
      giftCertNumber: { type: 'xsd:string', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeIsEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeAmount: { type: 'xsd:double', minOccurs: '0' }
      altSalesAmt: { type: 'xsd:double', minOccurs: '0' }
      vsoeAllocation: { type: 'xsd:double', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ReturnAuthorizationItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranCust:ReturnAuthorizationItem', minOccurs: '0', maxOccurs: 'unbounded' }
  ReturnAuthorizationSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  ReturnAuthorizationSalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'tranCust:ReturnAuthorizationSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  ReturnAuthorizationPartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  CreditMemo:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRep: { type: 'platformCore:RecordRef', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contribPct: { type: 'xsd:string', minOccurs: '0' }
      otherRefNum: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      excludeCommission: { type: 'xsd:boolean', minOccurs: '0' }
      leadSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      onCreditHold: { type: 'xsd:string', minOccurs: '0' }
      amountPaid: { type: 'xsd:double', minOccurs: '0' }
      salesEffectiveDate: { type: 'xsd:dateTime', minOccurs: '0' }
      totalCostEstimate: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfit: { type: 'xsd:double', minOccurs: '0' }
      estGrossProfitPercent: { type: 'xsd:double', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      promoCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amountRemaining: { type: 'xsd:double', minOccurs: '0' }
      discountItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      discountRate: { type: 'xsd:string', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      taxItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate: { type: 'xsd:double', minOccurs: '0' }
      unapplied: { type: 'xsd:double', minOccurs: '0' }
      autoApply: { type: 'xsd:boolean', minOccurs: '0' }
      applied: { type: 'xsd:double', minOccurs: '0' }
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
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      handlingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:string', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      discountTotal: { type: 'xsd:double', minOccurs: '0' }
      revenueStatus: { type: 'platformCommonTyp:RevenueStatus', minOccurs: '0' }
      recognizedRevenue: { type: 'xsd:double', minOccurs: '0' }
      deferredRevenue: { type: 'xsd:double', minOccurs: '0' }
      revRecOnRevCommitment: { type: 'xsd:boolean', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      altShippingCost: { type: 'xsd:double', minOccurs: '0' }
      altHandlingCost: { type: 'xsd:double', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      salesGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      syncSalesTeams: { type: 'xsd:boolean', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      giftCert: { type: 'platformCore:RecordRef', minOccurs: '0' }
      giftCertTotal: { type: 'xsd:double', minOccurs: '0' }
      giftCertApplied: { type: 'xsd:double', minOccurs: '0' }
      giftCertAvailable: { type: 'xsd:double', minOccurs: '0' }
      tranIsVsoeBundle: { type: 'xsd:boolean', minOccurs: '0' }
      vsoeAutoCalc: { type: 'xsd:boolean', minOccurs: '0' }
      syncPartnerTeams: { type: 'xsd:boolean', minOccurs: '0' }
      salesTeamList: { type: 'tranCust:CreditMemoSalesTeamList', minOccurs: '0' }
      itemList: { type: 'tranCust:CreditMemoItemList', minOccurs: '0' }
      partnersList: { type: 'tranCust:CreditMemoPartnersList', minOccurs: '0' }
      applyList: { type: 'tranCust:CreditMemoApplyList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CreditMemoSalesTeam:
    elements:
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isPrimary: { type: 'xsd:boolean', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
  CreditMemoSalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'tranCust:CreditMemoSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  CreditMemoItem:
    elements:
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      price: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revRecTermInMonths: { type: 'xsd:long', minOccurs: '0' }
      revRecEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      deferRevRec: { type: 'xsd:boolean', minOccurs: '0' }
      giftCertFrom: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientName: { type: 'xsd:string', minOccurs: '0' }
      giftCertRecipientEmail: { type: 'xsd:string', minOccurs: '0' }
      giftCertMessage: { type: 'xsd:string', minOccurs: '0' }
      giftCertNumber: { type: 'xsd:string', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeIsEstimate: { type: 'xsd:boolean', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeAmount: { type: 'xsd:double', minOccurs: '0' }
      vsoeAllocation: { type: 'xsd:double', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CreditMemoItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranCust:CreditMemoItem', minOccurs: '0', maxOccurs: 'unbounded' }
  CreditMemoApply:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      applyDate: { type: 'xsd:dateTime', minOccurs: '0' }
      job: { type: 'xsd:string', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      due: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
  CreditMemoApplyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      apply: { type: 'tranCust:CreditMemoApply', minOccurs: '0', maxOccurs: 'unbounded' }
  CreditMemoPartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerRefund:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      arAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      address: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      voidJournal: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      toBePrinted: { type: 'xsd:boolean', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      debitCardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      creditCardProcessor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      chargeIt: { type: 'xsd:boolean', minOccurs: '0' }
      pnRefNum: { type: 'xsd:string', minOccurs: '0' }
      validFrom: { type: 'xsd:dateTime', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      creditCard: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      ccStreet: { type: 'xsd:string', minOccurs: '0' }
      ccZipCode: { type: 'xsd:string', minOccurs: '0' }
      ccApproved: { type: 'xsd:boolean', minOccurs: '0' }
      applyList: { type: 'tranCust:CustomerRefundApplyList', minOccurs: '0' }
      depositList: { type: 'tranCust:CustomerRefundDepositList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CustomerRefundApply:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      applyDate: { type: 'xsd:dateTime', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      due: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  CustomerRefundApplyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      apply: { type: 'tranCust:CustomerRefundApply', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerRefundDeposit:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      depositDate: { type: 'xsd:dateTime', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      remaining: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  CustomerRefundDepositList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      customerRefundDeposit: { type: 'tranCust:CustomerRefundDeposit', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomerDeposit:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesOrder: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      payment: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      checkNum: { type: 'xsd:string', minOccurs: '0' }
      creditCardProcessor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      creditCard: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ccSecurityCode: { type: 'xsd:string', minOccurs: '0' }
      ccNumber: { type: 'xsd:string', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      ccExpireDate: { type: 'xsd:dateTime', minOccurs: '0' }
      debitCardIssueNo: { type: 'xsd:string', minOccurs: '0' }
      validFrom: { type: 'xsd:dateTime', minOccurs: '0' }
      ccName: { type: 'xsd:string', minOccurs: '0' }
      ccStreet: { type: 'xsd:string', minOccurs: '0' }
      ccZipCode: { type: 'xsd:string', minOccurs: '0' }
      chargeIt: { type: 'xsd:boolean', minOccurs: '0' }
      ccApproved: { type: 'xsd:boolean', minOccurs: '0' }
      pnRefNum: { type: 'xsd:string', minOccurs: '0' }
      authCode: { type: 'xsd:string', minOccurs: '0' }
      ccAvsStreetMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      softDescriptor: { type: 'xsd:string', minOccurs: '0' }
      ccAvsZipMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      ccSecurityCodeMatch: { type: 'platformCommonTyp:AvsMatchCode', minOccurs: '0' }
      threeDStatusCode: { type: 'xsd:string', minOccurs: '0' }
      ignoreAvs: { type: 'xsd:boolean', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      undepFunds: { type: 'xsd:boolean', minOccurs: '0' }
      applyList: { type: 'tranCust:CustomerDepositApplyList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CustomerDepositApply:
    elements:
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      applyDate: { type: 'xsd:dateTime', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      job: { type: 'xsd:string', minOccurs: '0' }
  CustomerDepositApplyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      customerDepositApply: { type: 'tranCust:CustomerDepositApply', minOccurs: '0', maxOccurs: 'unbounded' }
  DepositApplication:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      arAcct: { type: 'xsd:string', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deposit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      depDate: { type: 'xsd:dateTime', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      applied: { type: 'xsd:double', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      unapplied: { type: 'xsd:double', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      applyList: { type: 'tranCust:DepositApplicationApplyList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  DepositApplicationApply:
    elements:
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      applyDate: { type: 'xsd:dateTime', minOccurs: '0' }
      job: { type: 'xsd:string', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      due: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  DepositApplicationApplyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      apply: { type: 'tranCust:DepositApplicationApply', minOccurs: '0', maxOccurs: 'unbounded' }
