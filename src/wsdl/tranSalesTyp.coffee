simpleTypes = module.exports =
  SalesOrderItemCommitInventory:
    base: 'xsd:string'
    values: ["_availableQty","_completeQty","_doNotCommit"]
  SalesOrderItemCreatePo:
    base: 'xsd:string'
    values: ["_dropShipment","_specialOrder"]
  SalesOrderOrderStatus:
    base: 'xsd:string'
    values: ["_pendingApproval","_pendingFulfillment","_cancelled","_partiallyFulfilled","_pendingBillingPartFulfilled","_pendingBilling","_fullyBilled","_closed","_undefined"]
  ItemFulfillmentExportTypeUps:
    base: 'xsd:string'
    values: ["_domesticExports","_foreignExports","_foreignMilitarySales"]
  ItemFulfillmentLicenseExceptionUps:
    base: 'xsd:string'
    values: ["_agr","_apr","_avs","_bag","_civ","_ctp","_enc","_gbs","_gft","_gov","_kmi","_lvs","_nlr","_rpl","_tmp","_tspa","_tsr","_tsu"]
  ItemFulfillmentMethodOfTransportUps:
    base: 'xsd:string'
    values: ["_air","_airContainerized","_auto","_fixedTransportInstallations","_mail","_passengerHandcarried","_pedestrian","_rail","_railContainerized","_roadOther","_seaBarge","_seaContainerized","_seaNoncontainerized","_truck","_truckContainerized"]
  ItemFulfillmentThirdPartyTypeUps:
    base: 'xsd:string'
    values: ["_consigneeBilling","_noneSelected","_thirdPartyBilling"]
  ItemFulfillmentPackageUpsCodMethodUps:
    base: 'xsd:string'
    values: ["_cashiersCheckMoneyOrder","_checkCashiersCheckMoneyOrder"]
  ItemFulfillmentPackageUpsDeliveryConfUps:
    base: 'xsd:string'
    values: ["_noneSelected","_adultSignatureRequired","_deliveryConfirmation","_signatureRequired"]
  ItemFulfillmentPackageUpsPackagingUps:
    base: 'xsd:string'
    values: ["_upsExpressBox","_upsLetter","_upsPak","_upsTube","_yourPackaging"]
  ItemFulfillmentPackageUspsDeliveryConfUsps:
    base: 'xsd:string'
    values: ["_deliveryConfirmation","_signatureConfirmation"]
  ItemFulfillmentPackageUspsPackagingUsps:
    base: 'xsd:string'
    values: ["_parcel","_flatRateBox","_flatRateEnvelope","_smallFlatRateBox","_mediumFlatRateBox","_largeFlatRateBox","_irregularPackage","_largePackage","_oversizedPackage"]
  ItemFulfillmentB13AFilingOptionFedEx:
    base: 'xsd:string'
    values: ["_filedElectronically","_manuallyAttached","_notRequired","_summaryReporting"]
  ItemFulfillmentHomeDeliveryTypeFedEx:
    base: 'xsd:string'
    values: ["_appointment","_dateCertain","_evening"]
  ItemFulfillmentThirdPartyTypeFedEx:
    base: 'xsd:string'
    values: ["_billRecipient","_billThirdParty","_noneSelected"]
  ItemFulfillmentPackageFedExAdmPackageTypeFedEx:
    base: 'xsd:string'
    values: ["_bag","_barrel","_basketOrHamper","_box","_bucket","_bundle","_cage","_carton","_case","_chest","_container","_crate","_cylinder","_drum","_envelope","_package","_pail","_pallet","_parcel","_pieces","_reel","_roll","_sack","_shrinkWrapped","_skid","_tank","_toteBin","_tube","_unit"]
  ItemFulfillmentPackageFedExCodMethodFedEx:
    base: 'xsd:string'
    values: ["_any","_cash","_guaranteedFunds"]
  ItemFulfillmentPackageFedExDeliveryConfFedEx:
    base: 'xsd:string'
    values: ["_signatureRequired"]
  ItemFulfillmentPackageFedExPackagingFedEx:
    base: 'xsd:string'
    values: ["_fedExBox","_fedEx10kgBox","_fedEx25kgBox","_fedExEnvelope","_fedExPak","_fedExTube","_yourPackaging"]
  ItemFulfillmentPackageFedExSignatureOptionsFedEx:
    base: 'xsd:string'
    values: ["_adult","_direct","_indirect"]
  ItemFulfillmentTermsOfSaleFedEx:
    base: 'xsd:string'
    values: ["_fob","_cf","_cif"]
  ItemFulfillmentShipStatus:
    base: 'xsd:string'
    values: ["_packed","_picked","_shipped"]
  OpportunityStatus:
    base: 'xsd:string'
    values: ["_closedLost","_closedWon","_inProgress","_issuedEstimate"]
  TransactionType:
    base: 'xsd:string'
    values: ["_assemblyBuild","_assemblyUnbuild","_binTransfer","_binWorksheet","_cashRefund","_cashSale","_check","_creditMemo","_customerDeposit","_customerPayment","_customerRefund","_depositApplication","_estimate","_expenseReport","_inventoryAdjustment","_inventoryTransfer","_invoice","_itemFulfillment","_itemReceipt","_journal","_opportunity","_paycheckJournal","_purchaseOrder","_returnAuthorization","_salesOrder","_transferOrder","_vendorBill","_vendorCredit","_vendorPayment","_vendorReturnAuthorization","_workOrder"]
  TransactionStatus:
    base: 'xsd:string'
    values: ["_billCancelled","_billOpen","_billPaidInFull","_billPaymentOnlineBillPayPendingAccountingApproval","_billPaymentVoided","_billPendingApproval","_billRejected","_cashSaleDeposited","_cashSaleNotDeposited","_cashSaleUnapprovedPayment","_checkOnlineBillPayPendingAccountingApproval","_checkVoided","_commissionOverpaid","_commissionPaidInFull","_commissionPendingAccountingApproval","_commissionPendingPayment","_commissionRejectedByAccounting","_creditMemoFullyApplied","_creditMemoOpen","_customerDepositDeposited","_customerDepositFullyApplied","_customerDepositNotDeposited","_customerRefundVoided","_estimateClosed","_estimateExpired","_estimateOpen","_estimateProcessed","_estimateVoided","_expenseReportApprovedByAccounting","_expenseReportApprovedOverriddenByAccounting","_expenseReportInProgress","_expenseReportPaidInFull","_expenseReportPendingAccountingApproval","_expenseReportPendingSupervisorApproval","_expenseReportRejectedByAccounting","_expenseReportRejectedBySupervisor","_expenseReportRejectedOverriddenByAccounting","_invoiceOpen","_invoicePaidInFull","_itemFulfillmentPacked","_itemFulfillmentPicked","_itemFulfillmentShipped","_journalApprovedForPosting","_journalPendingApproval","_opportunityClosedLost","_opportunityClosedWon","_opportunityInProgress","_opportunityIssuedEstimate","_paycheckCommitted","_paycheckPendingCommitment","_paycheckPendingTaxCalculation","_paycheckPreview","_paycheckReversed","_paycheckUndefined","_paymentDeposited","_paymentNotDeposited","_paymentUnapprovedPayment","_payrollLiabilityCheckVoided","_purchaseOrderClosed","_purchaseOrderFullyBilled","_purchaseOrderPartiallyReceived","_purchaseOrderPendingBill","_purchaseOrderPendingBillingPartiallyReceived","_purchaseOrderPendingReceipt","_purchaseOrderPendingSupervisorApproval","_purchaseOrderRejectedBySupervisor","_returnAuthorizationCancelled","_returnAuthorizationClosed","_returnAuthorizationPartiallyReceived","_returnAuthorizationPendingApproval","_returnAuthorizationPendingReceipt","_returnAuthorizationPendingRefund","_returnAuthorizationPendingRefundPartiallyReceived","_returnAuthorizationRefunded","_salesOrderBilled","_salesOrderCancelled","_salesOrderClosed","_salesOrderPartiallyFulfilled","_salesOrderPendingApproval","_salesOrderPendingBilling","_salesOrderPendingBillingPartiallyFulfilled","_salesOrderPendingFulfillment","_salesTaxPaymentOnlineBillPayPendingAccountingApproval","_salesTaxPaymentVoided","_statementChargeOpen","_statementChargePaidInFull","_taxLiabilityChequeVoided","_tegataPayableEndorsed","_tegataPayableIssued","_tegataPayablePaid","_tegataReceivablesCollected","_tegataReceivablesDiscounted","_tegataReceivablesEndorsed","_tegataReceivablesHolding","_transferOrderClosed","_transferOrderPartiallyFulfilled","_transferOrderPendingApproval","_transferOrderPendingFulfillment","_transferOrderPendingReceipt","_transferOrderPendingReceiptPartiallyFulfilled","_transferOrderReceived","_transferOrderRejected","_vendorReturnAuthorizationCancelled","_vendorReturnAuthorizationClosed","_vendorReturnAuthorizationCredited","_vendorReturnAuthorizationPartiallyReturned","_vendorReturnAuthorizationPendingApproval","_vendorReturnAuthorizationPendingCredit","_vendorReturnAuthorizationPendingCreditPartiallyReturned","_vendorReturnAuthorizationPendingReturn","_workOrderBuilt","_workOrderCancelled","_workOrderClosed","_workOrderPartiallyBuilt","_workOrderPendingBuild"]
  TransactionPaymentEventResult:
    base: 'xsd:string'
    values: ["_accept","_holdOverride","_paymentHold","_reject"]
  TransactionPaymentEventType:
    base: 'xsd:string'
    values: ["_authorizationRequest","_captureRequest","_creditRequest","_overrideHold","_refundRequest","_saleRequest"]
  TransactionPaymentEventHoldReason:
    base: 'xsd:string'
    values: ["_authorizationDecline","_externalFraudRejection","_externalFraudReview","_gatewayError","_overridenBy","_systemError","_verbalAuthorizationRequested","_verificationRejection","_verificationRequired"]
  ItemFulfillmentPackageFedExCodFreightTypeFedEx:
    base: 'xsd:string'
    values: ["_cODCharge","_noneSelected","_orderChargeNet","_orderChargeTotal","_shippingCharge","_totalCharge"]
  TransactionLinkType:
    base: 'xsd:string'
    values: ["_closedPeriodFxVariance","_cogsLink","_collectTegata","_commission","_depositApplication","_depositRefundCheck","_discountTegata","_dropShipment","_endorseTegata","_estimateInvoicing","_intercompanyAdjustment","_landedCost","_linkedReturnCost","_opportunityClose","_opportunityEstimate","_orderBillInvoice","_orderPickingPacking","_payment","_payTegata","_purchaseReturn","_receiptBill","_receiptFulfillment","_reimbursement","_revenueAmortizatonRecognition","_revenueCommitted","_saleReturn","_salesOrderDeposit","_specialOrder","_vendorBillVariance","_workOrderBuild"]
  ForecastType:
    base: 'xsd:string'
    values: ["_omitted","_worstCase","_mostLikely","_upside"]
  TransactionLineType:
    base: 'xsd:string'
    values: ["_billExchangeRateVariance","_billPriceVariance","_billQuantityVariance","_gainLoss","_item","_productionPriceVariance","_productionQuantityVariance","_purchasePriceVariance","_receiving","_shipping","_totalBillVariance","_unbuildVariance"]
  TransactionApprovalStatus:
    base: 'xsd:string'
    values: ["_approved","_pendingApproval","_rejected"]
