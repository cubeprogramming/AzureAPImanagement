# API Operations

This template allow as to create/edit API operation definition. We have to deploy this template for each operations that we want to support/edit. Template does not depend on Swagger file to define API operations. Template allows for native connections with Azure Serverless functions that have been previously registered by using "FunctionRegistration" template.

## Parameters

From example found in deploy.bat, you can se that template accepts:

- request-json - snippet defining optional request payload if parameters are send as query
- response.json - snippet defining optional response payload
- templateParameters - snippet defining optional parameters when they are send as part of URL

## Examples

In "examples" folder you can find different combinations of: request, response and template parameters
