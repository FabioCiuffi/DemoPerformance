@description('Name of the log analytics workspace')
param logAnalyticsName string = 'DemoPerformanceLogAnalyticsWorkspace'
param location string = resourceGroup().location

resource logAnalytics 'Microsoft.OperationalInsights/workspaces@2021-12-01-preview' = {
  name: logAnalyticsName
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
  }
}

@description('Name of the Container App Environment')
param containerAppEnvName string = 'DemoPerformanceContainerAppEnvironment'

resource containerAppEnvironment 'Microsoft.Web/kubeEnvironments@2021-03-01' = {
  name: containerAppEnvName
  location: location 
  kind: 'containerenvironment'
  properties: {
    environmentType: 'managed'
    internalLoadBalancerEnabled: false
    appLogsConfiguration: {
      destination: 'log-analytics'
      logAnalyticsConfiguration: {
        customerId: logAnalytics.properties.customerId
        sharedKey: logAnalytics.listKeys().primarySharedKey
      }
    }
  }
}
