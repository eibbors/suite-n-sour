exports.complexTypes =
  InventoryAdjustment:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      estimatedTotalValue: { type: 'xsd:double', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      adjLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      inventoryList: { type: 'tranInvt:InventoryAdjustmentInventoryList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  InventoryAdjustmentInventory:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      currentValue: { type: 'xsd:double', minOccurs: '0' }
      adjustQtyBy: { type: 'xsd:double', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      newQuantity: { type: 'xsd:double', minOccurs: '0' }
      unitCost: { type: 'xsd:double', minOccurs: '0' }
      foreignCurrencyUnitCost: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
  InventoryAdjustmentInventoryList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      inventory: { type: 'tranInvt:InventoryAdjustmentInventory', minOccurs: '0', maxOccurs: 'unbounded' }
  AssemblyBuild:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      buildable: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      componentList: { type: 'tranInvt:AssemblyComponentList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  AssemblyUnbuild:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      built: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      componentList: { type: 'tranInvt:AssemblyComponentList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  AssemblyComponent:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      componentInventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      componentNumbers: { type: 'xsd:string', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
  AssemblyComponentList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'false' }
    elements:
      component: { type: 'tranInvt:AssemblyComponent', minOccurs: '0', maxOccurs: 'unbounded' }
  TransferOrder:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      fob: { type: 'xsd:string', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      orderStatus: { type: 'tranInvtTyp:TransferOrderOrderStatus', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      transferLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      shipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      linkedTrackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      shipComplete: { type: 'xsd:boolean', minOccurs: '0' }
      altShippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      itemList: { type: 'tranInvt:TransferOrderItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  TransferOrderItem:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityFulfilled: { type: 'xsd:double', minOccurs: '0' }
      quantityPacked: { type: 'xsd:double', minOccurs: '0' }
      quantityPicked: { type: 'xsd:double', minOccurs: '0' }
      quantityReceived: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      commitInventory: { type: 'tranInvtTyp:TransferOrderItemCommitInventory', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      isClosed: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      expectedShipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      expectedReceiptDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  TransferOrderItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranInvt:TransferOrderItem', minOccurs: '0', maxOccurs: 'unbounded' }
  InterCompanyTransferOrder:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shippingCost: { type: 'xsd:double', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      fob: { type: 'xsd:string', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      orderStatus: { type: 'tranInvtTyp:TransferOrderOrderStatus', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      toSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      transferLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      shipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      linkedTrackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      shipComplete: { type: 'xsd:boolean', minOccurs: '0' }
      altShippingCost: { type: 'xsd:double', minOccurs: '0' }
      shippingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingTax1Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTax2Rate: { type: 'xsd:double', minOccurs: '0' }
      handlingTax2Rate: { type: 'xsd:double', minOccurs: '0' }
      shippingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      handlingTaxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      itemList: { type: 'tranInvt:InterCompanyTransferOrderItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  InterCompanyTransferOrderItem:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityFulfilled: { type: 'xsd:double', minOccurs: '0' }
      quantityReceived: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      rate: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      commitInventory: { type: 'tranInvtTyp:TransferOrderItemCommitInventory', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  InterCompanyTransferOrderItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranInvt:InterCompanyTransferOrderItem', minOccurs: '0', maxOccurs: 'unbounded' }
  WorkOrder:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      job: { type: 'platformCore:RecordRef', minOccurs: '0' }
      assemblyItem: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expandAssembly: { type: 'xsd:boolean', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemList: { type: 'tranInvt:WorkOrderItemList', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      salesTeamList: { type: 'tranInvt:SalesTeamList', minOccurs: '0' }
      partnersList: { type: 'tranInvt:PartnersList', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      buildable: { type: 'xsd:double', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      built: { type: 'xsd:double', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  WorkOrderItem:
    elements:
      line: { type: 'xsd:long', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      averageCost: { type: 'xsd:double', minOccurs: '0' }
      lastPurchasePrice: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      poVendor: { type: 'platformCore:RecordRef', minOccurs: '0' }
      poRate: { type: 'xsd:double', minOccurs: '0' }
      percentComplete: { type: 'xsd:double', minOccurs: '0' }
      contribution: { type: 'xsd:double', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      commit: { type: 'tranInvtTyp:WorkOrderItemItemCommitInventory', minOccurs: '0' }
      createPo: { type: 'tranInvtTyp:WorkOrderItemItemCreatePo', minOccurs: '0' }
      createWo: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  WorkOrderItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranInvt:WorkOrderItem', minOccurs: '0', maxOccurs: 'unbounded' }
  SalesTeamList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      salesTeam: { type: 'platformCommon:CustomerSalesTeam', minOccurs: '0', maxOccurs: 'unbounded' }
  PartnersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      partners: { type: 'platformCommon:Partners', minOccurs: '0', maxOccurs: 'unbounded' }
  InventoryTransfer:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      transferLocation: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryList: { type: 'tranInvt:InventoryTransferInventoryList', minOccurs: '0' }
  InventoryTransferInventory:
    elements:
      line: { type: 'xsd:long', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      adjustQtyBy: { type: 'xsd:double', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      fromBinNumbers: { type: 'xsd:string', minOccurs: '0' }
      toBinNumbers: { type: 'xsd:string', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
  InventoryTransferInventoryList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      inventory: { type: 'tranInvt:InventoryTransferInventory', minOccurs: '0', maxOccurs: 'unbounded' }
  BinTransfer:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryList: { type: 'tranInvt:BinTransferInventoryList', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
  BinTransferInventory:
    elements:
      line: { type: 'xsd:long', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      preferredBin: { type: 'xsd:string', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      itemUnitsLabel: { type: 'xsd:string', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      fromBins: { type: 'xsd:string', minOccurs: '0' }
      toBins: { type: 'xsd:string', minOccurs: '0' }
  BinTransferInventoryList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      inventory: { type: 'tranInvt:BinTransferInventory', minOccurs: '0', maxOccurs: 'unbounded' }
  BinWorksheet:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemList: { type: 'tranInvt:BinWorksheetItemList', minOccurs: '0' }
  BinWorksheetItem:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemName: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      itemOnHand: { type: 'xsd:string', minOccurs: '0' }
      itemUnitsLabel: { type: 'xsd:string', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      itemBins: { type: 'xsd:string', minOccurs: '0' }
      itemBinNumbers: { type: 'xsd:string', minOccurs: '0' }
      itemBinList: { type: 'xsd:string', minOccurs: '0' }
      itemPreferBin: { type: 'xsd:string', minOccurs: '0' }
      itemBlank: { type: 'xsd:string', minOccurs: '0' }
  BinWorksheetItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranInvt:BinWorksheetItem', minOccurs: '0', maxOccurs: 'unbounded' }
