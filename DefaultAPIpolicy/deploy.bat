rem Default API policy deployment

az group deployment create --name AzureAPIManagementApis --subscription Dev --resource-group API_Management --template-file defaultApiPolicy.json --parameters @defaultApiPolicy.parameters.json --parameters policyFile=@apiPolicy.xml