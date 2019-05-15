rem API product registration

az group deployment create --name AzureAPIManagementApis --subscription Dev --resource-group API_Management --template-file productdeploy.json --parameters @productdeploy.parameters.json --parameters policyFile=@productPolicy.xml