exports.complexTypes =
  ClassTranslation:
    elements:
      locale: { type: 'xsd:string', minOccurs: '0' }
      language: { type: 'xsd:string', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
  ClassTranslationList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      classTranslation: { type: 'listAcct:ClassTranslation', minOccurs: '0', maxOccurs: 'unbounded' }
  ContactCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      private: { type: 'xsd:boolean', minOccurs: '0' }
      sync: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  CustomerCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  SalesRole:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isSalesRep: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  PriceLevel:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      discountpct: { type: 'xsd:double', minOccurs: '0' }
      updateExistingPrices: { type: 'xsd:boolean', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  WinLossReason:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  Term:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      dateDriven: { type: 'xsd:boolean', minOccurs: '0' }
      daysUntilNetDue: { type: 'xsd:long', minOccurs: '0' }
      discountPercent: { type: 'xsd:double', minOccurs: '0' }
      daysUntilExpiry: { type: 'xsd:long', minOccurs: '0' }
      dayOfMonthNetDue: { type: 'xsd:long', minOccurs: '0' }
      dueNextMonthIfWithinDays: { type: 'xsd:long', minOccurs: '0' }
      discountPercentDateDriven: { type: 'xsd:double', minOccurs: '0' }
      dayDiscountExpires: { type: 'xsd:long', minOccurs: '0' }
      preferred: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  NoteType:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  PaymentMethod:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      creditCard: { type: 'xsd:boolean', minOccurs: '0' }
      undepFunds: { type: 'xsd:boolean', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isDebitCard: { type: 'xsd:boolean', minOccurs: '0' }
      merchantAccountsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      payPalEmailAddress: { type: 'xsd:string', minOccurs: '0' }
      expressCheckoutArrangement: { type: 'xsd:string', minOccurs: '0' }
      useExpressCheckout: { type: 'xsd:boolean', minOccurs: '0' }
  LeadSource:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  Price:
    elements:
      value: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
  PriceList:
    elements:
      price: { type: 'listAcct:Price', minOccurs: '0', maxOccurs: 'unbounded' }
  Pricing:
    elements:
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      priceLevel: { type: 'platformCore:RecordRef', minOccurs: '0' }
      discount: { type: 'xsd:double', minOccurs: '0' }
      priceList: { type: 'listAcct:PriceList', minOccurs: '0' }
  PricingMatrix:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      pricing: { type: 'listAcct:Pricing', minOccurs: '0', maxOccurs: 'unbounded' }
  Rate:
    elements:
      value: { type: 'xsd:double', minOccurs: '0' }
      priceLevel: { type: 'platformCore:RecordRef', minOccurs: '0' }
  RateList:
    elements:
      rate: { type: 'listAcct:Rate', minOccurs: '0', maxOccurs: 'unbounded' }
  BillingRates:
    elements:
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingClass: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rateList: { type: 'listAcct:RateList', minOccurs: '0' }
  BillingRatesMatrix:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      billingRates: { type: 'listAcct:BillingRates', minOccurs: '0', maxOccurs: 'unbounded' }
  Translation:
    elements:
      locale: { type: 'platformCommonTyp:Language', minOccurs: '0' }
      language: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
  TranslationList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      translation: { type: 'listAcct:Translation', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemOptionsList:
    elements:
      itemOptions: { type: 'platformCore:RecordRef', maxOccurs: 'unbounded' }
  ItemVendor:
    elements:
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vendorCode: { type: 'xsd:string', minOccurs: '0' }
      vendorCurrencyName: { type: 'xsd:string', minOccurs: '0' }
      vendorCurrency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchasePrice: { type: 'xsd:double', minOccurs: '0' }
      preferredVendor: { type: 'xsd:boolean', minOccurs: '0' }
      schedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'xsd:string', minOccurs: '0' }
  ItemVendorList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      itemVendor: { type: 'listAcct:ItemVendor', minOccurs: '0', maxOccurs: 'unbounded' }
  SiteCategory:
    elements:
      website: { type: 'platformCore:RecordRef', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isDefault: { type: 'xsd:boolean', minOccurs: '0' }
      categoryDescription: { type: 'xsd:string', minOccurs: '0' }
  SiteCategoryList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      siteCategory: { type: 'listAcct:SiteCategory', minOccurs: '0', maxOccurs: 'unbounded' }
  ProductFeedList:
    elements:
      productFeed: { type: 'listAcctTyp:ItemProductFeed', maxOccurs: 'unbounded' }
  ItemMember:
    elements:
      memberDescr: { type: 'xsd:string', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      memberUnit: { type: 'xsd:string', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxcode: { type: 'xsd:string', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxrate: { type: 'xsd:double', minOccurs: '0' }
  ItemMemberList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      itemMember: { type: 'listAcct:ItemMember', minOccurs: '0', maxOccurs: 'unbounded' }
  InventoryItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      copyDescription: { type: 'xsd:boolean', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dateConvertedToInv: { type: 'xsd:dateTime', minOccurs: '0' }
      originalItemType: { type: 'listAcctTyp:ItemType', minOccurs: '0' }
      originalItemSubtype: { type: 'listAcctTyp:ItemSubType', minOccurs: '0' }
      cogsAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      assetAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      matchBillToReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      billQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billExchRateVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      gainLossAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      weightUnit: { type: 'listAcctTyp:ItemWeightUnit', minOccurs: '0' }
      weightUnits: { type: 'xsd:string', minOccurs: '0' }
      costingMethodDisplay: { type: 'xsd:string', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackLandedCost: { type: 'xsd:boolean', minOccurs: '0' }
      isDropShipItem: { type: 'xsd:boolean', minOccurs: '0' }
      isSpecialOrderItem: { type: 'xsd:boolean', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturerAddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'listAcctTyp:ScheduleBCode', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      softDescriptor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      purchasePriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      reorderPointUnits: { type: 'xsd:string', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      preferredStockLevelUnits: { type: 'xsd:string', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      transferPrice: { type: 'xsd:double', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      costEstimateUnits: { type: 'xsd:string', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      preferredLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      reorderMultiple: { type: 'xsd:long', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      totalValue: { type: 'xsd:double', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      useBins: { type: 'xsd:boolean', minOccurs: '0' }
      quantityReorderUnits: { type: 'xsd:string', minOccurs: '0' }
      leadTime: { type: 'xsd:long', minOccurs: '0' }
      autoLeadTime: { type: 'xsd:boolean', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      autoPreferredStockLevel: { type: 'xsd:boolean', minOccurs: '0' }
      preferredStockLevelDays: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevel: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevelDays: { type: 'xsd:long', minOccurs: '0' }
      seasonalDemand: { type: 'xsd:boolean', minOccurs: '0' }
      safetyStockLevelUnits: { type: 'xsd:string', minOccurs: '0' }
      demandModifier: { type: 'xsd:double', minOccurs: '0' }
      autoReorderPoint: { type: 'xsd:boolean', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costingMethod: { type: 'listAcctTyp:ItemCostingMethod', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      onHandValueMli: { type: 'xsd:double', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      quantityCommittedUnits: { type: 'xsd:string', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityAvailableUnits: { type: 'xsd:string', minOccurs: '0' }
      quantityOnHandUnits: { type: 'xsd:string', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityOnOrderUnits: { type: 'xsd:string', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      binNumberList: { type: 'listAcct:InventoryItemBinNumberList', minOccurs: '0' }
      locationsList: { type: 'listAcct:InventoryItemLocationsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  MatrixOptionList:
    elements:
      matrixOption: { type: 'platformCore:SelectCustomFieldRef', minOccurs: '0', maxOccurs: 'unbounded' }
  InventoryItemBinNumber:
    elements:
      binNumber: { type: 'platformCore:RecordRef', minOccurs: '0' }
      onHand: { type: 'xsd:string', minOccurs: '0' }
      onHandAvail: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'xsd:string', minOccurs: '0' }
      preferredBin: { type: 'xsd:boolean', minOccurs: '0' }
  InventoryItemBinNumberList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      binNumber: { type: 'listAcct:InventoryItemBinNumber', minOccurs: '0', maxOccurs: 'unbounded' }
  InventoryItemLocations:
    elements:
      location: { type: 'xsd:string', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      onHandValueMli: { type: 'xsd:double', minOccurs: '0' }
      averageCostMli: { type: 'xsd:double', minOccurs: '0' }
      lastPurchasePriceMli: { type: 'xsd:double', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      locationId: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
  InventoryItemLocationsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      locations: { type: 'listAcct:InventoryItemLocations', minOccurs: '0', maxOccurs: 'unbounded' }
  PresentationItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      presentationItem: { type: 'platformCommon:PresentationItem', minOccurs: '0', maxOccurs: 'unbounded' }
  DescriptionItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  DiscountItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      nonPosting: { type: 'xsd:boolean', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      isPreTax: { type: 'xsd:boolean', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  DownloadItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      numOfAllowedDownloads: { type: 'xsd:long', minOccurs: '0' }
      daysBeforeExpiration: { type: 'xsd:long', minOccurs: '0' }
      immediateDownload: { type: 'xsd:boolean', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  MarkupItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      nonPosting: { type: 'xsd:boolean', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      isPreTax: { type: 'xsd:boolean', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  PaymentItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      paymentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      undepFunds: { type: 'xsd:boolean', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  SubtotalItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  NonInventoryPurchaseItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferralAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizationTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      residual: { type: 'xsd:string', minOccurs: '0' }
      amortizationPeriod: { type: 'xsd:long', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  NonInventorySaleItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      weightUnit: { type: 'listAcctTyp:ItemWeightUnit', minOccurs: '0' }
      weightUnits: { type: 'xsd:string', minOccurs: '0' }
      costEstimateUnits: { type: 'xsd:string', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturerAddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'listAcctTyp:ScheduleBCode', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'xsd:string', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  NonInventoryResaleItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      copyDescription: { type: 'xsd:boolean', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isDropShipItem: { type: 'xsd:boolean', minOccurs: '0' }
      isSpecialOrderItem: { type: 'xsd:boolean', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      weightUnit: { type: 'listAcctTyp:ItemWeightUnit', minOccurs: '0' }
      weightUnits: { type: 'xsd:string', minOccurs: '0' }
      costEstimateUnits: { type: 'xsd:string', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferralAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizationTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      residual: { type: 'xsd:string', minOccurs: '0' }
      amortizationPeriod: { type: 'xsd:long', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturerAddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'listAcctTyp:ScheduleBCode', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'xsd:string', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  OtherChargeResaleItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateUnits: { type: 'xsd:string', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferralAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizationTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      residual: { type: 'xsd:string', minOccurs: '0' }
      amortizationPeriod: { type: 'xsd:long', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'xsd:string', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  OtherChargePurchaseItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferralAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizationTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      residual: { type: 'xsd:string', minOccurs: '0' }
      amortizationPeriod: { type: 'xsd:long', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ServiceResaleItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateUnits: { type: 'xsd:string', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferralAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizationTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      residual: { type: 'xsd:string', minOccurs: '0' }
      amortizationPeriod: { type: 'xsd:long', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'xsd:string', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      createJob: { type: 'xsd:boolean', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      itemTaskTemplatesList: { type: 'listAcct:ServiceItemTaskTemplatesList', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      billingRatesMatrix: { type: 'listAcct:BillingRatesMatrix', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ServicePurchaseItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      expenseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferralAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizationTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      residual: { type: 'xsd:string', minOccurs: '0' }
      amortizationPeriod: { type: 'xsd:long', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ServiceSaleItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateUnits: { type: 'xsd:string', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'xsd:string', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      createJob: { type: 'xsd:boolean', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      itemTaskTemplatesList: { type: 'listAcct:ServiceItemTaskTemplatesList', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      billingRatesMatrix: { type: 'listAcct:BillingRatesMatrix', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  OtherChargeSaleItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimateUnits: { type: 'xsd:string', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'xsd:string', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  Currency:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      symbol: { type: 'xsd:string', minOccurs: '0' }
      isBaseCurrency: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      locale: { type: 'listAcctTyp:CurrencyLocale', minOccurs: '0' }
      formatSample: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      fxRateUpdateTimezone: { type: 'listAcctTyp:CurrencyFxRateUpdateTimezone', minOccurs: '0' }
      inclInFxRateUpdates: { type: 'xsd:boolean', minOccurs: '0' }
      currencyPrecision: { type: 'listAcctTyp:CurrencyCurrencyPrecision', minOccurs: '0' }
  ExpenseCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      expenseAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  Account:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      acctType: { type: 'listAcctTyp:AccountType', minOccurs: '0' }
      acctNumber: { type: 'xsd:string', minOccurs: '0' }
      acctName: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exchangeRate: { type: 'xsd:string', minOccurs: '0' }
      generalRate: { type: 'listAcctTyp:ConsolidatedRate', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      cashFlowRate: { type: 'listAcctTyp:ConsolidatedRate', minOccurs: '0' }
      billableExpensesAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferralAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      curDocNum: { type: 'xsd:long', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventory: { type: 'xsd:boolean', minOccurs: '0' }
      eliminate: { type: 'xsd:boolean', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      category1099misc: { type: 'platformCore:RecordRef', minOccurs: '0' }
      openingBalance: { type: 'xsd:double', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      revalue: { type: 'xsd:boolean', minOccurs: '0' }
      translationsList: { type: 'listAcct:AccountTranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  AccountTranslationList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      translation: { type: 'listAcct:ClassTranslation', minOccurs: '0', maxOccurs: 'unbounded' }
  AccountSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:AccountSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  AccountSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:AccountSearch', minOccurs: '0' }
      columns: { type: 'listAcct:AccountSearchRow', minOccurs: '0' }
  AccountSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:AccountSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  Department:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      classTranslationList: { type: 'listAcct:ClassTranslationList', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  DepartmentSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:DepartmentSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  DepartmentSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:DepartmentSearch', minOccurs: '0' }
      columns: { type: 'listAcct:DepartmentSearchRow', minOccurs: '0' }
  DepartmentSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:DepartmentSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  Classification:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      classTranslationList: { type: 'listAcct:ClassTranslationList', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ClassificationSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:ClassificationSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  ClassificationSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:ClassificationSearch', minOccurs: '0' }
      columns: { type: 'listAcct:ClassificationSearchRow', minOccurs: '0' }
  ClassificationSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:ClassificationSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  Location:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      tranPrefix: { type: 'xsd:string', minOccurs: '0' }
      attention: { type: 'xsd:string', minOccurs: '0' }
      addressee: { type: 'xsd:string', minOccurs: '0' }
      addrPhone: { type: 'xsd:string', minOccurs: '0' }
      addr1: { type: 'xsd:string', minOccurs: '0' }
      addr2: { type: 'xsd:string', minOccurs: '0' }
      addr3: { type: 'xsd:string', minOccurs: '0' }
      city: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
      zip: { type: 'xsd:string', minOccurs: '0' }
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      addrText: { type: 'xsd:string', minOccurs: '0' }
      override: { type: 'xsd:boolean', minOccurs: '0' }
      logo: { type: 'platformCore:RecordRef', minOccurs: '0' }
      makeInventoryAvailable: { type: 'xsd:boolean', minOccurs: '0' }
      makeInventoryAvailableStore: { type: 'xsd:boolean', minOccurs: '0' }
      classTranslationList: { type: 'listAcct:ClassTranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  LocationSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:LocationSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  LocationSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:LocationSearch', minOccurs: '0' }
      columns: { type: 'listAcct:LocationSearchRow', minOccurs: '0' }
  LocationSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:LocationSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  UnitsType:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      uomList: { type: 'listAcct:UnitsTypeUomList', minOccurs: '0' }
  UnitsTypeUom:
    elements:
      internalId: { type: 'xsd:string', minOccurs: '0' }
      unitName: { type: 'xsd:string', minOccurs: '0' }
      pluralName: { type: 'xsd:string', minOccurs: '0' }
      abbreviation: { type: 'xsd:string', minOccurs: '0' }
      pluralAbbreviation: { type: 'xsd:string', minOccurs: '0' }
      conversionRate: { type: 'xsd:double', minOccurs: '0' }
      baseUnit: { type: 'xsd:boolean', minOccurs: '0' }
  UnitsTypeUomList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      uom: { type: 'listAcct:UnitsTypeUom', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
      binNumberJoin: { type: 'platformCommon:BinSearchBasic', minOccurs: '0' }
      correlatedItemJoin: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      inventoryDetailJoin: { type: 'platformCommon:InventoryDetailSearchBasic', minOccurs: '0' }
      inventoryLocationJoin: { type: 'platformCommon:LocationSearchBasic', minOccurs: '0' }
      inventoryNumberJoin: { type: 'platformCommon:InventoryNumberSearchBasic', minOccurs: '0' }
      memberItemJoin: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
      parentJoin: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
      preferredLocationJoin: { type: 'platformCommon:LocationSearchBasic', minOccurs: '0' }
      preferredVendorJoin: { type: 'platformCommon:VendorSearchBasic', minOccurs: '0' }
      shopperJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
      vendorJoin: { type: 'platformCommon:VendorSearchBasic', minOccurs: '0' }
  ItemSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:ItemSearch', minOccurs: '0' }
      columns: { type: 'listAcct:ItemSearchRow', minOccurs: '0' }
  ItemSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
      binNumberJoin: { type: 'platformCommon:BinSearchRowBasic', minOccurs: '0' }
      correlatedItemJoin: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      inventoryDetailJoin: { type: 'platformCommon:InventoryDetailSearchRowBasic', minOccurs: '0' }
      inventoryLocationJoin: { type: 'platformCommon:LocationSearchRowBasic', minOccurs: '0' }
      inventoryNumberJoin: { type: 'platformCommon:InventoryNumberSearchRowBasic', minOccurs: '0' }
      memberItemJoin: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
      parentJoin: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
      preferredLocationJoin: { type: 'platformCommon:LocationSearchRowBasic', minOccurs: '0' }
      preferredVendorJoin: { type: 'platformCommon:VendorSearchRowBasic', minOccurs: '0' }
      shopperJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      transactionJoin: { type: 'platformCommon:TransactionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
      vendorJoin: { type: 'platformCommon:VendorSearchRowBasic', minOccurs: '0' }
  ContactRole:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  Bin:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      binNumber: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  BinSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:BinSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  BinSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:BinSearch', minOccurs: '0' }
      columns: { type: 'listAcct:BinSearchRow', minOccurs: '0' }
  BinSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:BinSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  SalesTaxItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      itemId: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      taxType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxAgency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      effectiveFrom: { type: 'xsd:dateTime', minOccurs: '0' }
      validUntil: { type: 'xsd:dateTime', minOccurs: '0' }
      eccode: { type: 'xsd:boolean', minOccurs: '0' }
      reverseCharge: { type: 'xsd:boolean', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exempt: { type: 'xsd:boolean', minOccurs: '0' }
      isDefault: { type: 'xsd:boolean', minOccurs: '0' }
      excludeFromTaxReports: { type: 'xsd:boolean', minOccurs: '0' }
      available: { type: 'listAcctTyp:SalesTaxItemAvailable', minOccurs: '0' }
      export: { type: 'xsd:boolean', minOccurs: '0' }
      taxAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      county: { type: 'xsd:string', minOccurs: '0' }
      city: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
      zip: { type: 'xsd:string', minOccurs: '0' }
      nexusCountry: { type: 'platformCore:RecordRef', minOccurs: '0' }
  TaxGroup:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      itemId: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
      taxitem1: { type: 'platformCore:RecordRef', minOccurs: '0' }
      unitprice1: { type: 'xsd:string', minOccurs: '0' }
      taxitem2: { type: 'platformCore:RecordRef', minOccurs: '0' }
      unitprice2: { type: 'xsd:string', minOccurs: '0' }
      piggyback: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      taxType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      county: { type: 'xsd:string', minOccurs: '0' }
      city: { type: 'xsd:string', minOccurs: '0' }
      zip: { type: 'xsd:string', minOccurs: '0' }
      nexusCountry: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isDefault: { type: 'xsd:boolean', minOccurs: '0' }
      taxItemList: { type: 'listAcct:TaxGroupTaxItemList', minOccurs: '0' }
  TaxGroupTaxItem:
    elements:
      taxName: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      basis: { type: 'xsd:double', minOccurs: '0' }
      taxType: { type: 'xsd:string', minOccurs: '0' }
  TaxGroupTaxItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      taxItem: { type: 'listAcct:TaxGroupTaxItem', minOccurs: '0', maxOccurs: 'unbounded' }
  TaxType:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      nexusesTaxList: { type: 'listAcct:TaxTypeNexusesTaxList', minOccurs: '0' }
  TaxTypeNexusesTax:
    elements:
      nexus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      saleTaxAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchTaxAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
  TaxTypeNexusesTaxList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      nexusesTax: { type: 'listAcct:TaxTypeNexusesTax', minOccurs: '0', maxOccurs: 'unbounded' }
  SerializedInventoryItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      copyDescription: { type: 'xsd:boolean', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      cogsAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      assetAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      matchBillToReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      billQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billExchRateVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      gainLossAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      costingMethodDisplay: { type: 'xsd:string', minOccurs: '0' }
      shippingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      handlingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      safetyStockLevelUnits: { type: 'xsd:string', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackLandedCost: { type: 'xsd:boolean', minOccurs: '0' }
      isDropShipItem: { type: 'xsd:boolean', minOccurs: '0' }
      isSpecialOrderItem: { type: 'xsd:boolean', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturerAddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'listAcctTyp:ScheduleBCode', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      transferPrice: { type: 'xsd:double', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      preferredLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      quantityReorderUnits: { type: 'xsd:string', minOccurs: '0' }
      reorderMultiple: { type: 'xsd:long', minOccurs: '0' }
      totalValue: { type: 'xsd:double', minOccurs: '0' }
      useBins: { type: 'xsd:boolean', minOccurs: '0' }
      leadTime: { type: 'xsd:long', minOccurs: '0' }
      autoLeadTime: { type: 'xsd:boolean', minOccurs: '0' }
      autoReorderPoint: { type: 'xsd:boolean', minOccurs: '0' }
      autoPreferredStockLevel: { type: 'xsd:boolean', minOccurs: '0' }
      preferredStockLevelDays: { type: 'xsd:double', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevel: { type: 'xsd:double', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevelDays: { type: 'xsd:long', minOccurs: '0' }
      seasonalDemand: { type: 'xsd:boolean', minOccurs: '0' }
      demandModifier: { type: 'xsd:double', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      weightUnit: { type: 'listAcctTyp:ItemWeightUnit', minOccurs: '0' }
      weightUnits: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHandUnits: { type: 'xsd:string', minOccurs: '0' }
      onHandValueMli: { type: 'xsd:double', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      reorderPointUnits: { type: 'xsd:string', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevelUnits: { type: 'xsd:string', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchasePriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      itemNumberOptionsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      numbersList: { type: 'listAcct:SerializedInventoryItemNumbersList', minOccurs: '0' }
      binNumberList: { type: 'listAcct:InventoryItemBinNumberList', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      locationsList: { type: 'listAcct:SerializedInventoryItemLocationsList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  SerializedInventoryItemLocations:
    elements:
      location: { type: 'xsd:string', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      onHandValueMli: { type: 'xsd:double', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      averageCostMli: { type: 'xsd:double', minOccurs: '0' }
      lastPurchasePriceMli: { type: 'xsd:double', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      locationId: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
  SerializedInventoryItemLocationsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      locations: { type: 'listAcct:SerializedInventoryItemLocations', minOccurs: '0', maxOccurs: 'unbounded' }
  SerializedInventoryItemNumbers:
    elements:
      serialNumber: { type: 'platformCore:RecordRef', minOccurs: '0' }
  SerializedInventoryItemNumbersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      numbers: { type: 'listAcct:SerializedInventoryItemNumbers', minOccurs: '0', maxOccurs: 'unbounded' }
  LotNumberedInventoryItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      matrixType: { type: 'listAcctTyp:ItemMatrixType', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      copyDescription: { type: 'xsd:boolean', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      cogsAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      assetAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      matchBillToReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      billQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billExchRateVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      gainLossAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      costingMethodDisplay: { type: 'xsd:string', minOccurs: '0' }
      shippingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      handlingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      safetyStockLevelUnits: { type: 'xsd:string', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackLandedCost: { type: 'xsd:boolean', minOccurs: '0' }
      isDropShipItem: { type: 'xsd:boolean', minOccurs: '0' }
      isSpecialOrderItem: { type: 'xsd:boolean', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturerAddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'listAcctTyp:ScheduleBCode', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      purchasePriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      transferPrice: { type: 'xsd:double', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      preferredLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costUnits: { type: 'xsd:string', minOccurs: '0' }
      reorderMultiple: { type: 'xsd:long', minOccurs: '0' }
      quantityReorderUnits: { type: 'xsd:string', minOccurs: '0' }
      totalValue: { type: 'xsd:double', minOccurs: '0' }
      useBins: { type: 'xsd:boolean', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      leadTime: { type: 'xsd:long', minOccurs: '0' }
      autoLeadTime: { type: 'xsd:boolean', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      autoReorderPoint: { type: 'xsd:boolean', minOccurs: '0' }
      autoPreferredStockLevel: { type: 'xsd:boolean', minOccurs: '0' }
      preferredStockLevelDays: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevel: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevelDays: { type: 'xsd:long', minOccurs: '0' }
      seasonalDemand: { type: 'xsd:boolean', minOccurs: '0' }
      demandModifier: { type: 'xsd:double', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      weightUnit: { type: 'listAcctTyp:ItemWeightUnit', minOccurs: '0' }
      weightUnits: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHandUnits: { type: 'xsd:string', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      onHandValueMli: { type: 'xsd:double', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      reorderPointUnits: { type: 'xsd:string', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevelUnits: { type: 'xsd:string', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      matrixOptionList: { type: 'listAcct:MatrixOptionList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      itemNumberOptionsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      numbersList: { type: 'listAcct:LotNumberedInventoryItemNumbersList', minOccurs: '0' }
      binNumberList: { type: 'listAcct:InventoryItemBinNumberList', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      locationsList: { type: 'listAcct:LotNumberedInventoryItemLocationsList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  LotNumberedInventoryItemLocations:
    elements:
      location: { type: 'xsd:string', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      onHandValueMli: { type: 'xsd:double', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      averageCostMli: { type: 'xsd:double', minOccurs: '0' }
      lastPurchasePriceMli: { type: 'xsd:double', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      locationId: { type: 'platformCore:RecordRef', minOccurs: '0' }
      locationlookup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location_display: { type: 'xsd:string', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
  LotNumberedInventoryItemLocationsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      locations: { type: 'listAcct:LotNumberedInventoryItemLocations', minOccurs: '0', maxOccurs: 'unbounded' }
  LotNumberedInventoryItemNumbers:
    elements:
      serialNumber: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
  LotNumberedInventoryItemNumbersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      numbers: { type: 'listAcct:LotNumberedInventoryItemNumbers', minOccurs: '0', maxOccurs: 'unbounded' }
  GiftCertificateItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      salesDescription: { type: 'xsd:string', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      liabilityAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      daysBeforeExpiration: { type: 'xsd:long', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      authCodesList: { type: 'listAcct:GiftCertificateItemAuthCodesList', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  GiftCertificateItemAuthCodes:
    elements:
      authCode: { type: 'xsd:string', minOccurs: '0' }
      used: { type: 'xsd:boolean', minOccurs: '0' }
  GiftCertificateItemAuthCodesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      authCodes: { type: 'listAcct:GiftCertificateItemAuthCodes', minOccurs: '0', maxOccurs: 'unbounded' }
  Subsidiary:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      showSubsidiaryName: { type: 'xsd:boolean', minOccurs: '0' }
      url: { type: 'xsd:string', minOccurs: '0' }
      logo: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranPrefix: { type: 'xsd:string', minOccurs: '0' }
      pageLogo: { type: 'platformCore:RecordRef', minOccurs: '0' }
      attention: { type: 'xsd:string', minOccurs: '0' }
      addressee: { type: 'xsd:string', minOccurs: '0' }
      addrPhone: { type: 'xsd:string', minOccurs: '0' }
      addr1: { type: 'xsd:string', minOccurs: '0' }
      addr2: { type: 'xsd:string', minOccurs: '0' }
      addr3: { type: 'xsd:string', minOccurs: '0' }
      city: { type: 'xsd:string', minOccurs: '0' }
      state: { type: 'xsd:string', minOccurs: '0' }
      zip: { type: 'xsd:string', minOccurs: '0' }
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      addrText: { type: 'xsd:string', minOccurs: '0' }
      override: { type: 'xsd:boolean', minOccurs: '0' }
      shipAddr: { type: 'xsd:string', minOccurs: '0' }
      returnAddr: { type: 'xsd:string', minOccurs: '0' }
      companyNameForSupportMessages: { type: 'xsd:string', minOccurs: '0' }
      mainSupportEmailAddress: { type: 'xsd:string', minOccurs: '0' }
      anonymousCustomerInboundEmail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      anonymousCustomerOnlineForms: { type: 'platformCore:RecordRef', minOccurs: '0' }
      caseCreationTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      caseUpdateTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      caseAutomaticClosureTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      caseAssignmentTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      employeeCaseUpdateTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      caseCopyEmployeeTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      caseEscalationTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      returnAddress1: { type: 'xsd:string', minOccurs: '0' }
      returnAddress2: { type: 'xsd:string', minOccurs: '0' }
      returnCity: { type: 'xsd:string', minOccurs: '0' }
      returnState: { type: 'xsd:string', minOccurs: '0' }
      returnCountry: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      returnZip: { type: 'xsd:string', minOccurs: '0' }
      legalName: { type: 'xsd:string', minOccurs: '0' }
      isElimination: { type: 'xsd:boolean', minOccurs: '0' }
      allowPayroll: { type: 'xsd:boolean', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      edition: { type: 'xsd:string', minOccurs: '0' }
      federalIdNumber: { type: 'xsd:string', minOccurs: '0' }
      addrLanguage: { type: 'xsd:string', minOccurs: '0' }
      nonConsol: { type: 'xsd:string', minOccurs: '0' }
      consol: { type: 'xsd:string', minOccurs: '0' }
      shipAddress1: { type: 'xsd:string', minOccurs: '0' }
      shipAddress2: { type: 'xsd:string', minOccurs: '0' }
      shipCity: { type: 'xsd:string', minOccurs: '0' }
      shipState: { type: 'xsd:string', minOccurs: '0' }
      shipCountry: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      shipZip: { type: 'xsd:string', minOccurs: '0' }
      state1TaxNumber: { type: 'xsd:string', minOccurs: '0' }
      ssnOrTin: { type: 'xsd:string', minOccurs: '0' }
      interCoAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      nexusList: { type: 'listAcct:SubsidiaryNexusList', minOccurs: '0' }
      checkLayout: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inboundEmail: { type: 'xsd:string', minOccurs: '0' }
      classTranslationList: { type: 'listAcct:ClassTranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  SubsidiaryNexus:
    elements:
      nexusId: { type: 'platformCore:RecordRef', minOccurs: '0' }
      country: { type: 'xsd:string', minOccurs: '0' }
  SubsidiaryNexusList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      nexus: { type: 'listAcct:SubsidiaryNexus', minOccurs: '0', maxOccurs: 'unbounded' }
  SubsidiarySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:SubsidiarySearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  SubsidiarySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:SubsidiarySearch', minOccurs: '0' }
      columns: { type: 'listAcct:SubsidiarySearchRow', minOccurs: '0' }
  SubsidiarySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:SubsidiarySearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  GiftCertificate:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      giftCertCode: { type: 'xsd:string', minOccurs: '0' }
      sender: { type: 'xsd:string', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      originalAmount: { type: 'xsd:double', minOccurs: '0' }
      amountRemaining: { type: 'xsd:double', minOccurs: '0' }
  GiftCertificateSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:GiftCertificateSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  GiftCertificateSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:GiftCertificateSearch', minOccurs: '0' }
      columns: { type: 'listAcct:GiftCertificateSearchRow', minOccurs: '0' }
  GiftCertificateSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:GiftCertificateSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  PartnerCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  VendorCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      isTaxAgency: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  KitItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      printItems: { type: 'xsd:boolean', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      weightUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufactureraddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isFulfillable: { type: 'xsd:boolean', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      memberList: { type: 'listAcct:ItemMemberList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  AssemblyItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      printItems: { type: 'xsd:boolean', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      cogsAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      assetAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      matchBillToReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      billQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billExchRateVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      gainLossAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      weightUnit: { type: 'listAcctTyp:ItemWeightUnit', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      costingMethod: { type: 'listAcctTyp:ItemCostingMethod', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      costingMethodDisplay: { type: 'xsd:string', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackLandedCost: { type: 'xsd:boolean', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufactureraddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isSpecialWorkOrderItem: { type: 'xsd:boolean', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      prodQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      prodPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchasePriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      buildEntireAssembly: { type: 'xsd:boolean', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      transferPrice: { type: 'xsd:double', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      unbuildVarianceAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      preferredLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      totalValue: { type: 'xsd:double', minOccurs: '0' }
      useBins: { type: 'xsd:boolean', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      leadTime: { type: 'xsd:long', minOccurs: '0' }
      autoLeadTime: { type: 'xsd:boolean', minOccurs: '0' }
      buildTime: { type: 'xsd:long', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      safetyStockLevel: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevelDays: { type: 'xsd:long', minOccurs: '0' }
      seasonalDemand: { type: 'xsd:boolean', minOccurs: '0' }
      reorderMultiple: { type: 'xsd:long', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      demandModifier: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      autoReorderPoint: { type: 'xsd:boolean', minOccurs: '0' }
      autoPreferredStockLevel: { type: 'xsd:boolean', minOccurs: '0' }
      preferredStockLevelDays: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      itemNumberOptionsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      memberList: { type: 'listAcct:ItemMemberList', minOccurs: '0' }
      locationsList: { type: 'listAcct:InventoryItemLocationsList', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      binNumberList: { type: 'listAcct:InventoryItemBinNumberList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  SerializedAssemblyItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      printItems: { type: 'xsd:boolean', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      cogsAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      assetAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      matchBillToReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      billQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billExchRateVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      gainLossAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      costCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      prodQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      prodPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchasePriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      handlingCostUnits: { type: 'xsd:string', minOccurs: '0' }
      weightUnit: { type: 'listAcctTyp:ItemWeightUnit', minOccurs: '0' }
      weightUnits: { type: 'xsd:string', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      costingMethodDisplay: { type: 'xsd:string', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackLandedCost: { type: 'xsd:boolean', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufactureraddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      minimumQuantityUnits: { type: 'xsd:string', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isSpecialWorkOrderItem: { type: 'xsd:boolean', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      buildEntireAssembly: { type: 'xsd:boolean', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHandUnits: { type: 'xsd:string', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      reorderMultiple: { type: 'xsd:long', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      transferPrice: { type: 'xsd:double', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      unbuildVarianceAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      preferredLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      totalValue: { type: 'xsd:double', minOccurs: '0' }
      useBins: { type: 'xsd:boolean', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      leadTime: { type: 'xsd:long', minOccurs: '0' }
      autoLeadTime: { type: 'xsd:boolean', minOccurs: '0' }
      buildTime: { type: 'xsd:long', minOccurs: '0' }
      safetyStockLevel: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevelUnits: { type: 'xsd:string', minOccurs: '0' }
      safetyStockLevelDays: { type: 'xsd:long', minOccurs: '0' }
      seasonalDemand: { type: 'xsd:boolean', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      reorderPointUnits: { type: 'xsd:string', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevelUnits: { type: 'xsd:string', minOccurs: '0' }
      demandModifier: { type: 'xsd:double', minOccurs: '0' }
      autoReorderPoint: { type: 'xsd:boolean', minOccurs: '0' }
      autoPreferredStockLevel: { type: 'xsd:boolean', minOccurs: '0' }
      preferredStockLevelDays: { type: 'xsd:double', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      itemNumberOptionsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      memberList: { type: 'listAcct:ItemMemberList', minOccurs: '0' }
      locationsList: { type: 'listAcct:SerializedInventoryItemLocationsList', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      binNumberList: { type: 'listAcct:InventoryItemBinNumberList', minOccurs: '0' }
      numbersList: { type: 'listAcct:SerializedInventoryItemNumbersList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  LotNumberedAssemblyItem:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      printItems: { type: 'xsd:boolean', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isGcoCompliant: { type: 'xsd:boolean', minOccurs: '0' }
      offerSupport: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      cogsAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      incomeAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      assetAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      matchBillToReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      billQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billExchRateVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      gainLossAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      prodQtyVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      prodPriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchasePriceVarianceAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      handlingCost: { type: 'xsd:double', minOccurs: '0' }
      weight: { type: 'xsd:double', minOccurs: '0' }
      weightUnit: { type: 'listAcctTyp:ItemWeightUnit', minOccurs: '0' }
      isTaxable: { type: 'xsd:boolean', minOccurs: '0' }
      costingMethodDisplay: { type: 'xsd:string', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      unitsType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      purchaseUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      saleUnit: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackLandedCost: { type: 'xsd:boolean', minOccurs: '0' }
      billingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      deferredRevenueAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      revRecSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stockDescription: { type: 'xsd:string', minOccurs: '0' }
      producer: { type: 'xsd:boolean', minOccurs: '0' }
      manufacturer: { type: 'xsd:string', minOccurs: '0' }
      mpn: { type: 'xsd:string', minOccurs: '0' }
      multManufactureAddr: { type: 'xsd:boolean', minOccurs: '0' }
      manufactureraddr1: { type: 'xsd:string', minOccurs: '0' }
      manufacturerCity: { type: 'xsd:string', minOccurs: '0' }
      manufacturerState: { type: 'xsd:string', minOccurs: '0' }
      manufacturerZip: { type: 'xsd:string', minOccurs: '0' }
      countryOfManufacture: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      manufacturerTaxId: { type: 'xsd:string', minOccurs: '0' }
      scheduleBNumber: { type: 'xsd:string', minOccurs: '0' }
      scheduleBQuantity: { type: 'xsd:long', minOccurs: '0' }
      scheduleBCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      manufacturerTariff: { type: 'xsd:string', minOccurs: '0' }
      preferenceCriterion: { type: 'listAcctTyp:ItemPreferenceCriterion', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      minimumQuantity: { type: 'xsd:long', minOccurs: '0' }
      enforceMinQtyInternally: { type: 'xsd:boolean', minOccurs: '0' }
      softDescriptor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isSpecialWorkOrderItem: { type: 'xsd:boolean', minOccurs: '0' }
      pricesIncludeTax: { type: 'xsd:boolean', minOccurs: '0' }
      quantityPricingSchedule: { type: 'platformCore:RecordRef', minOccurs: '0' }
      buildEntireAssembly: { type: 'xsd:boolean', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      useMarginalRates: { type: 'xsd:boolean', minOccurs: '0' }
      reorderMultiple: { type: 'xsd:long', minOccurs: '0' }
      cost: { type: 'xsd:double', minOccurs: '0' }
      costEstimateType: { type: 'platformCommonTyp:ItemCostEstimateType', minOccurs: '0' }
      costEstimate: { type: 'xsd:double', minOccurs: '0' }
      transferPrice: { type: 'xsd:double', minOccurs: '0' }
      overallQuantityPricingType: { type: 'listAcctTyp:ItemOverallQuantityPricingType', minOccurs: '0' }
      pricingGroup: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vsoePrice: { type: 'xsd:double', minOccurs: '0' }
      vsoeSopGroup: { type: 'platformCommonTyp:VsoeSopGroup', minOccurs: '0' }
      vsoeDeferral: { type: 'platformCommonTyp:VsoeDeferral', minOccurs: '0' }
      vsoePermitDiscount: { type: 'platformCommonTyp:VsoePermitDiscount', minOccurs: '0' }
      vsoeDelivered: { type: 'xsd:boolean', minOccurs: '0' }
      unbuildVarianceAccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      preferredLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      totalValue: { type: 'xsd:double', minOccurs: '0' }
      useBins: { type: 'xsd:boolean', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      purchaseDescription: { type: 'xsd:string', minOccurs: '0' }
      leadTime: { type: 'xsd:long', minOccurs: '0' }
      autoLeadTime: { type: 'xsd:boolean', minOccurs: '0' }
      buildTime: { type: 'xsd:long', minOccurs: '0' }
      safetyStockLevel: { type: 'xsd:double', minOccurs: '0' }
      safetyStockLevelDays: { type: 'xsd:long', minOccurs: '0' }
      seasonalDemand: { type: 'xsd:boolean', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      demandModifier: { type: 'xsd:double', minOccurs: '0' }
      autoReorderPoint: { type: 'xsd:boolean', minOccurs: '0' }
      autoPreferredStockLevel: { type: 'xsd:boolean', minOccurs: '0' }
      preferredStockLevelDays: { type: 'xsd:double', minOccurs: '0' }
      shipIndividually: { type: 'xsd:boolean', minOccurs: '0' }
      shipPackage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      defaultReturnCost: { type: 'xsd:double', minOccurs: '0' }
      supplyReplenishmentMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      alternateDemandSourceItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fixedLotSize: { type: 'xsd:double', minOccurs: '0' }
      supplyType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supplyLotSizingMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      demandSource: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      storeDisplayName: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeItemTemplate: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      isDonationItem: { type: 'xsd:boolean', minOccurs: '0' }
      showDefaultDonationAmount: { type: 'xsd:boolean', minOccurs: '0' }
      maxDonationAmount: { type: 'xsd:double', minOccurs: '0' }
      dontShowPrice: { type: 'xsd:boolean', minOccurs: '0' }
      noPriceMessage: { type: 'xsd:string', minOccurs: '0' }
      outOfStockMessage: { type: 'xsd:string', minOccurs: '0' }
      shoppingDotComCategory: { type: 'xsd:string', minOccurs: '0' }
      outOfStockBehavior: { type: 'listAcctTyp:ItemOutOfStockBehavior', minOccurs: '0' }
      shopzillaCategoryId: { type: 'xsd:long', minOccurs: '0' }
      nexTagCategory: { type: 'xsd:string', minOccurs: '0' }
      productFeedList: { type: 'listAcct:ProductFeedList', minOccurs: '0' }
      relatedItemsDescription: { type: 'xsd:string', minOccurs: '0' }
      onSpecial: { type: 'xsd:boolean', minOccurs: '0' }
      specialsDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      itemOptionsList: { type: 'listAcct:ItemOptionsList', minOccurs: '0' }
      itemNumberOptionsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      itemVendorList: { type: 'listAcct:ItemVendorList', minOccurs: '0' }
      pricingMatrix: { type: 'listAcct:PricingMatrix', minOccurs: '0' }
      memberList: { type: 'listAcct:ItemMemberList', minOccurs: '0' }
      locationsList: { type: 'listAcct:LotNumberedInventoryItemLocationsList', minOccurs: '0' }
      siteCategoryList: { type: 'listAcct:SiteCategoryList', minOccurs: '0' }
      binNumberList: { type: 'listAcct:InventoryItemBinNumberList', minOccurs: '0' }
      numbersList: { type: 'listAcct:LotNumberedInventoryItemNumbersList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      presentationItemList: { type: 'listAcct:PresentationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ServiceItemTaskTemplates:
    elements:
      taskName: { type: 'xsd:string', minOccurs: '0' }
      taskStartOffset: { type: 'xsd:long', minOccurs: '0' }
      taskDuration: { type: 'platformCore:Duration', minOccurs: '0' }
  ServiceItemTaskTemplatesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      taskTemplates: { type: 'listAcct:ServiceItemTaskTemplates', minOccurs: '0', maxOccurs: 'unbounded' }
  State:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      fullName: { type: 'xsd:string', minOccurs: '0' }
      shortname: { type: 'xsd:string', minOccurs: '0' }
  AccountingPeriod:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      periodName: { type: 'xsd:string', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      closedOnDate: { type: 'xsd:dateTime', minOccurs: '0' }
      isAdjust: { type: 'xsd:boolean', minOccurs: '0' }
      isQuarter: { type: 'xsd:boolean', minOccurs: '0' }
      isYear: { type: 'xsd:boolean', minOccurs: '0' }
      closed: { type: 'xsd:boolean', minOccurs: '0' }
      apLocked: { type: 'xsd:boolean', minOccurs: '0' }
      arLocked: { type: 'xsd:boolean', minOccurs: '0' }
      payrollLocked: { type: 'xsd:boolean', minOccurs: '0' }
      allLocked: { type: 'xsd:boolean', minOccurs: '0' }
      allowNonGLChanges: { type: 'xsd:boolean', minOccurs: '0' }
  BudgetCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      budgetType: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  AccountingPeriodSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:AccountingPeriodSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  AccountingPeriodSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:AccountingPeriodSearch', minOccurs: '0' }
      columns: { type: 'listAcct:AccountingPeriodSearchRow', minOccurs: '0' }
  AccountingPeriodSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:AccountingPeriodSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  ContactCategorySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:ContactCategorySearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  ContactCategorySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:ContactCategorySearch', minOccurs: '0' }
      columns: { type: 'listAcct:ContactCategorySearchRow', minOccurs: '0' }
  ContactCategorySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:ContactCategorySearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  ContactRoleSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:ContactRoleSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  ContactRoleSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:ContactRoleSearch', minOccurs: '0' }
      columns: { type: 'listAcct:ContactRoleSearchRow', minOccurs: '0' }
  ContactRoleSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:ContactRoleSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  CustomerCategorySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CustomerCategorySearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  CustomerCategorySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:CustomerCategorySearch', minOccurs: '0' }
      columns: { type: 'listAcct:CustomerCategorySearchRow', minOccurs: '0' }
  CustomerCategorySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CustomerCategorySearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  ExpenseCategorySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:ExpenseCategorySearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  ExpenseCategorySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:ExpenseCategorySearch', minOccurs: '0' }
      columns: { type: 'listAcct:ExpenseCategorySearchRow', minOccurs: '0' }
  ExpenseCategorySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:ExpenseCategorySearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  NoteTypeSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:NoteTypeSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  NoteTypeSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:NoteTypeSearch', minOccurs: '0' }
      columns: { type: 'listAcct:NoteTypeSearchRow', minOccurs: '0' }
  NoteTypeSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:NoteTypeSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  PartnerCategorySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:PartnerCategorySearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  PartnerCategorySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:PartnerCategorySearch', minOccurs: '0' }
      columns: { type: 'listAcct:PartnerCategorySearchRow', minOccurs: '0' }
  PartnerCategorySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:PartnerCategorySearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  PaymentMethodSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:PaymentMethodSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  PaymentMethodSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:PaymentMethodSearch', minOccurs: '0' }
      columns: { type: 'listAcct:PaymentMethodSearchRow', minOccurs: '0' }
  PaymentMethodSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:PaymentMethodSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  PriceLevelSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:PriceLevelSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  PriceLevelSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:PriceLevelSearch', minOccurs: '0' }
      columns: { type: 'listAcct:PriceLevelSearchRow', minOccurs: '0' }
  PriceLevelSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:PriceLevelSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  SalesRoleSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:SalesRoleSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  SalesRoleSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:SalesRoleSearch', minOccurs: '0' }
      columns: { type: 'listAcct:SalesRoleSearchRow', minOccurs: '0' }
  SalesRoleSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:SalesRoleSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  TermSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:TermSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  TermSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:TermSearch', minOccurs: '0' }
      columns: { type: 'listAcct:TermSearchRow', minOccurs: '0' }
  TermSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:TermSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  VendorCategorySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:VendorCategorySearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  VendorCategorySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:VendorCategorySearch', minOccurs: '0' }
      columns: { type: 'listAcct:VendorCategorySearchRow', minOccurs: '0' }
  VendorCategorySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:VendorCategorySearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  WinLossReasonSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:WinLossReasonSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  WinLossReasonSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:WinLossReasonSearch', minOccurs: '0' }
      columns: { type: 'listAcct:WinLossReasonSearchRow', minOccurs: '0' }
  WinLossReasonSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:WinLossReasonSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  UnitsTypeSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:UnitsTypeSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  UnitsTypeSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:UnitsTypeSearch', minOccurs: '0' }
      columns: { type: 'listAcct:UnitsTypeSearchRow', minOccurs: '0' }
  UnitsTypeSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:UnitsTypeSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  PricingGroup:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  PricingGroupSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:PricingGroupSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  PricingGroupSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:PricingGroupSearch', minOccurs: '0' }
      columns: { type: 'listAcct:PricingGroupSearchRow', minOccurs: '0' }
  PricingGroupSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:PricingGroupSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  InventoryNumber:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      inventoryNumber: { type: 'xsd:string', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      units: { type: 'xsd:string', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      locationsList: { type: 'listAcct:InventoryNumberLocationsList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  InventoryNumberLocations:
    elements:
      location: { type: 'xsd:string', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      quantityInTransit: { type: 'xsd:double', minOccurs: '0' }
  InventoryNumberLocationsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      locations: { type: 'listAcct:InventoryNumberLocations', minOccurs: '0', maxOccurs: 'unbounded' }
  InventoryNumberSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:InventoryNumberSearchBasic', minOccurs: '0' }
      itemJoin: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  InventoryNumberSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:InventoryNumberSearch', minOccurs: '0' }
      columns: { type: 'listAcct:InventoryNumberSearchRow', minOccurs: '0' }
  InventoryNumberSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:InventoryNumberSearchRowBasic', minOccurs: '0' }
      itemJoin: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  RevRecSchedule:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      amortizationType: { type: 'listAcctTyp:RevRecScheduleAmortizationType', minOccurs: '0' }
      recurrenceType: { type: 'listAcctTyp:RevRecScheduleRecurrenceType', minOccurs: '0' }
      recogIntervalSrc: { type: 'listAcctTyp:RevRecScheduleRecogIntervalSrc', minOccurs: '0' }
      amortizationPeriod: { type: 'xsd:long', minOccurs: '0' }
      periodOffset: { type: 'xsd:long', minOccurs: '0' }
      revRecOffset: { type: 'xsd:long', minOccurs: '0' }
      initialAmount: { type: 'xsd:double', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      recurrenceList: { type: 'listAcct:RevRecScheduleRecurrenceList', minOccurs: '0' }
  RevRecScheduleRecurrence:
    elements:
      incomeaccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      periodOffset: { type: 'xsd:long', minOccurs: '0' }
      recamount: { type: 'xsd:string', minOccurs: '0' }
  RevRecScheduleRecurrenceList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      revRecScheduleRecurrence: { type: 'listAcct:RevRecScheduleRecurrence', minOccurs: '0', maxOccurs: 'unbounded' }
  RevRecTemplate:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      amortizationType: { type: 'listAcctTyp:RevRecScheduleAmortizationType', minOccurs: '0' }
      recurrenceType: { type: 'listAcctTyp:RevRecScheduleRecurrenceType', minOccurs: '0' }
      recogIntervalSrc: { type: 'listAcctTyp:RevRecScheduleRecogIntervalSrc', minOccurs: '0' }
      amortizationPeriod: { type: 'xsd:long', minOccurs: '0' }
      periodOffset: { type: 'xsd:long', minOccurs: '0' }
      revRecOffset: { type: 'xsd:long', minOccurs: '0' }
      initialAmount: { type: 'xsd:double', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      recurrenceList: { type: 'listAcct:RevRecTemplateRecurrenceList', minOccurs: '0' }
  RevRecTemplateRecurrence:
    elements:
      incomeaccount: { type: 'platformCore:RecordRef', minOccurs: '0' }
      periodOffset: { type: 'xsd:long', minOccurs: '0' }
      recamount: { type: 'xsd:string', minOccurs: '0' }
  RevRecTemplateRecurrenceList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      revRecTemplateRecurrence: { type: 'listAcct:RevRecTemplateRecurrence', minOccurs: '0', maxOccurs: 'unbounded' }
  RevRecScheduleSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:RevRecScheduleSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  RevRecScheduleSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:RevRecScheduleSearch', minOccurs: '0' }
      columns: { type: 'listAcct:RevRecScheduleSearchRow', minOccurs: '0' }
  RevRecScheduleSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:RevRecScheduleSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  RevRecTemplateSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:RevRecTemplateSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  RevRecTemplateSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:RevRecTemplateSearch', minOccurs: '0' }
      columns: { type: 'listAcct:RevRecTemplateSearchRow', minOccurs: '0' }
  RevRecTemplateSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:RevRecTemplateSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  CostCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemCostType: { type: 'listAcctTyp:CostCategoryItemCostType', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  Nexus:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      country: { type: 'platformCommonTyp:Country', minOccurs: '0' }
      state: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxAgency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxAgencyPst: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
  NexusSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:NexusSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  NexusSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:NexusSearch', minOccurs: '0' }
      columns: { type: 'listAcct:NexusSearchRow', minOccurs: '0' }
  NexusSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:NexusSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  CustomerMessage:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      preferred: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  OtherNameCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  OtherNameCategorySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:OtherNameCategorySearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  OtherNameCategorySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:OtherNameCategorySearch', minOccurs: '0' }
      columns: { type: 'listAcct:OtherNameCategorySearchRow', minOccurs: '0' }
  OtherNameCategorySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:OtherNameCategorySearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  CustomerMessageSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CustomerMessageSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  CustomerMessageSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:CustomerMessageSearch', minOccurs: '0' }
      columns: { type: 'listAcct:CustomerMessageSearchRow', minOccurs: '0' }
  CustomerMessageSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CustomerMessageSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  ItemGroup:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      includeStartEndLines: { type: 'xsd:boolean', minOccurs: '0' }
      isVsoeBundle: { type: 'xsd:boolean', minOccurs: '0' }
      availableToPartners: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      upcCode: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      issueProduct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      subsidiaryList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      includeChildren: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      printItems: { type: 'xsd:boolean', minOccurs: '0' }
      memberList: { type: 'listAcct:ItemMemberList', minOccurs: '0' }
      translationsList: { type: 'listAcct:TranslationList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CurrencyRate:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      baseCurrency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      transactionCurrency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      effectiveDate: { type: 'xsd:dateTime', minOccurs: '0' }
  CurrencyRateSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CurrencyRateSearchBasic', minOccurs: '0' }
  CurrencyRateSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:CurrencyRateSearch', minOccurs: '0' }
      columns: { type: 'listAcct:CurrencyRateSearchRow', minOccurs: '0' }
  CurrencyRateSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CurrencyRateSearchRowBasic', minOccurs: '0' }
  ItemRevision:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
      effectiveDate: { type: 'xsd:dateTime', minOccurs: '0' }
      obsoleteDate: { type: 'xsd:dateTime', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      inactive: { type: 'xsd:boolean', minOccurs: '0' }
  ItemRevisionSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:ItemRevisionSearchBasic', minOccurs: '0' }
      itemJoin: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  ItemRevisionSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listAcct:ItemRevisionSearch', minOccurs: '0' }
      columns: { type: 'listAcct:ItemRevisionSearchRow', minOccurs: '0' }
  ItemRevisionSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:ItemRevisionSearchRowBasic', minOccurs: '0' }
      itemJoin: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
