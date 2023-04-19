// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// The FinSpace management service provides the APIs for managing FinSpace environments.
public protocol FinspaceClientProtocol {
    /// Create a new FinSpace environment.
    func createEnvironment(input: CreateEnvironmentInput) async throws -> CreateEnvironmentOutputResponse
    /// Delete an FinSpace environment.
    func deleteEnvironment(input: DeleteEnvironmentInput) async throws -> DeleteEnvironmentOutputResponse
    /// Returns the FinSpace environment object.
    func getEnvironment(input: GetEnvironmentInput) async throws -> GetEnvironmentOutputResponse
    /// A list of all of your FinSpace environments.
    func listEnvironments(input: ListEnvironmentsInput) async throws -> ListEnvironmentsOutputResponse
    /// A list of all tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds metadata tags to a FinSpace resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes metadata tags from a FinSpace resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Update your FinSpace environment.
    func updateEnvironment(input: UpdateEnvironmentInput) async throws -> UpdateEnvironmentOutputResponse
}

public protocol FinspaceClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum FinspaceClientTypes {}
