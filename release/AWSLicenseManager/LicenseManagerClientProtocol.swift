// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// License Manager makes it easier to manage licenses from software vendors across multiple Amazon Web Services accounts and on-premises servers.
public protocol LicenseManagerClientProtocol {
    /// Accepts the specified grant.
    func acceptGrant(input: AcceptGrantInput) async throws -> AcceptGrantOutputResponse
    /// Checks in the specified license. Check in a license when it is no longer in use.
    func checkInLicense(input: CheckInLicenseInput) async throws -> CheckInLicenseOutputResponse
    /// Checks out the specified license for offline use.
    func checkoutBorrowLicense(input: CheckoutBorrowLicenseInput) async throws -> CheckoutBorrowLicenseOutputResponse
    /// Checks out the specified license. If the account that created the license is the same that is performing the check out, you must specify the account as the beneficiary.
    func checkoutLicense(input: CheckoutLicenseInput) async throws -> CheckoutLicenseOutputResponse
    /// Creates a grant for the specified license. A grant shares the use of license entitlements with specific Amazon Web Services accounts.
    func createGrant(input: CreateGrantInput) async throws -> CreateGrantOutputResponse
    /// Creates a new version of the specified grant.
    func createGrantVersion(input: CreateGrantVersionInput) async throws -> CreateGrantVersionOutputResponse
    /// Creates a license.
    func createLicense(input: CreateLicenseInput) async throws -> CreateLicenseOutputResponse
    /// Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), license affinity to host (how long a license must be associated with a host), and the number of licenses purchased and used.
    func createLicenseConfiguration(input: CreateLicenseConfigurationInput) async throws -> CreateLicenseConfigurationOutputResponse
    /// Creates a new license conversion task.
    func createLicenseConversionTaskForResource(input: CreateLicenseConversionTaskForResourceInput) async throws -> CreateLicenseConversionTaskForResourceOutputResponse
    /// Creates a report generator.
    func createLicenseManagerReportGenerator(input: CreateLicenseManagerReportGeneratorInput) async throws -> CreateLicenseManagerReportGeneratorOutputResponse
    /// Creates a new version of the specified license.
    func createLicenseVersion(input: CreateLicenseVersionInput) async throws -> CreateLicenseVersionOutputResponse
    /// Creates a long-lived token. A refresh token is a JWT token used to get an access token. With an access token, you can call AssumeRoleWithWebIdentity to get role credentials that you can use to call License Manager to manage the specified license.
    func createToken(input: CreateTokenInput) async throws -> CreateTokenOutputResponse
    /// Deletes the specified grant.
    func deleteGrant(input: DeleteGrantInput) async throws -> DeleteGrantOutputResponse
    /// Deletes the specified license.
    func deleteLicense(input: DeleteLicenseInput) async throws -> DeleteLicenseOutputResponse
    /// Deletes the specified license configuration. You cannot delete a license configuration that is in use.
    func deleteLicenseConfiguration(input: DeleteLicenseConfigurationInput) async throws -> DeleteLicenseConfigurationOutputResponse
    /// Deletes the specified report generator. This action deletes the report generator, which stops it from generating future reports. The action cannot be reversed. It has no effect on the previous reports from this generator.
    func deleteLicenseManagerReportGenerator(input: DeleteLicenseManagerReportGeneratorInput) async throws -> DeleteLicenseManagerReportGeneratorOutputResponse
    /// Deletes the specified token. Must be called in the license home Region.
    func deleteToken(input: DeleteTokenInput) async throws -> DeleteTokenOutputResponse
    /// Extends the expiration date for license consumption.
    func extendLicenseConsumption(input: ExtendLicenseConsumptionInput) async throws -> ExtendLicenseConsumptionOutputResponse
    /// Gets a temporary access token to use with AssumeRoleWithWebIdentity. Access tokens are valid for one hour.
    func getAccessToken(input: GetAccessTokenInput) async throws -> GetAccessTokenOutputResponse
    /// Gets detailed information about the specified grant.
    func getGrant(input: GetGrantInput) async throws -> GetGrantOutputResponse
    /// Gets detailed information about the specified license.
    func getLicense(input: GetLicenseInput) async throws -> GetLicenseOutputResponse
    /// Gets detailed information about the specified license configuration.
    func getLicenseConfiguration(input: GetLicenseConfigurationInput) async throws -> GetLicenseConfigurationOutputResponse
    /// Gets information about the specified license type conversion task.
    func getLicenseConversionTask(input: GetLicenseConversionTaskInput) async throws -> GetLicenseConversionTaskOutputResponse
    /// Gets information about the specified report generator.
    func getLicenseManagerReportGenerator(input: GetLicenseManagerReportGeneratorInput) async throws -> GetLicenseManagerReportGeneratorOutputResponse
    /// Gets detailed information about the usage of the specified license.
    func getLicenseUsage(input: GetLicenseUsageInput) async throws -> GetLicenseUsageOutputResponse
    /// Gets the License Manager settings for the current Region.
    func getServiceSettings(input: GetServiceSettingsInput) async throws -> GetServiceSettingsOutputResponse
    /// Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules).
    func listAssociationsForLicenseConfiguration(input: ListAssociationsForLicenseConfigurationInput) async throws -> ListAssociationsForLicenseConfigurationOutputResponse
    /// Lists the grants distributed for the specified license.
    func listDistributedGrants(input: ListDistributedGrantsInput) async throws -> ListDistributedGrantsOutputResponse
    /// Lists the license configuration operations that failed.
    func listFailuresForLicenseConfigurationOperations(input: ListFailuresForLicenseConfigurationOperationsInput) async throws -> ListFailuresForLicenseConfigurationOperationsOutputResponse
    /// Lists the license configurations for your account.
    func listLicenseConfigurations(input: ListLicenseConfigurationsInput) async throws -> ListLicenseConfigurationsOutputResponse
    /// Lists the license type conversion tasks for your account.
    func listLicenseConversionTasks(input: ListLicenseConversionTasksInput) async throws -> ListLicenseConversionTasksOutputResponse
    /// Lists the report generators for your account.
    func listLicenseManagerReportGenerators(input: ListLicenseManagerReportGeneratorsInput) async throws -> ListLicenseManagerReportGeneratorsOutputResponse
    /// Lists the licenses for your account.
    func listLicenses(input: ListLicensesInput) async throws -> ListLicensesOutputResponse
    /// Describes the license configurations for the specified resource.
    func listLicenseSpecificationsForResource(input: ListLicenseSpecificationsForResourceInput) async throws -> ListLicenseSpecificationsForResourceOutputResponse
    /// Lists all versions of the specified license.
    func listLicenseVersions(input: ListLicenseVersionsInput) async throws -> ListLicenseVersionsOutputResponse
    /// Lists grants that are received but not accepted.
    func listReceivedGrants(input: ListReceivedGrantsInput) async throws -> ListReceivedGrantsOutputResponse
    /// Lists the grants received for all accounts in the organization.
    func listReceivedGrantsForOrganization(input: ListReceivedGrantsForOrganizationInput) async throws -> ListReceivedGrantsForOrganizationOutputResponse
    /// Lists received licenses.
    func listReceivedLicenses(input: ListReceivedLicensesInput) async throws -> ListReceivedLicensesOutputResponse
    /// Lists the licenses received for all accounts in the organization.
    func listReceivedLicensesForOrganization(input: ListReceivedLicensesForOrganizationInput) async throws -> ListReceivedLicensesForOrganizationOutputResponse
    /// Lists resources managed using Systems Manager inventory.
    func listResourceInventory(input: ListResourceInventoryInput) async throws -> ListResourceInventoryOutputResponse
    /// Lists the tags for the specified license configuration.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Lists your tokens.
    func listTokens(input: ListTokensInput) async throws -> ListTokensOutputResponse
    /// Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.
    func listUsageForLicenseConfiguration(input: ListUsageForLicenseConfigurationInput) async throws -> ListUsageForLicenseConfigurationOutputResponse
    /// Rejects the specified grant.
    func rejectGrant(input: RejectGrantInput) async throws -> RejectGrantOutputResponse
    /// Adds the specified tags to the specified license configuration.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the specified license configuration.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Modifies the attributes of an existing license configuration.
    func updateLicenseConfiguration(input: UpdateLicenseConfigurationInput) async throws -> UpdateLicenseConfigurationOutputResponse
    /// Updates a report generator. After you make changes to a report generator, it starts generating new reports within 60 minutes of being updated.
    func updateLicenseManagerReportGenerator(input: UpdateLicenseManagerReportGeneratorInput) async throws -> UpdateLicenseManagerReportGeneratorOutputResponse
    /// Adds or removes the specified license configurations for the specified Amazon Web Services resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and CloudFormation templates, as they send license configurations to the operation that creates the resource.
    func updateLicenseSpecificationsForResource(input: UpdateLicenseSpecificationsForResourceInput) async throws -> UpdateLicenseSpecificationsForResourceOutputResponse
    /// Updates License Manager settings for the current Region.
    func updateServiceSettings(input: UpdateServiceSettingsInput) async throws -> UpdateServiceSettingsOutputResponse
}

public protocol LicenseManagerClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum LicenseManagerClientTypes {}