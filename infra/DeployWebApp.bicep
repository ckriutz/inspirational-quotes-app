param location string = resourceGroup().location
param appServicePlanName string = 'myAppServicePlan'
param webAppName string = 'myFlaskWebApp'
param skuName string = 'B1'
param appServicePlanTier string = 'Basic'
param pythonVersion string = '3.8'

resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: skuName
    tier: appServicePlanTier
  }
  kind: 'linux'
  properties: {
    reserved: true
  }
}

resource webApp 'Microsoft.Web/sites@2021-02-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: 'PYTHON|${pythonVersion}'
    }
  }
  kind: 'app,linux'
}

resource webAppSettings 'Microsoft.Web/sites/config@2021-02-01' = {
  name: '${webAppName}/web'
  dependsOn: [
    webApp
  ]
  properties: {
    alwaysOn: true
    appSettings: [
      {
        name: 'WEBSITE_RUN_FROM_PACKAGE'
        value: '1'
      }
      {
        name: 'SCM_DO_BUILD_DURING_DEPLOYMENT'
        value: 'true'
      }
    ]
  }
}
