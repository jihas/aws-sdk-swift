// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon MQ is a managed message broker service for Apache ActiveMQ and RabbitMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.
public protocol MqClientProtocol {
    /// Creates a broker. Note: This API is asynchronous. To create a broker, you must either use the AmazonMQFullAccess IAM policy or include the following EC2 permissions in your IAM policy.
    ///
    /// * ec2:CreateNetworkInterface This permission is required to allow Amazon MQ to create an elastic network interface (ENI) on behalf of your account.
    ///
    /// * ec2:CreateNetworkInterfacePermission This permission is required to attach the ENI to the broker instance.
    ///
    /// * ec2:DeleteNetworkInterface
    ///
    /// * ec2:DeleteNetworkInterfacePermission
    ///
    /// * ec2:DetachNetworkInterface
    ///
    /// * ec2:DescribeInternetGateways
    ///
    /// * ec2:DescribeNetworkInterfaces
    ///
    /// * ec2:DescribeNetworkInterfacePermissions
    ///
    /// * ec2:DescribeRouteTables
    ///
    /// * ec2:DescribeSecurityGroups
    ///
    /// * ec2:DescribeSubnets
    ///
    /// * ec2:DescribeVpcs
    ///
    ///
    /// For more information, see [Create an IAM User and Get Your AWS Credentials](https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/amazon-mq-setting-up.html#create-iam-user) and [Never Modify or Delete the Amazon MQ Elastic Network Interface](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/connecting-to-amazon-mq.html#never-modify-delete-elastic-network-interface) in the Amazon MQ Developer Guide.
    func createBroker(input: CreateBrokerInput) async throws -> CreateBrokerOutputResponse
    /// Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
    func createConfiguration(input: CreateConfigurationInput) async throws -> CreateConfigurationOutputResponse
    /// Add a tag to a resource.
    func createTags(input: CreateTagsInput) async throws -> CreateTagsOutputResponse
    /// Creates an ActiveMQ user.
    func createUser(input: CreateUserInput) async throws -> CreateUserOutputResponse
    /// Deletes a broker. Note: This API is asynchronous.
    func deleteBroker(input: DeleteBrokerInput) async throws -> DeleteBrokerOutputResponse
    /// Removes a tag from a resource.
    func deleteTags(input: DeleteTagsInput) async throws -> DeleteTagsOutputResponse
    /// Deletes an ActiveMQ user.
    func deleteUser(input: DeleteUserInput) async throws -> DeleteUserOutputResponse
    /// Returns information about the specified broker.
    func describeBroker(input: DescribeBrokerInput) async throws -> DescribeBrokerOutputResponse
    /// Describe available engine types and versions.
    func describeBrokerEngineTypes(input: DescribeBrokerEngineTypesInput) async throws -> DescribeBrokerEngineTypesOutputResponse
    /// Describe available broker instance options.
    func describeBrokerInstanceOptions(input: DescribeBrokerInstanceOptionsInput) async throws -> DescribeBrokerInstanceOptionsOutputResponse
    /// Returns information about the specified configuration.
    func describeConfiguration(input: DescribeConfigurationInput) async throws -> DescribeConfigurationOutputResponse
    /// Returns the specified configuration revision for the specified configuration.
    func describeConfigurationRevision(input: DescribeConfigurationRevisionInput) async throws -> DescribeConfigurationRevisionOutputResponse
    /// Returns information about an ActiveMQ user.
    func describeUser(input: DescribeUserInput) async throws -> DescribeUserOutputResponse
    /// Returns a list of all brokers.
    func listBrokers(input: ListBrokersInput) async throws -> ListBrokersOutputResponse
    /// Returns a list of all revisions for the specified configuration.
    func listConfigurationRevisions(input: ListConfigurationRevisionsInput) async throws -> ListConfigurationRevisionsOutputResponse
    /// Returns a list of all configurations.
    func listConfigurations(input: ListConfigurationsInput) async throws -> ListConfigurationsOutputResponse
    /// Lists tags for a resource.
    func listTags(input: ListTagsInput) async throws -> ListTagsOutputResponse
    /// Returns a list of all ActiveMQ users.
    func listUsers(input: ListUsersInput) async throws -> ListUsersOutputResponse
    /// Reboots a broker. Note: This API is asynchronous.
    func rebootBroker(input: RebootBrokerInput) async throws -> RebootBrokerOutputResponse
    /// Adds a pending configuration change to a broker.
    func updateBroker(input: UpdateBrokerInput) async throws -> UpdateBrokerOutputResponse
    /// Updates the specified configuration.
    func updateConfiguration(input: UpdateConfigurationInput) async throws -> UpdateConfigurationOutputResponse
    /// Updates the information for an ActiveMQ user.
    func updateUser(input: UpdateUserInput) async throws -> UpdateUserOutputResponse
}

public protocol MqClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MqClientTypes {}
