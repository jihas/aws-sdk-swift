// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Directory Service Directory Service is a web service that makes it easy for you to setup and run directories in the Amazon Web Services cloud, or connect your Amazon Web Services resources with an existing self-managed Microsoft Active Directory. This guide provides detailed information about Directory Service operations, data types, parameters, and errors. For information about Directory Services features, see [Directory Service](https://aws.amazon.com/directoryservice/) and the [Directory Service Administration Guide](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html). Amazon Web Services provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to Directory Service and other Amazon Web Services services. For more information about the Amazon Web Services SDKs, including how to download and install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
public protocol DirectoryClientProtocol {
    /// Accepts a directory sharing request that was sent from the directory owner account.
    func acceptSharedDirectory(input: AcceptSharedDirectoryInput) async throws -> AcceptSharedDirectoryOutputResponse
    /// If the DNS server for your self-managed domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. AddIpRoutes adds this address block. You can also use AddIpRoutes to facilitate routing traffic that uses public IP ranges from your Microsoft AD on Amazon Web Services to a peer VPC. Before you call AddIpRoutes, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the AddIpRoutes operation, see [Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
    func addIpRoutes(input: AddIpRoutesInput) async throws -> AddIpRoutesOutputResponse
    /// Adds two domain controllers in the specified Region for the specified directory.
    func addRegion(input: AddRegionInput) async throws -> AddRegionOutputResponse
    /// Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.
    func addTagsToResource(input: AddTagsToResourceInput) async throws -> AddTagsToResourceOutputResponse
    /// Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; Initializing, CreatingSnapshot, and UpdatingSchema.
    func cancelSchemaExtension(input: CancelSchemaExtensionInput) async throws -> CancelSchemaExtensionOutputResponse
    /// Creates an AD Connector to connect to a self-managed directory. Before you call ConnectDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the ConnectDirectory operation, see [Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
    func connectDirectory(input: ConnectDirectoryInput) async throws -> ConnectDirectoryOutputResponse
    /// Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as http://.awsapps.com. After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.
    func createAlias(input: CreateAliasInput) async throws -> CreateAliasOutputResponse
    /// Creates an Active Directory computer object in the specified directory.
    func createComputer(input: CreateComputerInput) async throws -> CreateComputerOutputResponse
    /// Creates a conditional forwarder associated with your Amazon Web Services directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.
    func createConditionalForwarder(input: CreateConditionalForwarderInput) async throws -> CreateConditionalForwarderOutputResponse
    /// Creates a Simple AD directory. For more information, see [Simple Active Directory](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html) in the Directory Service Admin Guide. Before you call CreateDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the CreateDirectory operation, see [Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
    func createDirectory(input: CreateDirectoryInput) async throws -> CreateDirectoryOutputResponse
    /// Creates a subscription to forward real-time Directory Service domain controller security logs to the specified Amazon CloudWatch log group in your Amazon Web Services account.
    func createLogSubscription(input: CreateLogSubscriptionInput) async throws -> CreateLogSubscriptionOutputResponse
    /// Creates a Microsoft AD directory in the Amazon Web Services Cloud. For more information, see [Managed Microsoft AD](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html) in the Directory Service Admin Guide. Before you call CreateMicrosoftAD, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the CreateMicrosoftAD operation, see [Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
    func createMicrosoftAD(input: CreateMicrosoftADInput) async throws -> CreateMicrosoftADOutputResponse
    /// Creates a snapshot of a Simple AD or Microsoft AD directory in the Amazon Web Services cloud. You cannot take snapshots of AD Connector directories.
    func createSnapshot(input: CreateSnapshotInput) async throws -> CreateSnapshotOutputResponse
    /// Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your Managed Microsoft AD directory, and your existing self-managed Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials. This action initiates the creation of the Amazon Web Services side of a trust relationship between an Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.
    func createTrust(input: CreateTrustInput) async throws -> CreateTrustOutputResponse
    /// Deletes a conditional forwarder that has been set up for your Amazon Web Services directory.
    func deleteConditionalForwarder(input: DeleteConditionalForwarderInput) async throws -> DeleteConditionalForwarderOutputResponse
    /// Deletes an Directory Service directory. Before you call DeleteDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the DeleteDirectory operation, see [Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
    func deleteDirectory(input: DeleteDirectoryInput) async throws -> DeleteDirectoryOutputResponse
    /// Deletes the specified log subscription.
    func deleteLogSubscription(input: DeleteLogSubscriptionInput) async throws -> DeleteLogSubscriptionOutputResponse
    /// Deletes a directory snapshot.
    func deleteSnapshot(input: DeleteSnapshotInput) async throws -> DeleteSnapshotOutputResponse
    /// Deletes an existing trust relationship between your Managed Microsoft AD directory and an external domain.
    func deleteTrust(input: DeleteTrustInput) async throws -> DeleteTrustOutputResponse
    /// Deletes from the system the certificate that was registered for secure LDAP or client certificate authentication.
    func deregisterCertificate(input: DeregisterCertificateInput) async throws -> DeregisterCertificateOutputResponse
    /// Removes the specified directory as a publisher to the specified Amazon SNS topic.
    func deregisterEventTopic(input: DeregisterEventTopicInput) async throws -> DeregisterEventTopicOutputResponse
    /// Displays information about the certificate registered for secure LDAP or client certificate authentication.
    func describeCertificate(input: DescribeCertificateInput) async throws -> DescribeCertificateOutputResponse
    /// Retrieves information about the type of client authentication for the specified directory, if the type is specified. If no type is specified, information about all client authentication types that are supported for the specified directory is retrieved. Currently, only SmartCard is supported.
    func describeClientAuthenticationSettings(input: DescribeClientAuthenticationSettingsInput) async throws -> DescribeClientAuthenticationSettingsOutputResponse
    /// Obtains information about the conditional forwarders for this account. If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.
    func describeConditionalForwarders(input: DescribeConditionalForwardersInput) async throws -> DescribeConditionalForwardersOutputResponse
    /// Obtains information about the directories that belong to this account. You can retrieve information about specific directories by passing the directory identifiers in the DirectoryIds parameter. Otherwise, all directories that belong to the current account are returned. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the DescribeDirectoriesResult.NextToken member contains a token that you pass in the next call to [DescribeDirectories] to retrieve the next set of items. You can also specify a maximum number of return results with the Limit parameter.
    func describeDirectories(input: DescribeDirectoriesInput) async throws -> DescribeDirectoriesOutputResponse
    /// Provides information about any domain controllers in your directory.
    func describeDomainControllers(input: DescribeDomainControllersInput) async throws -> DescribeDomainControllersOutputResponse
    /// Obtains information about which Amazon SNS topics receive status messages from the specified directory. If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.
    func describeEventTopics(input: DescribeEventTopicsInput) async throws -> DescribeEventTopicsOutputResponse
    /// Describes the status of LDAP security for the specified directory.
    func describeLDAPSSettings(input: DescribeLDAPSSettingsInput) async throws -> DescribeLDAPSSettingsOutputResponse
    /// Provides information about the Regions that are configured for multi-Region replication.
    func describeRegions(input: DescribeRegionsInput) async throws -> DescribeRegionsOutputResponse
    /// Retrieves information about the configurable settings for the specified directory.
    func describeSettings(input: DescribeSettingsInput) async throws -> DescribeSettingsOutputResponse
    /// Returns the shared directories in your account.
    func describeSharedDirectories(input: DescribeSharedDirectoriesInput) async throws -> DescribeSharedDirectoriesOutputResponse
    /// Obtains information about the directory snapshots that belong to this account. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the DescribeSnapshots.NextToken member contains a token that you pass in the next call to [DescribeSnapshots] to retrieve the next set of items. You can also specify a maximum number of return results with the Limit parameter.
    func describeSnapshots(input: DescribeSnapshotsInput) async throws -> DescribeSnapshotsOutputResponse
    /// Obtains information about the trust relationships for this account. If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.
    func describeTrusts(input: DescribeTrustsInput) async throws -> DescribeTrustsOutputResponse
    /// Describes the updates of a directory for a particular update type.
    func describeUpdateDirectory(input: DescribeUpdateDirectoryInput) async throws -> DescribeUpdateDirectoryOutputResponse
    /// Disables alternative client authentication methods for the specified directory.
    func disableClientAuthentication(input: DisableClientAuthenticationInput) async throws -> DisableClientAuthenticationOutputResponse
    /// Deactivates LDAP secure calls for the specified directory.
    func disableLDAPS(input: DisableLDAPSInput) async throws -> DisableLDAPSOutputResponse
    /// Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
    func disableRadius(input: DisableRadiusInput) async throws -> DisableRadiusOutputResponse
    /// Disables single-sign on for a directory.
    func disableSso(input: DisableSsoInput) async throws -> DisableSsoOutputResponse
    /// Enables alternative client authentication methods for the specified directory.
    func enableClientAuthentication(input: EnableClientAuthenticationInput) async throws -> EnableClientAuthenticationOutputResponse
    /// Activates the switch for the specific directory to always use LDAP secure calls.
    func enableLDAPS(input: EnableLDAPSInput) async throws -> EnableLDAPSOutputResponse
    /// Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
    func enableRadius(input: EnableRadiusInput) async throws -> EnableRadiusOutputResponse
    /// Enables single sign-on for a directory. Single sign-on allows users in your directory to access certain Amazon Web Services services from a computer joined to the directory without having to enter their credentials separately.
    func enableSso(input: EnableSsoInput) async throws -> EnableSsoOutputResponse
    /// Obtains directory limit information for the current Region.
    func getDirectoryLimits(input: GetDirectoryLimitsInput) async throws -> GetDirectoryLimitsOutputResponse
    /// Obtains the manual snapshot limits for a directory.
    func getSnapshotLimits(input: GetSnapshotLimitsInput) async throws -> GetSnapshotLimitsOutputResponse
    /// For the specified directory, lists all the certificates registered for a secure LDAP or client certificate authentication.
    func listCertificates(input: ListCertificatesInput) async throws -> ListCertificatesOutputResponse
    /// Lists the address blocks that you have added to a directory.
    func listIpRoutes(input: ListIpRoutesInput) async throws -> ListIpRoutesOutputResponse
    /// Lists the active log subscriptions for the Amazon Web Services account.
    func listLogSubscriptions(input: ListLogSubscriptionsInput) async throws -> ListLogSubscriptionsOutputResponse
    /// Lists all schema extensions applied to a Microsoft AD Directory.
    func listSchemaExtensions(input: ListSchemaExtensionsInput) async throws -> ListSchemaExtensionsOutputResponse
    /// Lists all tags on a directory.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Registers a certificate for a secure LDAP or client certificate authentication.
    func registerCertificate(input: RegisterCertificateInput) async throws -> RegisterCertificateOutputResponse
    /// Associates a directory with an Amazon SNS topic. This establishes the directory as a publisher to the specified Amazon SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.
    func registerEventTopic(input: RegisterEventTopicInput) async throws -> RegisterEventTopicOutputResponse
    /// Rejects a directory sharing request that was sent from the directory owner account.
    func rejectSharedDirectory(input: RejectSharedDirectoryInput) async throws -> RejectSharedDirectoryOutputResponse
    /// Removes IP address blocks from a directory.
    func removeIpRoutes(input: RemoveIpRoutesInput) async throws -> RemoveIpRoutesOutputResponse
    /// Stops all replication and removes the domain controllers from the specified Region. You cannot remove the primary Region with this operation. Instead, use the DeleteDirectory API.
    func removeRegion(input: RemoveRegionInput) async throws -> RemoveRegionOutputResponse
    /// Removes tags from a directory.
    func removeTagsFromResource(input: RemoveTagsFromResourceInput) async throws -> RemoveTagsFromResourceOutputResponse
    /// Resets the password for any user in your Managed Microsoft AD or Simple AD directory. You can reset the password for any user in your directory with the following exceptions:
    ///
    /// * For Simple AD, you cannot reset the password for any user that is a member of either the Domain Admins or Enterprise Admins group except for the administrator user.
    ///
    /// * For Managed Microsoft AD, you can only reset the password for a user that is in an OU based off of the NetBIOS name that you typed when you created your directory. For example, you cannot reset the password for a user in the Amazon Web Services Reserved OU. For more information about the OU structure for an Managed Microsoft AD directory, see [What Gets Created](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html) in the Directory Service Administration Guide.
    func resetUserPassword(input: ResetUserPasswordInput) async throws -> ResetUserPasswordOutputResponse
    /// Restores a directory using an existing directory snapshot. When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten. This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the [DescribeDirectories] operation with the directory identifier. When the DirectoryDescription.Stage value changes to Active, the restore operation is complete.
    func restoreFromSnapshot(input: RestoreFromSnapshotInput) async throws -> RestoreFromSnapshotOutputResponse
    /// Shares a specified directory (DirectoryId) in your Amazon Web Services account (directory owner) with another Amazon Web Services account (directory consumer). With this operation you can use your directory from any Amazon Web Services account and from any Amazon VPC within an Amazon Web Services Region. When you share your Managed Microsoft AD directory, Directory Service creates a shared directory in the directory consumer account. This shared directory contains the metadata to provide access to the directory within the directory owner account. The shared directory is visible in all VPCs in the directory consumer account. The ShareMethod parameter determines whether the specified directory can be shared between Amazon Web Services accounts inside the same Amazon Web Services organization (ORGANIZATIONS). It also determines whether you can share the directory with any other Amazon Web Services account either inside or outside of the organization (HANDSHAKE). The ShareNotes parameter is only used when HANDSHAKE is called, which sends a directory sharing request to the directory consumer.
    func shareDirectory(input: ShareDirectoryInput) async throws -> ShareDirectoryOutputResponse
    /// Applies a schema extension to a Microsoft AD directory.
    func startSchemaExtension(input: StartSchemaExtensionInput) async throws -> StartSchemaExtensionOutputResponse
    /// Stops the directory sharing between the directory owner and consumer accounts.
    func unshareDirectory(input: UnshareDirectoryInput) async throws -> UnshareDirectoryOutputResponse
    /// Updates a conditional forwarder that has been set up for your Amazon Web Services directory.
    func updateConditionalForwarder(input: UpdateConditionalForwarderInput) async throws -> UpdateConditionalForwarderOutputResponse
    /// Updates the directory for a particular update type.
    func updateDirectorySetup(input: UpdateDirectorySetupInput) async throws -> UpdateDirectorySetupOutputResponse
    /// Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.
    func updateNumberOfDomainControllers(input: UpdateNumberOfDomainControllersInput) async throws -> UpdateNumberOfDomainControllersOutputResponse
    /// Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.
    func updateRadius(input: UpdateRadiusInput) async throws -> UpdateRadiusOutputResponse
    /// Updates the configurable settings for the specified directory.
    func updateSettings(input: UpdateSettingsInput) async throws -> UpdateSettingsOutputResponse
    /// Updates the trust that has been set up between your Managed Microsoft AD directory and an self-managed Active Directory.
    func updateTrust(input: UpdateTrustInput) async throws -> UpdateTrustOutputResponse
    /// Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships. This action verifies a trust relationship between your Managed Microsoft AD directory and an external domain.
    func verifyTrust(input: VerifyTrustInput) async throws -> VerifyTrustOutputResponse
}

public protocol DirectoryClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum DirectoryClientTypes {}
