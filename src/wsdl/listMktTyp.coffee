simpleTypes = module.exports =
  CampaignCampaignDirectMailStatus:
    base: 'xsd:string'
    values: ["_completed","_execute","_inProgress","_notStarted"]
  CampaignCampaignEmailStatus:
    base: 'xsd:string'
    values: ["_execute","_inProgress","_notStarted","_sent"]
  CampaignCampaignEventStatus:
    base: 'xsd:string'
    values: ["_completed","_execute","_inProgress","_notStarted"]
  CampaignChannelEventType:
    base: 'xsd:string'
    values: ["_directMail","_email","_integration","_other"]
  CampaignResponseResponse:
    base: 'xsd:string'
    values: ["_bounced","_clickedThru","_purchased","_received","_responded","_sent","_subscribed","_unsubscribed"]
  CampaignCampaignEventType:
    base: 'xsd:string'
    values: ["_default","_directMail","_email","_integration","_leadNurturingEmail","_other"]
  CampaignResponse:
    base: 'xsd:string'
    values: ["_clickedThrough","_failedDeliveryFailure","_failedInvalidAddress","_failedOther","_failedSpam","_invalidSenderAddress","_mailboxDisabled","_mailboxIsFull","_mailboxNotAcceptingMessages","_mailProtocolIssues","_mediaError","_messageExceedsSizeLengthLimits","_networkServerIssues","_opened","_purchased","_queued","_received","_responded","_securityIssues","_sent","_subscribed","_tooManyRecipients","_unsubscribed"]
  CampaignStatus:
    base: 'xsd:string'
    values: ["_closed","_completed","_execute","_inProgress","_scheduled","_sent","_toPrint"]
  PromotionCodeApplyDiscountTo:
    base: 'xsd:string'
    values: ["_allSales","_firstSaleOnly"]
  CampaignResponseCategory:
    base: 'xsd:string'
    values: ["_bounced","_clickedThrough","_purchased","_queued","_received","_responded","_sent","_subscribed","_unsubscribed"]
  PromotionCodeUseType:
    base: 'xsd:string'
    values: ["_multipleUses","_singleUse"]
