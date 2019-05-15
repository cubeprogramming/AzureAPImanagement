rem API operation registration

az group deployment create --name APIOperatins --subscription Dev --resource-group API_Management --template-file operationdeploy.json --parameters @operationdeploy.parameters.json --parameters templateParameters=@templateParameters.json request=@request.json responses=@responses.json policyFile=@apiPolicy.xml
