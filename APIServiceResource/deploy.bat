rem API service deployment

az group deployment create --name APIServiceResource --subscription Dev --resource-group API_Management --template-file apiServiceDeploy.json --parameters @apiServiceDeploy.parameters.json
