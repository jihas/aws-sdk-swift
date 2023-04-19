// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon API Gateway Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.
public protocol APIGatewayClientProtocol {
    /// Create an ApiKey resource.
    func createApiKey(input: CreateApiKeyInput) async throws -> CreateApiKeyOutputResponse
    /// Adds a new Authorizer resource to an existing RestApi resource.
    func createAuthorizer(input: CreateAuthorizerInput) async throws -> CreateAuthorizerOutputResponse
    /// Creates a new BasePathMapping resource.
    func createBasePathMapping(input: CreateBasePathMappingInput) async throws -> CreateBasePathMappingOutputResponse
    /// Creates a Deployment resource, which makes a specified RestApi callable over the internet.
    func createDeployment(input: CreateDeploymentInput) async throws -> CreateDeploymentOutputResponse
    /// Creates a documentation part.
    func createDocumentationPart(input: CreateDocumentationPartInput) async throws -> CreateDocumentationPartOutputResponse
    /// Creates a documentation version
    func createDocumentationVersion(input: CreateDocumentationVersionInput) async throws -> CreateDocumentationVersionOutputResponse
    /// Creates a new domain name.
    func createDomainName(input: CreateDomainNameInput) async throws -> CreateDomainNameOutputResponse
    /// Adds a new Model resource to an existing RestApi resource.
    func createModel(input: CreateModelInput) async throws -> CreateModelOutputResponse
    /// Creates a RequestValidator of a given RestApi.
    func createRequestValidator(input: CreateRequestValidatorInput) async throws -> CreateRequestValidatorOutputResponse
    /// Creates a Resource resource.
    func createResource(input: CreateResourceInput) async throws -> CreateResourceOutputResponse
    /// Creates a new RestApi resource.
    func createRestApi(input: CreateRestApiInput) async throws -> CreateRestApiOutputResponse
    /// Creates a new Stage resource that references a pre-existing Deployment for the API.
    func createStage(input: CreateStageInput) async throws -> CreateStageOutputResponse
    /// Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload.
    func createUsagePlan(input: CreateUsagePlanInput) async throws -> CreateUsagePlanOutputResponse
    /// Creates a usage plan key for adding an existing API key to a usage plan.
    func createUsagePlanKey(input: CreateUsagePlanKeyInput) async throws -> CreateUsagePlanKeyOutputResponse
    /// Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
    func createVpcLink(input: CreateVpcLinkInput) async throws -> CreateVpcLinkOutputResponse
    /// Deletes the ApiKey resource.
    func deleteApiKey(input: DeleteApiKeyInput) async throws -> DeleteApiKeyOutputResponse
    /// Deletes an existing Authorizer resource.
    func deleteAuthorizer(input: DeleteAuthorizerInput) async throws -> DeleteAuthorizerOutputResponse
    /// Deletes the BasePathMapping resource.
    func deleteBasePathMapping(input: DeleteBasePathMappingInput) async throws -> DeleteBasePathMappingOutputResponse
    /// Deletes the ClientCertificate resource.
    func deleteClientCertificate(input: DeleteClientCertificateInput) async throws -> DeleteClientCertificateOutputResponse
    /// Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.
    func deleteDeployment(input: DeleteDeploymentInput) async throws -> DeleteDeploymentOutputResponse
    /// Deletes a documentation part
    func deleteDocumentationPart(input: DeleteDocumentationPartInput) async throws -> DeleteDocumentationPartOutputResponse
    /// Deletes a documentation version.
    func deleteDocumentationVersion(input: DeleteDocumentationVersionInput) async throws -> DeleteDocumentationVersionOutputResponse
    /// Deletes the DomainName resource.
    func deleteDomainName(input: DeleteDomainNameInput) async throws -> DeleteDomainNameOutputResponse
    /// Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
    func deleteGatewayResponse(input: DeleteGatewayResponseInput) async throws -> DeleteGatewayResponseOutputResponse
    /// Represents a delete integration.
    func deleteIntegration(input: DeleteIntegrationInput) async throws -> DeleteIntegrationOutputResponse
    /// Represents a delete integration response.
    func deleteIntegrationResponse(input: DeleteIntegrationResponseInput) async throws -> DeleteIntegrationResponseOutputResponse
    /// Deletes an existing Method resource.
    func deleteMethod(input: DeleteMethodInput) async throws -> DeleteMethodOutputResponse
    /// Deletes an existing MethodResponse resource.
    func deleteMethodResponse(input: DeleteMethodResponseInput) async throws -> DeleteMethodResponseOutputResponse
    /// Deletes a model.
    func deleteModel(input: DeleteModelInput) async throws -> DeleteModelOutputResponse
    /// Deletes a RequestValidator of a given RestApi.
    func deleteRequestValidator(input: DeleteRequestValidatorInput) async throws -> DeleteRequestValidatorOutputResponse
    /// Deletes a Resource resource.
    func deleteResource(input: DeleteResourceInput) async throws -> DeleteResourceOutputResponse
    /// Deletes the specified API.
    func deleteRestApi(input: DeleteRestApiInput) async throws -> DeleteRestApiOutputResponse
    /// Deletes a Stage resource.
    func deleteStage(input: DeleteStageInput) async throws -> DeleteStageOutputResponse
    /// Deletes a usage plan of a given plan Id.
    func deleteUsagePlan(input: DeleteUsagePlanInput) async throws -> DeleteUsagePlanOutputResponse
    /// Deletes a usage plan key and remove the underlying API key from the associated usage plan.
    func deleteUsagePlanKey(input: DeleteUsagePlanKeyInput) async throws -> DeleteUsagePlanKeyOutputResponse
    /// Deletes an existing VpcLink of a specified identifier.
    func deleteVpcLink(input: DeleteVpcLinkInput) async throws -> DeleteVpcLinkOutputResponse
    /// Flushes all authorizer cache entries on a stage.
    func flushStageAuthorizersCache(input: FlushStageAuthorizersCacheInput) async throws -> FlushStageAuthorizersCacheOutputResponse
    /// Flushes a stage's cache.
    func flushStageCache(input: FlushStageCacheInput) async throws -> FlushStageCacheOutputResponse
    /// Generates a ClientCertificate resource.
    func generateClientCertificate(input: GenerateClientCertificateInput) async throws -> GenerateClientCertificateOutputResponse
    /// Gets information about the current Account resource.
    func getAccount(input: GetAccountInput) async throws -> GetAccountOutputResponse
    /// Gets information about the current ApiKey resource.
    func getApiKey(input: GetApiKeyInput) async throws -> GetApiKeyOutputResponse
    /// Gets information about the current ApiKeys resource.
    func getApiKeys(input: GetApiKeysInput) async throws -> GetApiKeysOutputResponse
    /// Describe an existing Authorizer resource.
    func getAuthorizer(input: GetAuthorizerInput) async throws -> GetAuthorizerOutputResponse
    /// Describe an existing Authorizers resource.
    func getAuthorizers(input: GetAuthorizersInput) async throws -> GetAuthorizersOutputResponse
    /// Describe a BasePathMapping resource.
    func getBasePathMapping(input: GetBasePathMappingInput) async throws -> GetBasePathMappingOutputResponse
    /// Represents a collection of BasePathMapping resources.
    func getBasePathMappings(input: GetBasePathMappingsInput) async throws -> GetBasePathMappingsOutputResponse
    /// Gets information about the current ClientCertificate resource.
    func getClientCertificate(input: GetClientCertificateInput) async throws -> GetClientCertificateOutputResponse
    /// Gets a collection of ClientCertificate resources.
    func getClientCertificates(input: GetClientCertificatesInput) async throws -> GetClientCertificatesOutputResponse
    /// Gets information about a Deployment resource.
    func getDeployment(input: GetDeploymentInput) async throws -> GetDeploymentOutputResponse
    /// Gets information about a Deployments collection.
    func getDeployments(input: GetDeploymentsInput) async throws -> GetDeploymentsOutputResponse
    /// Gets a documentation part.
    func getDocumentationPart(input: GetDocumentationPartInput) async throws -> GetDocumentationPartOutputResponse
    /// Gets documentation parts.
    func getDocumentationParts(input: GetDocumentationPartsInput) async throws -> GetDocumentationPartsOutputResponse
    /// Gets a documentation version.
    func getDocumentationVersion(input: GetDocumentationVersionInput) async throws -> GetDocumentationVersionOutputResponse
    /// Gets documentation versions.
    func getDocumentationVersions(input: GetDocumentationVersionsInput) async throws -> GetDocumentationVersionsOutputResponse
    /// Represents a domain name that is contained in a simpler, more intuitive URL that can be called.
    func getDomainName(input: GetDomainNameInput) async throws -> GetDomainNameOutputResponse
    /// Represents a collection of DomainName resources.
    func getDomainNames(input: GetDomainNamesInput) async throws -> GetDomainNamesOutputResponse
    /// Exports a deployed version of a RestApi in a specified format.
    func getExport(input: GetExportInput) async throws -> GetExportOutputResponse
    /// Gets a GatewayResponse of a specified response type on the given RestApi.
    func getGatewayResponse(input: GetGatewayResponseInput) async throws -> GetGatewayResponseOutputResponse
    /// Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
    func getGatewayResponses(input: GetGatewayResponsesInput) async throws -> GetGatewayResponsesOutputResponse
    /// Get the integration settings.
    func getIntegration(input: GetIntegrationInput) async throws -> GetIntegrationOutputResponse
    /// Represents a get integration response.
    func getIntegrationResponse(input: GetIntegrationResponseInput) async throws -> GetIntegrationResponseOutputResponse
    /// Describe an existing Method resource.
    func getMethod(input: GetMethodInput) async throws -> GetMethodOutputResponse
    /// Describes a MethodResponse resource.
    func getMethodResponse(input: GetMethodResponseInput) async throws -> GetMethodResponseOutputResponse
    /// Describes an existing model defined for a RestApi resource.
    func getModel(input: GetModelInput) async throws -> GetModelOutputResponse
    /// Describes existing Models defined for a RestApi resource.
    func getModels(input: GetModelsInput) async throws -> GetModelsOutputResponse
    /// Generates a sample mapping template that can be used to transform a payload into the structure of a model.
    func getModelTemplate(input: GetModelTemplateInput) async throws -> GetModelTemplateOutputResponse
    /// Gets a RequestValidator of a given RestApi.
    func getRequestValidator(input: GetRequestValidatorInput) async throws -> GetRequestValidatorOutputResponse
    /// Gets the RequestValidators collection of a given RestApi.
    func getRequestValidators(input: GetRequestValidatorsInput) async throws -> GetRequestValidatorsOutputResponse
    /// Lists information about a resource.
    func getResource(input: GetResourceInput) async throws -> GetResourceOutputResponse
    /// Lists information about a collection of Resource resources.
    func getResources(input: GetResourcesInput) async throws -> GetResourcesOutputResponse
    /// Lists the RestApi resource in the collection.
    func getRestApi(input: GetRestApiInput) async throws -> GetRestApiOutputResponse
    /// Lists the RestApis resources for your collection.
    func getRestApis(input: GetRestApisInput) async throws -> GetRestApisOutputResponse
    /// Generates a client SDK for a RestApi and Stage.
    func getSdk(input: GetSdkInput) async throws -> GetSdkOutputResponse
    /// Gets an SDK type.
    func getSdkType(input: GetSdkTypeInput) async throws -> GetSdkTypeOutputResponse
    /// Gets SDK types
    func getSdkTypes(input: GetSdkTypesInput) async throws -> GetSdkTypesOutputResponse
    /// Gets information about a Stage resource.
    func getStage(input: GetStageInput) async throws -> GetStageOutputResponse
    /// Gets information about one or more Stage resources.
    func getStages(input: GetStagesInput) async throws -> GetStagesOutputResponse
    /// Gets the Tags collection for a given resource.
    func getTags(input: GetTagsInput) async throws -> GetTagsOutputResponse
    /// Gets the usage data of a usage plan in a specified time interval.
    func getUsage(input: GetUsageInput) async throws -> GetUsageOutputResponse
    /// Gets a usage plan of a given plan identifier.
    func getUsagePlan(input: GetUsagePlanInput) async throws -> GetUsagePlanOutputResponse
    /// Gets a usage plan key of a given key identifier.
    func getUsagePlanKey(input: GetUsagePlanKeyInput) async throws -> GetUsagePlanKeyOutputResponse
    /// Gets all the usage plan keys representing the API keys added to a specified usage plan.
    func getUsagePlanKeys(input: GetUsagePlanKeysInput) async throws -> GetUsagePlanKeysOutputResponse
    /// Gets all the usage plans of the caller's account.
    func getUsagePlans(input: GetUsagePlansInput) async throws -> GetUsagePlansOutputResponse
    /// Gets a specified VPC link under the caller's account in a region.
    func getVpcLink(input: GetVpcLinkInput) async throws -> GetVpcLinkOutputResponse
    /// Gets the VpcLinks collection under the caller's account in a selected region.
    func getVpcLinks(input: GetVpcLinksInput) async throws -> GetVpcLinksOutputResponse
    /// Import API keys from an external source, such as a CSV-formatted file.
    func importApiKeys(input: ImportApiKeysInput) async throws -> ImportApiKeysOutputResponse
    /// Imports documentation parts
    func importDocumentationParts(input: ImportDocumentationPartsInput) async throws -> ImportDocumentationPartsOutputResponse
    /// A feature of the API Gateway control service for creating a new API from an external API definition file.
    func importRestApi(input: ImportRestApiInput) async throws -> ImportRestApiOutputResponse
    /// Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
    func putGatewayResponse(input: PutGatewayResponseInput) async throws -> PutGatewayResponseOutputResponse
    /// Sets up a method's integration.
    func putIntegration(input: PutIntegrationInput) async throws -> PutIntegrationOutputResponse
    /// Represents a put integration.
    func putIntegrationResponse(input: PutIntegrationResponseInput) async throws -> PutIntegrationResponseOutputResponse
    /// Add a method to an existing Resource resource.
    func putMethod(input: PutMethodInput) async throws -> PutMethodOutputResponse
    /// Adds a MethodResponse to an existing Method resource.
    func putMethodResponse(input: PutMethodResponseInput) async throws -> PutMethodResponseOutputResponse
    /// A feature of the API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.
    func putRestApi(input: PutRestApiInput) async throws -> PutRestApiOutputResponse
    /// Adds or updates a tag on a given resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.
    func testInvokeAuthorizer(input: TestInvokeAuthorizerInput) async throws -> TestInvokeAuthorizerOutputResponse
    /// Simulate the invocation of a Method in your RestApi with headers, parameters, and an incoming request body.
    func testInvokeMethod(input: TestInvokeMethodInput) async throws -> TestInvokeMethodOutputResponse
    /// Removes a tag from a given resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Changes information about the current Account resource.
    func updateAccount(input: UpdateAccountInput) async throws -> UpdateAccountOutputResponse
    /// Changes information about an ApiKey resource.
    func updateApiKey(input: UpdateApiKeyInput) async throws -> UpdateApiKeyOutputResponse
    /// Updates an existing Authorizer resource.
    func updateAuthorizer(input: UpdateAuthorizerInput) async throws -> UpdateAuthorizerOutputResponse
    /// Changes information about the BasePathMapping resource.
    func updateBasePathMapping(input: UpdateBasePathMappingInput) async throws -> UpdateBasePathMappingOutputResponse
    /// Changes information about an ClientCertificate resource.
    func updateClientCertificate(input: UpdateClientCertificateInput) async throws -> UpdateClientCertificateOutputResponse
    /// Changes information about a Deployment resource.
    func updateDeployment(input: UpdateDeploymentInput) async throws -> UpdateDeploymentOutputResponse
    /// Updates a documentation part.
    func updateDocumentationPart(input: UpdateDocumentationPartInput) async throws -> UpdateDocumentationPartOutputResponse
    /// Updates a documentation version.
    func updateDocumentationVersion(input: UpdateDocumentationVersionInput) async throws -> UpdateDocumentationVersionOutputResponse
    /// Changes information about the DomainName resource.
    func updateDomainName(input: UpdateDomainNameInput) async throws -> UpdateDomainNameOutputResponse
    /// Updates a GatewayResponse of a specified response type on the given RestApi.
    func updateGatewayResponse(input: UpdateGatewayResponseInput) async throws -> UpdateGatewayResponseOutputResponse
    /// Represents an update integration.
    func updateIntegration(input: UpdateIntegrationInput) async throws -> UpdateIntegrationOutputResponse
    /// Represents an update integration response.
    func updateIntegrationResponse(input: UpdateIntegrationResponseInput) async throws -> UpdateIntegrationResponseOutputResponse
    /// Updates an existing Method resource.
    func updateMethod(input: UpdateMethodInput) async throws -> UpdateMethodOutputResponse
    /// Updates an existing MethodResponse resource.
    func updateMethodResponse(input: UpdateMethodResponseInput) async throws -> UpdateMethodResponseOutputResponse
    /// Changes information about a model.
    func updateModel(input: UpdateModelInput) async throws -> UpdateModelOutputResponse
    /// Updates a RequestValidator of a given RestApi.
    func updateRequestValidator(input: UpdateRequestValidatorInput) async throws -> UpdateRequestValidatorOutputResponse
    /// Changes information about a Resource resource.
    func updateResource(input: UpdateResourceInput) async throws -> UpdateResourceOutputResponse
    /// Changes information about the specified API.
    func updateRestApi(input: UpdateRestApiInput) async throws -> UpdateRestApiOutputResponse
    /// Changes information about a Stage resource.
    func updateStage(input: UpdateStageInput) async throws -> UpdateStageOutputResponse
    /// Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.
    func updateUsage(input: UpdateUsageInput) async throws -> UpdateUsageOutputResponse
    /// Updates a usage plan of a given plan Id.
    func updateUsagePlan(input: UpdateUsagePlanInput) async throws -> UpdateUsagePlanOutputResponse
    /// Updates an existing VpcLink of a specified identifier.
    func updateVpcLink(input: UpdateVpcLinkInput) async throws -> UpdateVpcLinkOutputResponse
}

public protocol APIGatewayClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum APIGatewayClientTypes {}
