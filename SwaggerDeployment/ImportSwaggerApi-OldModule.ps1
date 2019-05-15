param([string]$resourceGroupName, [string]$apimServiceName, [string]$apiId, [string]$apiPath, [string]$swaggerFile)
#Connect-AzureRmAccount

#Install or import AzureRm module if does not exist
if (Get-Module -ListAvailable -Name AzureRm*) {
    Write-Host "Module exists"
}
else {
    Import-Module -Name PowerShellGet -ErrorAction Stop
	Import-Module -Name PackageManagement -ErrorAction Stop
	Get-PSRepository -Name "PSGallery"
	Register-PsRepository -Default
	Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
	Install-Module AzureRM -RequiredVersion 2.4.0
	Install-Module -Name AzureStack -RequiredVersion 1.7.1
	Install-Module -Name AzureRM.Storage -RequiredVersion 5.0.4 -Force -AllowClobber
	Import-Module -Name Azure.Storage -RequiredVersion 4.5.0
	Import-Module -Name AzureRM.Storage -RequiredVersion 5.0.4
}

#Check that the module has been installed
Get-Module -Name "Azure*" -ListAvailable
Get-Module -Name "Azs*" -ListAvailable


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
Select-AzureRmSubscription -Subscription Dev
#Get-AzureRmSubscription

# Create the API Management context
$ApiMgmtContext = New-AzureRmApiManagementContext -ResourceGroupName $resourceGroupName -ServiceName $apimServiceName

Import-AzureRmApiManagementApi -Context $ApiMgmtContext -ApiId $apiId -SpecificationFormat Swagger -SpecificationPath $swaggerFile -Path $apiPath
