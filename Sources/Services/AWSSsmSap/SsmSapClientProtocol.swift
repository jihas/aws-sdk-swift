// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// This API reference provides descriptions, syntax, and other details about each of the actions and data types for AWS Systems Manager for SAP. The topic for each action shows the API request parameters and responses.
public protocol SsmSapClientProtocol {
    /// Removes permissions associated with the target database.
    func deleteResourcePermission(input: DeleteResourcePermissionInput) async throws -> DeleteResourcePermissionOutputResponse
    /// Deregister an SAP application with AWS Systems Manager for SAP. This action does not aﬀect the existing setup of your SAP workloads on Amazon EC2.
    func deregisterApplication(input: DeregisterApplicationInput) async throws -> DeregisterApplicationOutputResponse
    /// Gets an application registered with AWS Systems Manager for SAP. It also returns the components of the application.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    /// Gets the component of an application registered with AWS Systems Manager for SAP.
    func getComponent(input: GetComponentInput) async throws -> GetComponentOutputResponse
    /// Gets the SAP HANA database of an application registered with AWS Systems Manager for SAP.
    func getDatabase(input: GetDatabaseInput) async throws -> GetDatabaseOutputResponse
    /// Gets the details of an operation by specifying the operation ID.
    func getOperation(input: GetOperationInput) async throws -> GetOperationOutputResponse
    /// Gets permissions associated with the target database.
    func getResourcePermission(input: GetResourcePermissionInput) async throws -> GetResourcePermissionOutputResponse
    /// Lists all the applications registered with AWS Systems Manager for SAP.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Lists all the components registered with AWS Systems Manager for SAP.
    func listComponents(input: ListComponentsInput) async throws -> ListComponentsOutputResponse
    /// Lists the SAP HANA databases of an application registered with AWS Systems Manager for SAP.
    func listDatabases(input: ListDatabasesInput) async throws -> ListDatabasesOutputResponse
    /// Lists the operations performed by AWS Systems Manager for SAP.
    func listOperations(input: ListOperationsInput) async throws -> ListOperationsOutputResponse
    /// Lists all tags on an SAP HANA application and/or database registered with AWS Systems Manager for SAP.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds permissions to the target database.
    func putResourcePermission(input: PutResourcePermissionInput) async throws -> PutResourcePermissionOutputResponse
    /// Register an SAP application with AWS Systems Manager for SAP. You must meet the following requirements before registering. The SAP application you want to register with AWS Systems Manager for SAP is running on Amazon EC2. AWS Systems Manager Agent must be setup on an Amazon EC2 instance along with the required IAM permissions. Amazon EC2 instance(s) must have access to the secrets created in AWS Secrets Manager to manage SAP applications and components.
    func registerApplication(input: RegisterApplicationInput) async throws -> RegisterApplicationOutputResponse
    /// Creates tag for a resource by specifying the ARN.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Delete the tags for a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the settings of an application registered with AWS Systems Manager for SAP.
    func updateApplicationSettings(input: UpdateApplicationSettingsInput) async throws -> UpdateApplicationSettingsOutputResponse
}

public protocol SsmSapClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SsmSapClientTypes {}
