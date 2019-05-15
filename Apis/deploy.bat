rem API registration

az group deployment create --name AzureApis --subscription Dev --resource-group API_Management --template-file apideploy.json --parameters @apideploy.parameters.json
