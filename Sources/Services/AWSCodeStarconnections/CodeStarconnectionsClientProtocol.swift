// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// AWS CodeStar Connections This AWS CodeStar Connections API Reference provides descriptions and usage examples of the operations and data types for the AWS CodeStar Connections API. You can use the connections API to work with connections and installations. Connections are configurations that you use to connect AWS resources to external code repositories. Each connection is a resource that can be given to services such as CodePipeline to connect to a third-party repository such as Bitbucket. For example, you can add the connection in CodePipeline so that it triggers your pipeline when a code change is made to your third-party code repository. Each connection is named and associated with a unique ARN that is used to reference the connection. When you create a connection, the console initiates a third-party connection handshake. Installations are the apps that are used to conduct this handshake. For example, the installation for the Bitbucket provider type is the Bitbucket app. When you create a connection, you can choose an existing installation or create one. When you want to create a connection to an installed provider type such as GitHub Enterprise Server, you create a host for your connections. You can work with connections by calling:
///
/// * [CreateConnection], which creates a uniquely named connection that can be referenced by services such as CodePipeline.
///
/// * [DeleteConnection], which deletes the specified connection.
///
/// * [GetConnection], which returns information about the connection, including the connection status.
///
/// * [ListConnections], which lists the connections associated with your account.
///
///
/// You can work with hosts by calling:
///
/// * [CreateHost], which creates a host that represents the infrastructure where your provider is installed.
///
/// * [DeleteHost], which deletes the specified host.
///
/// * [GetHost], which returns information about the host, including the setup status.
///
/// * [ListHosts], which lists the hosts associated with your account.
///
///
/// You can work with tags in AWS CodeStar Connections by calling the following:
///
/// * [ListTagsForResource], which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeStar Connections.
///
/// * [TagResource], which adds or updates tags for a resource in AWS CodeStar Connections.
///
/// * [UntagResource], which removes tags for a resource in AWS CodeStar Connections.
///
///
/// For information about how to use AWS CodeStar Connections, see the [Developer Tools User Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).
public protocol CodeStarconnectionsClientProtocol {
    /// Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories. The connection is in pending status until the third-party connection handshake is completed from the console.
    func createConnection(input: CreateConnectionInput) async throws -> CreateConnectionOutputResponse
    /// Creates a resource that represents the infrastructure where a third-party provider is installed. The host is used when you create connections to an installed third-party provider type, such as GitHub Enterprise Server. You create one host for all connections to that provider. A host created through the CLI or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by setting up the host in the console.
    func createHost(input: CreateHostInput) async throws -> CreateHostOutputResponse
    /// The connection to be deleted.
    func deleteConnection(input: DeleteConnectionInput) async throws -> DeleteConnectionOutputResponse
    /// The host to be deleted. Before you delete a host, all connections associated to the host must be deleted. A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or VPC_CONFIG_DELETING state.
    func deleteHost(input: DeleteHostInput) async throws -> DeleteHostOutputResponse
    /// Returns the connection ARN and details such as status, owner, and provider type.
    func getConnection(input: GetConnectionInput) async throws -> GetConnectionOutputResponse
    /// Returns the host ARN and details such as status, provider type, endpoint, and, if applicable, the VPC configuration.
    func getHost(input: GetHostInput) async throws -> GetHostOutputResponse
    /// Lists the connections associated with your account.
    func listConnections(input: ListConnectionsInput) async throws -> ListConnectionsOutputResponse
    /// Lists the hosts associated with your account.
    func listHosts(input: ListHostsInput) async throws -> ListHostsOutputResponse
    /// Gets the set of key-value pairs (metadata) that are used to manage the resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from an AWS resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a specified host with the provided configurations.
    func updateHost(input: UpdateHostInput) async throws -> UpdateHostOutputResponse
}

public protocol CodeStarconnectionsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum CodeStarconnectionsClientTypes {}
