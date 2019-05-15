param([string]$tenantName, [string]$tenantId, [string]$passwd)

#Login wiht service credentials
#$tenantName = 'http://<tennant name>.onmicrosoft.com'
$secPasswd = ConvertTo-SecureString $passwd -AsPlainText -Force
$pscredential = New-Object System.Management.Automation.PSCredential($tenantName, $secPasswd)
Connect-AzAccount -ServicePrincipal -Credential $pscredential -TenantId $tenantId
