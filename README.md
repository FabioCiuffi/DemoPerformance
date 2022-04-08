# DemoPerformance
Follow the instructions to prepare the environment to run the resource creation pipeline
Access your azure subscription with administrative credentials

1) Create a resource group that will contain the resources that will be generated
https://docs.microsoft.com/en-us/cli/azure/group?view=azure-cli-latest

Sample: 
az group create -l "switzerlandnorth" -n "STU"

2) Create a management identity and assign the collaborator role to the group created in the previous step. Save the statement output in Notepad for use in the next step
https://docs.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-cli%2Clinux

Sample 
az ad sp create-for-rbac --name "STU" --role owner --scopes /subscriptions/744dd6eb-f4a1-4ff3-bc6b-ecec2fb8c22e/resourceGroups/STU --sdk-auth

3) Copy the output from the previous point inside the GitHub secret key AZURE_CREDENTIALS: 
{
  "clientId": "658ca1e0-8dc9-459e-bf9b-aa7c4fe10d57",
  "clientSecret": "9F._I904ZJo9UZBmEAeb9_FgFENTrdfilp",
  "subscriptionId": "744dd6eb-f4a1-4ff3-bc6b-ecec2fb8c22e",
  "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
}

4) Modify file: .github\workflows\main.yml

Customize value for following keys: 
  AZUREAPPLICATIONINSIGHTSNAME:   "STUApplicationInsights"
  CONTAINERREGISTRYNAME:          "STUContainerRegistry"
  CONTAINERREGISTRYNAMELOWER:     "stucontainerregistry"
  REPOSITORYNAME:                 "sturepository"
  APPNAME:                        "stu"
  KUBERNETESSERVICENAME:          "STUKubernetesService"
  AZURELOGANALYTICSWORKSPACENAME: "STULogAnalyticsWorkspace"
  AZURELOADTESTINGNAME:           "STUAzureLoadTesting"



============================================================
Documentation

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

