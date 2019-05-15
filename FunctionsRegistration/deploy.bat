rem Serverless function registration

az group deployment create --name AzureAPIManagementApis --subscription Dev --resource-group API_Management --template-file registerFunction.json --parameters @registerFunction.parameters.json