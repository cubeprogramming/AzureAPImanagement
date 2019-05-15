# AzureAPImanagement

This project contains series of subprojects (modules) with azure templates and scripts used to create different resources within Azure API management.

## Modules

- APIServiceResource - module containing scripts and templates used to register and create API management service inside Azure resource group
- Apis - module containing scripts and templates used to register API names and definitions with API management service inside Azure resource group
- ApiOperatios - module containing scripts and templates used to create/edit api operations and register them with defined APIs
- DefaultPolicy - module containing scripts and templates used to register default inbound-outbound policies for the whole API management service
- FunctionRegistration - module containing scripts and templates used to register Azure serverless functions with API management service
- Products - module containing scripts and templates used to register products (end user access policies) with API management service
- ProductAssignment - module containing scripts and templates used to assign registered products to API operations
- SwaggerDeployment - module containing scripts used to deploy Swagger file to Api management service and instantly create all required APIs and operations
