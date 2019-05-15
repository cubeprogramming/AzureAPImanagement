param([string]$resourceGroupName, [string]$apimServiceName, [string]$apiId, [string]$apiPath, [string]$swaggerFile)
#Connect-AzAccount

#Install or import Az module if does not exist
if (Get-Module -ListAvailable -Name Az.Accounts) {
    Write-Host "Module exists"
}
else {
    Install-Module -Name Az -AllowClobber
	#Import-Module -Name Az -Global
}

#Check that the module has been installed
Get-Module -Name "Az.*" -ListAvailable

# Api Management service specific details
#$resourceGroupName = "API_Management"
#$apimServiceName = "apiServiceName-dev"

#Api details
#$apiId = "DemoConference"
#$apiPath = "democonference"
#$swaggerFile = "openApi.json"
#$swaggerPath = Get-Location
#$swagger = "$swaggerPath\$swaggerFile"


#Set subscription
Select-AzSubscription -Subscription Dev
Get-AzSubscription

# Create the API Management context
$ApiMgmtContext = New-AzApiManagementContext -ResourceGroupName $resourceGroupName -ServiceName $apimServiceName

Import-AzApiManagementApi -Context $ApiMgmtContext -ApiId $apiId -SpecificationFormat Swagger -SpecificationPath $swaggerFile -Path $apiPath
