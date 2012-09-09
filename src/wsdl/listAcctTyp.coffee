simpleTypes = module.exports =
  CurrencyLocale:
    base: 'xsd:string'
    values: ["_alandIslandsSwedish","_albaniaAlbanian","_algeriaArabic","_argentinaSpanish","_australiaEnglish","_austriaGerman","_bahrainArabic","_belarusByelorussian","_belgiumDutch","_belgiumFrench","_boliviaSpanish","_bengali","_brazilPortuguese","_bulgariaBulgarian","_canadaEnglish","_canadaFrench","_canaryIslandsSpanish","_ceutaAndMelillaSpanish","_chileSpanish","_chinaChinese","_colombiaSpanish","_costaRicaSpanish","_croatiaCroatian","_czechRepublicCzech","_denmarkDanish","_dominicanRepublicSpanish","_ecuadorSpanish","_egyptArabic","_elSalvadorSpanish","_estoniaEstonian","_finlandFinnish","_franceFrench","_germanyGerman","_greeceGreek","_guatemalaSpanish","_haitian","_hondurasSpanish","_hongKongChinese","_hungaryHungarian","_icelandIcelandic","_indiaEnglish","_indonesiaIndonesian","_iraqArabic","_irelandEnglish","_israelHebrew","_italyItalian","_japanJapanese","_jordanArabic","_kuwaitArabic","_latviaLatvianLettish","_lebanonArabic","_libyaArabic","_lithuaniaLithuanian","_luxembourgFrench","_luxembourgGerman","_macedoniaMacedonian","_malaysiaMalay","_mexicoSpanish","_moroccoArabic","_netherlandsDutch","_newZealandEnglish","_nicaraguaSpanish","_nigeriaEnglish","_norwayNorwegian","_omanArabic","_panamaSpanish","_paraguaySpanish","_peruSpanish","_philippinesEnglish","_philippinesTagalog","_polandPolish","_portugalPortuguese","_puertoRicoSpanish","_qatarArabic","_romaniaRomanian","_russiaRussian","_saudiArabiaArabic","_saintMartinEnglish","_saintBarthelemyFrench","_serbiaSerbian","_singaporeEnglish","_slovakiaSlovak","_sloveniaSlovenian","_southAfricaEnglish","_southKoreaKorean","_spainCatalan","_spainSpanish","_sudanArabic","_swedenSwedish","_switzerlandFrench","_switzerlandGerman","_switzerlandItalian","_syriaArabic","_taiwanChinese","_thailandThai","_tunisiaArabic","_turkeyTurkish","_ukraineUkrainian","_unitedArabEmiratesArabic","_unitedKingdomEnglish","_unitedStatesEnglish","_uruguaySpanish","_venezuelaSpanish","_yemenArabic"]
  AccountType:
    base: 'xsd:string'
    values: ["_accountsPayable","_accountsReceivable","_bank","_costOfGoodsSold","_creditCard","_deferredExpense","_deferredRevenue","_equity","_expense","_fixedAsset","_income","_longTermLiability","_nonPosting","_otherAsset","_otherCurrentAsset","_otherCurrentLiability","_otherExpense","_otherIncome","_unbilledReceivable"]
  ItemCostingMethod:
    base: 'xsd:string'
    values: ["_average","_fifo","_lifo"]
  ItemProductFeed:
    base: 'xsd:string'
    values: ["_googleBase","_nexTag","_shoppingCom","_shopzilla","_yahooShopping"]
  ItemType:
    base: 'xsd:string'
    values: ["_assembly","_description","_discount","_downloadItem","_giftCertificateItem","_inventoryItem","_itemGroup","_kit","_markup","_nonInventoryItem","_otherCharge","_payment","_service","_subtotal"]
  ItemWeightUnit:
    base: 'xsd:string'
    values: ["_g","_kg","_lb","_oz"]
  ItemPreferenceCriterion:
    base: 'xsd:string'
    values: ["_A","_B","_C","_D","_E","_F"]
  ItemOverallQuantityPricingType:
    base: 'xsd:string'
    values: ["_byLineQuantity","_byOverallItemQuantity","_byOverallParentQuantity","_byOverallScheduleQuantity"]
  ScheduleBCode:
    base: 'xsd:string'
    values: ["_1000","_1000cubicMeters","_barrels","_carat","_cleanYieldKilogram","_contentKilogram","_contentTon","_cubicMeters","_curie","_dozen","_dozenPairs","_dozenPieces","_fiberMeter","_gram","_gross","_grossContainers","_hundred","_kilogram","_kilogramTotalSugars","_liter","_meter","_millicurie","_noQuantityReq","_number","_pack","_pairs","_pieces","_proofLiter","_runningBales","_square","_squareCentimeters","_squareMeters","_ton"]
  ItemSubType:
    base: 'xsd:string'
    values: ["_forPurchase","_forResale","_forSale"]
  CurrencyCurrencyPrecision:
    base: 'xsd:string'
    values: ["_one","_two","_zero"]
  CurrencyFxRateUpdateTimezone:
    base: 'xsd:string'
    values: ["_americaNewYork","_asiaMagadan","_asiaTokyo","_europeParis"]
  SalesTaxItemAvailable:
    base: 'xsd:string'
    values: ["_both","_purchase","_sale"]
  ItemEbayAuctionDuration:
    base: 'xsd:string'
    values: ["_10days","_120days","_1day","_30days","_3days","_5days","_60days","_7days","_90days","_goodUntilCancelled"]
  ItemOutOfStockBehavior:
    base: 'xsd:string'
    values: ["_allowBackOrdersButDisplayOutOfStockMessage","_allowBackOrdersWithNoOutOfStockMessage","_default","_disallowBackOrdersButDisplayOutOfStockMessage","_removeItemWhenOutOfStock"]
  ItemEbayRelistingOption:
    base: 'xsd:string'
    values: ["_doNotRelist","_relistWhenItemExpires","_relistWhenItemIsSold","_relistWhenItemIsSoldExpires"]
  ConsolidatedRate:
    base: 'xsd:string'
    values: ["_average","_current","_historical"]
  CashFlowRateType:
    base: 'xsd:string'
    values: ["_average","_current","_historical"]
  GeneralRateType:
    base: 'xsd:string'
    values: ["_average","_current","_historical"]
  ItemMatrixType:
    base: 'xsd:string'
    values: ["_parent","_child"]
  ItemDemandSource:
    base: 'xsd:string'
    values: ["_enteredAndPlannedOrders","_forecastFromDemandPlan"]
  ItemSupplyLotSizingMethod:
    base: 'xsd:string'
    values: ["_fixedLotSize","_lotForLot"]
  ItemSupplyType:
    base: 'xsd:string'
    values: ["_build","_purchase"]
  ItemSupplyReplenishmentMethod:
    base: 'xsd:string'
    values: ["_reorderPoint","_timePhased"]
  RevRecScheduleRecogIntervalSrc:
    base: 'xsd:string'
    values: ["_revRecDatesSpecifiedOnTransaction","_billingScheduleTranDateOnSalesOrder","_billingScheduleRevRecDateOnSalesOrder","_revRecDatesSpecifiedOnSalesOrder"]
  RevRecScheduleRecurrenceType:
    base: 'xsd:string'
    values: ["_custom","_straightLineByEvenPeriods","_straightLineProrateFirstAndLastPeriod","_straightLineProrateFirstAndLastPeriodPeriodRate","_straightLineUsingExactDays"]
  RevRecScheduleAmortizationType:
    base: 'xsd:string'
    values: ["_standard","_variable"]
  CostCategoryItemCostType:
    base: 'xsd:string'
    values: ["_landed","_material","_service"]
  ItemAtpMethod:
    base: 'xsd:string'
    values: ["_cumulativeAtpWithLookAhead","_discreteAtp"]
