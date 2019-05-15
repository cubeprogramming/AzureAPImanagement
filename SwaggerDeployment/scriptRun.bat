@echo off
rem for /f %%i in ('cd') do set swaggerPath=%%i
CD > temp.txt
set /p workingPath=<temp.txt

rem This is path used in Azure DevOps (VSTS)
set workingPath=%workingPath%\_OpenApiDeployment-CI\openapi
set swaggerPath="%workingPath%\openApi.json"
set scriptPath="%workingPath%\ImportSwaggerApi-OldModule.ps1"
echo %workingPath%
echo %scriptPath%
echo %swaggerPath%

powershell.exe -file %scriptPath% -resourceGroupName API_Management -apimServiceName cubeapimgr-dev -apiId DemoConference -swaggerFile %swaggerPath% -apiPath democonference