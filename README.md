# DemoPerformance
# Follow instruction for preparare environment 

https://docs.microsoft.com/en-us/cli/azure/group?view=azure-cli-latest
https://docs.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-cli%2Clinux

az group create -l "switzerlandnorth" -n "STU"
az ad sp create-for-rbac --name "STU" --role contributor --scopes /subscriptions/744dd6eb-f4a1-4ff3-bc6b-ecec2fb8c22e/resourceGroups/Sample --sdk-auth

Save output into notepad to use after

{
  "clientId": "658ca1e0-8dc9-459e-bf9b-aa7c4fe10d57",
  "clientSecret": "9F._I904ZJo9UZBmEAeb9_FgFENTrdfilp",
  "subscriptionId": "744dd6eb-f4a1-4ff3-bc6b-ecec2fb8c22e",
  "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}

Modify file: .github\workflows\main.yml

Customize value for following keys: 

  AZUREAPPLICATIONINSIGHTSNAME:   "STUApplicationInsights"
  CONTAINERREGISTRYNAME:          "STUContainerRegistry"
  CONTAINERREGISTRYNAMELOWER:     "stucontainerregistry"
  REPOSITORYNAME:                 "sturepository"
  APPNAME:                        "stu"
  KUBERNETESSERVICENAME:          "STUKubernetesService"
  AZURELOGANALYTICSWORKSPACENAME: "STULogAnalyticsWorkspace"
  AZURELOADTESTINGNAME:           "STUAzureLoadTesting"




https://docs.microsoft.com/en-us/azure/chaos-studio/chaos-studio-tutorial-aks-portal#set-up-chaos-mesh-on-your-aks-cluster

https://github.com/Azure/bicep/blob/main/docs/examples/101/aks/main.bicep

https://docs.microsoft.com/en-us/azure/templates/microsoft.containerservice/managedclusters?tabs=bicep

https://github.com/Azure/bicep/blob/main/docs/examples/101/container-registry/main.bicep

https://docs.microsoft.com/en-us/azure/templates/microsoft.insights/2018-05-01-preview/components?tabs=bicep

https://docs.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-cli%2Clinux

https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli

https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-github-actions?tabs=CLI#create-workflow

https://docs.microsoft.com/en-us/azure/templates/microsoft.containerservice/2021-03-01/managedclusters?tabs=bicep#managedclusteridentity

https://docs.microsoft.com/en-us/azure/templates/microsoft.loadtestservice/loadtests?tabs=bicep

https://github.com/marketplace/actions/azure-container-registry-build

https://docs.microsoft.com/en-us/azure/container-registry/container-registry-authentication?tabs=azure-cli#authentication-options

https://docs.microsoft.com/en-us/azure/aks/concepts-clusters-workloads#deployments-and-yaml-manifests

https://docs.microsoft.com/en-us/cli/azure/acr/credential?view=azure-cli-latest#az-acr-credential-show

https://docs.microsoft.com/en-us/azure/aks/internal-lb#create-an-internal-load-balancer

