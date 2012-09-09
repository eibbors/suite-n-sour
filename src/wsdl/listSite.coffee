exports.complexTypes =
  SiteCategory:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      website: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemId: { type: 'xsd:string', minOccurs: '0' }
      parentCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      categoryListLayout: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemListLayout: { type: 'platformCore:RecordRef', minOccurs: '0' }
      relatedItemsListLayout: { type: 'platformCore:RecordRef', minOccurs: '0' }
      correlatedItemsListLayout: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeDisplayImage: { type: 'platformCore:RecordRef', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
      metaTagHtml: { type: 'xsd:string', minOccurs: '0' }
      excludeFromSitemap: { type: 'xsd:boolean', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      sitemapPriority: { type: 'platformCommonTyp:SitemapPriority', minOccurs: '0' }
      searchKeywords: { type: 'xsd:string', minOccurs: '0' }
      presentationItemList: { type: 'listSite:SiteCategoryPresentationItemList', minOccurs: '0' }
      translationsList: { type: 'listSite:SiteCategoryTranslationList', minOccurs: '0' }
  SiteCategoryTranslation:
    elements:
      locale: { type: 'platformCommonTyp:Language', minOccurs: '0' }
      language: { type: 'xsd:string', minOccurs: '0' }
      displayName: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      storeDetailedDescription: { type: 'xsd:string', minOccurs: '0' }
      pageTitle: { type: 'xsd:string', minOccurs: '0' }
  SiteCategoryTranslationList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      translation: { type: 'listSite:SiteCategoryTranslation', minOccurs: '0', maxOccurs: 'unbounded' }
  SiteCategoryPresentationItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      presentationItem: { type: 'platformCommon:PresentationItem', minOccurs: '0', maxOccurs: 'unbounded' }
  SiteCategorySearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:SiteCategorySearchBasic', minOccurs: '0' }
      shopperJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  SiteCategorySearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listSite:SiteCategorySearch', minOccurs: '0' }
      columns: { type: 'listSite:SiteCategorySearchRow', minOccurs: '0' }
  SiteCategorySearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:SiteCategorySearchRowBasic', minOccurs: '0' }
      shopperJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
