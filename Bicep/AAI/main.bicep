resource symbolicname 'Microsoft.Insights/components@2018-05-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue'
    tagName2: 'tagValue2'
  }
  kind: 'string'
  properties: {
    Application_Type: 'string'
    DisableIpMasking: bool
    Flow_Type: 'Bluefield'
    HockeyAppId: 'string'
    ImmediatePurgeDataOn30Days: bool
    IngestionMode: 'string'
    publicNetworkAccessForIngestion: 'string'
    publicNetworkAccessForQuery: 'string'
    Request_Source: 'rest'
    RetentionInDays: int
    SamplingPercentage: int
  }
}
