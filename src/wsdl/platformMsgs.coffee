exports.complexTypes =
  ApplicationInfo:
    elements:
      applicationId: { minOccurs: '0', type: 'xsd:string' }
  PartnerInfo:
    elements:
      partnerId: { minOccurs: '0', type: 'xsd:string' }
  DocumentInfo:
    elements:
      nsId: { type: 'xsd:string' }
  Preferences:
    elements:
      warningAsError: { minOccurs: '0', type: 'xsd:boolean' }
      disableMandatoryCustomFieldValidation: { minOccurs: '0', type: 'xsd:boolean' }
      disableSystemNotesForCustomFields: { minOccurs: '0', type: 'xsd:boolean' }
      ignoreReadOnlyFields: { minOccurs: '0', type: 'xsd:boolean' }
  SearchPreferences:
    elements:
      bodyFieldsOnly: { minOccurs: '0', type: 'xsd:boolean', default: 'true' }
      returnSearchColumns: { minOccurs: '0', type: 'xsd:boolean', default: 'true' }
      pageSize: { minOccurs: '0', type: 'xsd:int' }
  SessionResponse:
    elements:
      status: {  }
      userId: { type: 'platformCore:RecordRef', minOccurs: '0' }
      wsRoleList: { , minOccurs: '0' }
  WriteResponse:
    elements:
      status: {  }
      baseRef: { type: 'platformCore:BaseRef', minOccurs: '0' }
  ReadResponse:
    elements:
      status: {  }
      record: { type: 'platformCore:Record', minOccurs: '0' }
  WriteResponseList:
    elements:
      writeResponse: { type: 'platformMsgs:WriteResponse', maxOccurs: 'unbounded' }
  ReadResponseList:
    elements:
      readResponse: { type: 'platformMsgs:ReadResponse', minOccurs: '0', maxOccurs: 'unbounded' }
  LoginResponse:
    elements:
      sessionResponse: { type: 'platformMsgs:SessionResponse'  }
  SsoLoginResponse:
    elements:
      sessionResponse: { type: 'platformMsgs:SessionResponse'  }
  MapSsoResponse:
    elements:
      sessionResponse: { type: 'platformMsgs:SessionResponse'  }
  ChangePasswordResponse:
    elements:
      sessionResponse: { type: 'platformMsgs:SessionResponse'  }
  ChangeEmailResponse:
    elements:
      sessionResponse: { type: 'platformMsgs:SessionResponse'  }
  LogoutResponse:
    elements:
      sessionResponse: { type: 'platformMsgs:SessionResponse'  }
  AddResponse:
    elements:
      writeResponse: { type: 'platformMsgs:WriteResponse'  }
  AddListResponse:
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  UpdateResponse:
    elements:
      writeResponse: { type: 'platformMsgs:WriteResponse'  }
  UpdateListResponse:
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  UpsertResponse:
    elements:
      writeResponse: { type: 'platformMsgs:WriteResponse'  }
  UpsertListResponse:
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  DeleteResponse:
    elements:
      writeResponse: { type: 'platformMsgs:WriteResponse'  }
  DeleteListResponse:
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  SearchResponse:
    elements:
      searchResult: {  }
  SearchMoreResponse:
    elements:
      searchResult: {  }
  SearchMoreWithIdResponse:
    elements:
      searchResult: {  }
  SearchNextResponse:
    elements:
      searchResult: {  }
  GetResponse:
    elements:
      readResponse: { type: 'platformMsgs:ReadResponse'  }
  GetListResponse:
    elements:
      readResponseList: { type: 'platformMsgs:ReadResponseList'  }
  GetAllResponse:
    elements:
      getAllResult: {  }
  GetSavedSearchResponse:
    elements:
      getSavedSearchResult: {  }
  GetCustomizationIdResponse:
    elements:
      getCustomizationIdResult: {  }
  InitializeResponse:
    elements:
      readResponse: { type: 'platformMsgs:ReadResponse'  }
  InitializeListResponse:
    elements:
      readResponseList: { type: 'platformMsgs:ReadResponseList'  }
  getSelectValueResponse:
    elements:
      getSelectValueResult: {  }
  GetItemAvailabilityResponse:
    elements:
      getItemAvailabilityResult: {  }
  GetBudgetExchangeRateResponse:
    elements:
      getBudgetExchangeRateResult: {  }
  GetConsolidatedExchangeRateResponse:
    elements:
      getConsolidatedExchangeRateResult: {  }
  GetCurrencyRateResponse:
    elements:
      getCurrencyRateResult: {  }
  GetPostingTransactionSummaryResponse:
    elements:
      getPostingTransactionSummaryResult: {  }
  GetServerTimeResponse:
    elements:
      getServerTimeResult: {  }
  AttachResponse:
    elements:
      writeResponse: { type: 'platformMsgs:WriteResponse'  }
  DetachResponse:
    elements:
      writeResponse: { type: 'platformMsgs:WriteResponse'  }
  UpdateInviteeStatusResponse:
    elements:
      writeResponse: { type: 'platformMsgs:WriteResponse'  }
  UpdateInviteeStatusListResponse:
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  AsyncStatusResponse:
    elements:
      asyncStatusResult: {  }
  GetAsyncResultResponse:
    elements:
      asyncResult: { type: 'platformMsgs:AsyncResult' , minOccurs: '1' , maxOccurs: '1' }
  AsyncResult:
    abstract: "true"
  AsyncAddListResult:
    base: 'platformMsgs:AsyncResult'
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  AsyncUpdateListResult:
    base: 'platformMsgs:AsyncResult'
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  AsyncUpsertListResult:
    base: 'platformMsgs:AsyncResult'
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  AsyncDeleteListResult:
    base: 'platformMsgs:AsyncResult'
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  AsyncGetListResult:
    base: 'platformMsgs:AsyncResult'
    elements:
      readResponseList: { type: 'platformMsgs:ReadResponseList'  }
  AsyncSearchResult:
    base: 'platformMsgs:AsyncResult'
    elements:
      searchResult: {  }
  AsyncInitializeListResult:
    base: 'platformMsgs:AsyncResult'
    elements:
      writeResponseList: { type: 'platformMsgs:WriteResponseList'  }
  GetDeletedResponse:
    elements:
      getDeletedResult: {  }
  LoginRequest:
    elements:
      passport: { type: 'platformCore:Passport' }
  SsoLoginRequest:
    elements:
      ssoPassport: { type: 'platformCore:SsoPassport' }
  MapSsoRequest:
    elements:
      ssoCredentials: { type: 'platformCore:SsoCredentials' }
  ChangePasswordRequest:
    elements:
      changePassword: { type: 'platformCore:ChangePassword' }
  ChangeEmailRequest:
    elements:
      changeEmail: { type: 'platformCore:ChangeEmail' }
  LogoutRequest:
    abstract: "true"
  AddRequest:
    elements:
      record: { type: 'platformCore:Record' }
  DeleteRequest:
    elements:
      baseRef: { type: 'platformCore:BaseRef' }
  SearchRequest:
    elements:
      searchRecord: { type: 'platformCore:SearchRecord' }
  SearchMoreRequest:
    elements:
      pageIndex: { type: 'xsd:int' }
  SearchMoreWithIdRequest:
    elements:
      searchId: { type: 'xsd:string' }
      pageIndex: { type: 'xsd:int' }
  SearchNextRequest:
    abstract: "true"
  UpdateRequest:
    elements:
      record: { type: 'platformCore:Record' }
  UpsertRequest:
    elements:
      record: { type: 'platformCore:Record' }
  AddListRequest:
    elements:
      record: { type: 'platformCore:Record', minOccurs: '1', maxOccurs: 'unbounded' }
  DeleteListRequest:
    elements:
      baseRef: { type: 'platformCore:BaseRef', minOccurs: '1', maxOccurs: 'unbounded' }
  UpdateListRequest:
    elements:
      record: { type: 'platformCore:Record', minOccurs: '1', maxOccurs: 'unbounded' }
  UpsertListRequest:
    elements:
      record: { type: 'platformCore:Record', minOccurs: '1', maxOccurs: 'unbounded' }
  GetRequest:
    elements:
      baseRef: { type: 'platformCore:BaseRef' }
  GetListRequest:
    elements:
      baseRef: { type: 'platformCore:BaseRef', minOccurs: '1', maxOccurs: 'unbounded' }
  GetAllRequest:
    elements:
      record: { type: 'platformCore:GetAllRecord', minOccurs: '1' }
  GetSavedSearchRequest:
    elements:
      record: { type: 'platformCore:GetSavedSearchRecord', minOccurs: '1' }
  GetCustomizationIdRequest:
    elements:
      customizationType: { type: 'platformCore:CustomizationType', minOccurs: '1' }
      includeInactives: { type: 'xsd:boolean', minOccurs: '1' }
  InitializeRequest:
    elements:
      initializeRecord: { type: 'platformCore:InitializeRecord', minOccurs: '1' }
  InitializeListRequest:
    elements:
      initializeRecord: { type: 'platformCore:InitializeRecord', minOccurs: '1', maxOccurs: 'unbounded' }
  getSelectValueRequest:
    elements:
      fieldDescription: { type: 'platformCore:GetSelectValueFieldDescription', minOccurs: '1', maxOccurs: '1' }
      pageIndex: { type: 'xsd:int', minOccurs: '1', maxOccurs: '1' }
  GetItemAvailabilityRequest:
    elements:
      itemAvailabilityFilter: { type: 'platformCore:ItemAvailabilityFilter', minOccurs: '1', maxOccurs: '1' }
  GetBudgetExchangeRateRequest:
    elements:
      budgetExchangeRateFilter: { type: 'platformCore:BudgetExchangeRateFilter', minOccurs: '1', maxOccurs: '1' }
  GetConsolidatedExchangeRateRequest:
    elements:
      consolidatedExchangeRateFilter: { type: 'platformCore:ConsolidatedExchangeRateFilter', minOccurs: '1', maxOccurs: '1' }
  GetCurrencyRateRequest:
    elements:
      currencyRateFilter: { type: 'platformCore:CurrencyRateFilter', minOccurs: '1', maxOccurs: '1' }
  GetPostingTransactionSummaryRequest:
    elements:
      fields: { type: 'platformCore:PostingTransactionSummaryField', minOccurs: '1', maxOccurs: '1' }
      filters: { type: 'platformCore:PostingTransactionSummaryFilter', minOccurs: '0', maxOccurs: '1' }
      pageIndex: { type: 'xsd:int', minOccurs: '1', maxOccurs: '1' }
  GetServerTimeRequest:
    abstract: "true"
  AttachRequest:
    elements:
      attachReference: { type: 'platformCore:AttachReference', minOccurs: '1', maxOccurs: '1' }
  DetachRequest:
    elements:
      detachReference: { type: 'platformCore:DetachReference', minOccurs: '1', maxOccurs: '1' }
  AsyncAddListRequest:
    elements:
      record: { type: 'platformCore:Record', minOccurs: '1', maxOccurs: 'unbounded' }
  UpdateInviteeStatusRequest:
    elements:
      updateInviteeStatusReference: { type: 'platformCore:UpdateInviteeStatusReference', minOccurs: '1' }
  UpdateInviteeStatusListRequest:
    elements:
      updateInviteeStatusReference: { type: 'platformCore:UpdateInviteeStatusReference', minOccurs: '1', maxOccurs: 'unbounded' }
  AsyncUpdateListRequest:
    elements:
      record: { type: 'platformCore:Record', minOccurs: '1', maxOccurs: 'unbounded' }
  AsyncUpsertListRequest:
    elements:
      record: { type: 'platformCore:Record', minOccurs: '1', maxOccurs: 'unbounded' }
  AsyncDeleteListRequest:
    elements:
      baseRef: { type: 'platformCore:BaseRef', minOccurs: '1', maxOccurs: 'unbounded' }
  AsyncGetListRequest:
    elements:
      baseRef: { type: 'platformCore:BaseRef', minOccurs: '1', maxOccurs: 'unbounded' }
  AsyncInitializeListRequest:
    elements:
      initializeRecord: { type: 'platformCore:InitializeRecord', minOccurs: '1', maxOccurs: 'unbounded' }
  AsyncSearchRequest:
    elements:
      searchRecord: { type: 'platformCore:SearchRecord' }
  CheckAsyncStatusRequest:
    elements:
      jobId: { type: 'xsd:string', minOccurs: '1', maxOccurs: '1' }
  GetAsyncResultRequest:
    elements:
      jobId: { type: 'xsd:string', minOccurs: '1', maxOccurs: '1' }
      pageIndex: { type: 'xsd:int', minOccurs: '1', maxOccurs: '1' }
  GetDeletedRequest:
    elements:
      getDeletedFilter: { type: 'platformCore:GetDeletedFilter', minOccurs: '1', maxOccurs: '1' }
