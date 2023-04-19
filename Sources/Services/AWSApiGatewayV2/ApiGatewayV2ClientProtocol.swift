// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon API Gateway V2
public protocol ApiGatewayV2ClientProtocol {
    /// Creates an Api resource.
    func createApi(input: CreateApiInput) async throws -> CreateApiOutputResponse
    /// Creates an API mapping.
    func createApiMapping(input: CreateApiMappingInput) async throws -> CreateApiMappingOutputResponse
    /// Creates an Authorizer for an API.
    func createAuthorizer(input: CreateAuthorizerInput) async throws -> CreateAuthorizerOutputResponse
    /// Creates a Deployment for an API.
    func createDeployment(input: CreateDeploymentInput) async throws -> CreateDeploymentOutputResponse
    /// Creates a domain name.
    func createDomainName(input: CreateDomainNameInput) async throws -> CreateDomainNameOutputResponse
    /// Creates an Integration.
    func createIntegration(input: CreateIntegrationInput) async throws -> CreateIntegrationOutputResponse
    /// Creates an IntegrationResponses.
    func createIntegrationResponse(input: CreateIntegrationResponseInput) async throws -> CreateIntegrationResponseOutputResponse
    /// Creates a Model for an API.
    func createModel(input: CreateModelInput) async throws -> CreateModelOutputResponse
    /// Creates a Route for an API.
    func createRoute(input: CreateRouteInput) async throws -> CreateRouteOutputResponse
    /// Creates a RouteResponse for a Route.
    func createRouteResponse(input: CreateRouteResponseInput) async throws -> CreateRouteResponseOutputResponse
    /// Creates a Stage for an API.
    func createStage(input: CreateStageInput) async throws -> CreateStageOutputResponse
    /// Creates a VPC link.
    func createVpcLink(input: CreateVpcLinkInput) async throws -> CreateVpcLinkOutputResponse
    /// Deletes the AccessLogSettings for a Stage. To disable access logging for a Stage, delete its AccessLogSettings.
    func deleteAccessLogSettings(input: DeleteAccessLogSettingsInput) async throws -> DeleteAccessLogSettingsOutputResponse
    /// Deletes an Api resource.
    func deleteApi(input: DeleteApiInput) async throws -> DeleteApiOutputResponse
    /// Deletes an API mapping.
    func deleteApiMapping(input: DeleteApiMappingInput) async throws -> DeleteApiMappingOutputResponse
    /// Deletes an Authorizer.
    func deleteAuthorizer(input: DeleteAuthorizerInput) async throws -> DeleteAuthorizerOutputResponse
    /// Deletes a CORS configuration.
    func deleteCorsConfiguration(input: DeleteCorsConfigurationInput) async throws -> DeleteCorsConfigurationOutputResponse
    /// Deletes a Deployment.
    func deleteDeployment(input: DeleteDeploymentInput) async throws -> DeleteDeploymentOutputResponse
    /// Deletes a domain name.
    func deleteDomainName(input: DeleteDomainNameInput) async throws -> DeleteDomainNameOutputResponse
    /// Deletes an Integration.
    func deleteIntegration(input: DeleteIntegrationInput) async throws -> DeleteIntegrationOutputResponse
    /// Deletes an IntegrationResponses.
    func deleteIntegrationResponse(input: DeleteIntegrationResponseInput) async throws -> DeleteIntegrationResponseOutputResponse
    /// Deletes a Model.
    func deleteModel(input: DeleteModelInput) async throws -> DeleteModelOutputResponse
    /// Deletes a Route.
    func deleteRoute(input: DeleteRouteInput) async throws -> DeleteRouteOutputResponse
    /// Deletes a route request parameter.
    func deleteRouteRequestParameter(input: DeleteRouteRequestParameterInput) async throws -> DeleteRouteRequestParameterOutputResponse
    /// Deletes a RouteResponse.
    func deleteRouteResponse(input: DeleteRouteResponseInput) async throws -> DeleteRouteResponseOutputResponse
    /// Deletes the RouteSettings for a stage.
    func deleteRouteSettings(input: DeleteRouteSettingsInput) async throws -> DeleteRouteSettingsOutputResponse
    /// Deletes a Stage.
    func deleteStage(input: DeleteStageInput) async throws -> DeleteStageOutputResponse
    /// Deletes a VPC link.
    func deleteVpcLink(input: DeleteVpcLinkInput) async throws -> DeleteVpcLinkOutputResponse
    func exportApi(input: ExportApiInput) async throws -> ExportApiOutputResponse
    /// Gets an Api resource.
    func getApi(input: GetApiInput) async throws -> GetApiOutputResponse
    /// Gets an API mapping.
    func getApiMapping(input: GetApiMappingInput) async throws -> GetApiMappingOutputResponse
    /// Gets API mappings.
    func getApiMappings(input: GetApiMappingsInput) async throws -> GetApiMappingsOutputResponse
    /// Gets a collection of Api resources.
    func getApis(input: GetApisInput) async throws -> GetApisOutputResponse
    /// Gets an Authorizer.
    func getAuthorizer(input: GetAuthorizerInput) async throws -> GetAuthorizerOutputResponse
    /// Gets the Authorizers for an API.
    func getAuthorizers(input: GetAuthorizersInput) async throws -> GetAuthorizersOutputResponse
    /// Gets a Deployment.
    func getDeployment(input: GetDeploymentInput) async throws -> GetDeploymentOutputResponse
    /// Gets the Deployments for an API.
    func getDeployments(input: GetDeploymentsInput) async throws -> GetDeploymentsOutputResponse
    /// Gets a domain name.
    func getDomainName(input: GetDomainNameInput) async throws -> GetDomainNameOutputResponse
    /// Gets the domain names for an AWS account.
    func getDomainNames(input: GetDomainNamesInput) async throws -> GetDomainNamesOutputResponse
    /// Gets an Integration.
    func getIntegration(input: GetIntegrationInput) async throws -> GetIntegrationOutputResponse
    /// Gets an IntegrationResponses.
    func getIntegrationResponse(input: GetIntegrationResponseInput) async throws -> GetIntegrationResponseOutputResponse
    /// Gets the IntegrationResponses for an Integration.
    func getIntegrationResponses(input: GetIntegrationResponsesInput) async throws -> GetIntegrationResponsesOutputResponse
    /// Gets the Integrations for an API.
    func getIntegrations(input: GetIntegrationsInput) async throws -> GetIntegrationsOutputResponse
    /// Gets a Model.
    func getModel(input: GetModelInput) async throws -> GetModelOutputResponse
    /// Gets the Models for an API.
    func getModels(input: GetModelsInput) async throws -> GetModelsOutputResponse
    /// Gets a model template.
    func getModelTemplate(input: GetModelTemplateInput) async throws -> GetModelTemplateOutputResponse
    /// Gets a Route.
    func getRoute(input: GetRouteInput) async throws -> GetRouteOutputResponse
    /// Gets a RouteResponse.
    func getRouteResponse(input: GetRouteResponseInput) async throws -> GetRouteResponseOutputResponse
    /// Gets the RouteResponses for a Route.
    func getRouteResponses(input: GetRouteResponsesInput) async throws -> GetRouteResponsesOutputResponse
    /// Gets the Routes for an API.
    func getRoutes(input: GetRoutesInput) async throws -> GetRoutesOutputResponse
    /// Gets a Stage.
    func getStage(input: GetStageInput) async throws -> GetStageOutputResponse
    /// Gets the Stages for an API.
    func getStages(input: GetStagesInput) async throws -> GetStagesOutputResponse
    /// Gets a collection of Tag resources.
    func getTags(input: GetTagsInput) async throws -> GetTagsOutputResponse
    /// Gets a VPC link.
    func getVpcLink(input: GetVpcLinkInput) async throws -> GetVpcLinkOutputResponse
    /// Gets a collection of VPC links.
    func getVpcLinks(input: GetVpcLinksInput) async throws -> GetVpcLinksOutputResponse
    /// Imports an API.
    func importApi(input: ImportApiInput) async throws -> ImportApiOutputResponse
    /// Puts an Api resource.
    func reimportApi(input: ReimportApiInput) async throws -> ReimportApiOutputResponse
    /// Resets all authorizer cache entries on a stage. Supported only for HTTP APIs.
    func resetAuthorizersCache(input: ResetAuthorizersCacheInput) async throws -> ResetAuthorizersCacheOutputResponse
    /// Creates a new Tag resource to represent a tag.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Deletes a Tag.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an Api resource.
    func updateApi(input: UpdateApiInput) async throws -> UpdateApiOutputResponse
    /// The API mapping.
    func updateApiMapping(input: UpdateApiMappingInput) async throws -> UpdateApiMappingOutputResponse
    /// Updates an Authorizer.
    func updateAuthorizer(input: UpdateAuthorizerInput) async throws -> UpdateAuthorizerOutputResponse
    /// Updates a Deployment.
    func updateDeployment(input: UpdateDeploymentInput) async throws -> UpdateDeploymentOutputResponse
    /// Updates a domain name.
    func updateDomainName(input: UpdateDomainNameInput) async throws -> UpdateDomainNameOutputResponse
    /// Updates an Integration.
    func updateIntegration(input: UpdateIntegrationInput) async throws -> UpdateIntegrationOutputResponse
    /// Updates an IntegrationResponses.
    func updateIntegrationResponse(input: UpdateIntegrationResponseInput) async throws -> UpdateIntegrationResponseOutputResponse
    /// Updates a Model.
    func updateModel(input: UpdateModelInput) async throws -> UpdateModelOutputResponse
    /// Updates a Route.
    func updateRoute(input: UpdateRouteInput) async throws -> UpdateRouteOutputResponse
    /// Updates a RouteResponse.
    func updateRouteResponse(input: UpdateRouteResponseInput) async throws -> UpdateRouteResponseOutputResponse
    /// Updates a Stage.
    func updateStage(input: UpdateStageInput) async throws -> UpdateStageOutputResponse
    /// Updates a VPC link.
    func updateVpcLink(input: UpdateVpcLinkInput) async throws -> UpdateVpcLinkOutputResponse
}

public protocol ApiGatewayV2ClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ApiGatewayV2ClientTypes {}
