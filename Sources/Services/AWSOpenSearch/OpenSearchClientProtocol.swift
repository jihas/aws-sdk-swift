// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Use the Amazon OpenSearch Service configuration API to create, configure, and manage OpenSearch Service domains. For sample code that uses the configuration API, see the [ Amazon OpenSearch Service Developer Guide ](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/opensearch-configuration-samples.html). The guide also contains [sample code](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/request-signing.html) for sending signed HTTP requests to the OpenSearch APIs. The endpoint for configuration service requests is Region specific: es.region.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a current list of supported Regions and endpoints, see [Amazon Web Services service endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions).
public protocol OpenSearchClientProtocol {
    /// Allows the destination Amazon OpenSearch Service domain owner to accept an inbound cross-cluster search connection request. For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
    func acceptInboundConnection(input: AcceptInboundConnectionInput) async throws -> AcceptInboundConnectionOutputResponse
    /// Attaches tags to an existing Amazon OpenSearch Service domain. Tags are a set of case-sensitive key-value pairs. A domain can have up to 10 tags. For more information, see [Tagging Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).
    func addTags(input: AddTagsInput) async throws -> AddTagsOutputResponse
    /// Associates a package with an Amazon OpenSearch Service domain. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func associatePackage(input: AssociatePackageInput) async throws -> AssociatePackageOutputResponse
    /// Provides access to an Amazon OpenSearch Service domain through the use of an interface VPC endpoint.
    func authorizeVpcEndpointAccess(input: AuthorizeVpcEndpointAccessInput) async throws -> AuthorizeVpcEndpointAccessOutputResponse
    /// Cancels a scheduled service software update for an Amazon OpenSearch Service domain. You can only perform this operation before the AutomatedUpdateDate and when the domain's UpdateStatus is PENDING_UPDATE. For more information, see [Service software updates in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).
    func cancelServiceSoftwareUpdate(input: CancelServiceSoftwareUpdateInput) async throws -> CancelServiceSoftwareUpdateOutputResponse
    /// Creates an Amazon OpenSearch Service domain. For more information, see [Creating and managing Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html).
    func createDomain(input: CreateDomainInput) async throws -> CreateDomainOutputResponse
    /// Creates a new cross-cluster search connection from a source Amazon OpenSearch Service domain to a destination domain. For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
    func createOutboundConnection(input: CreateOutboundConnectionInput) async throws -> CreateOutboundConnectionOutputResponse
    /// Creates a package for use with Amazon OpenSearch Service domains. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func createPackage(input: CreatePackageInput) async throws -> CreatePackageOutputResponse
    /// Creates an Amazon OpenSearch Service-managed VPC endpoint.
    func createVpcEndpoint(input: CreateVpcEndpointInput) async throws -> CreateVpcEndpointOutputResponse
    /// Deletes an Amazon OpenSearch Service domain and all of its data. You can't recover a domain after you delete it.
    func deleteDomain(input: DeleteDomainInput) async throws -> DeleteDomainOutputResponse
    /// Allows the destination Amazon OpenSearch Service domain owner to delete an existing inbound cross-cluster search connection. For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
    func deleteInboundConnection(input: DeleteInboundConnectionInput) async throws -> DeleteInboundConnectionOutputResponse
    /// Allows the source Amazon OpenSearch Service domain owner to delete an existing outbound cross-cluster search connection. For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
    func deleteOutboundConnection(input: DeleteOutboundConnectionInput) async throws -> DeleteOutboundConnectionOutputResponse
    /// Deletes an Amazon OpenSearch Service package. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func deletePackage(input: DeletePackageInput) async throws -> DeletePackageOutputResponse
    /// Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.
    func deleteVpcEndpoint(input: DeleteVpcEndpointInput) async throws -> DeleteVpcEndpointOutputResponse
    /// Describes the domain configuration for the specified Amazon OpenSearch Service domain, including the domain ID, domain service endpoint, and domain ARN.
    func describeDomain(input: DescribeDomainInput) async throws -> DescribeDomainOutputResponse
    /// Returns the list of optimizations that Auto-Tune has made to an Amazon OpenSearch Service domain. For more information, see [Auto-Tune for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html).
    func describeDomainAutoTunes(input: DescribeDomainAutoTunesInput) async throws -> DescribeDomainAutoTunesOutputResponse
    /// Returns information about the current blue/green deployment happening on an Amazon OpenSearch Service domain. For more information, see [Making configuration changes in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html).
    func describeDomainChangeProgress(input: DescribeDomainChangeProgressInput) async throws -> DescribeDomainChangeProgressOutputResponse
    /// Returns the configuration of an Amazon OpenSearch Service domain.
    func describeDomainConfig(input: DescribeDomainConfigInput) async throws -> DescribeDomainConfigOutputResponse
    /// Returns domain configuration information about the specified Amazon OpenSearch Service domains.
    func describeDomains(input: DescribeDomainsInput) async throws -> DescribeDomainsOutputResponse
    /// Describes the progress of a pre-update dry run analysis on an Amazon OpenSearch Service domain. For more information, see [Determining whether a change will cause a blue/green deployment](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#dryrun).
    func describeDryRunProgress(input: DescribeDryRunProgressInput) async throws -> DescribeDryRunProgressOutputResponse
    /// Lists all the inbound cross-cluster search connections for a destination (remote) Amazon OpenSearch Service domain. For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
    func describeInboundConnections(input: DescribeInboundConnectionsInput) async throws -> DescribeInboundConnectionsOutputResponse
    /// Describes the instance count, storage, and master node limits for a given OpenSearch or Elasticsearch version and instance type.
    func describeInstanceTypeLimits(input: DescribeInstanceTypeLimitsInput) async throws -> DescribeInstanceTypeLimitsOutputResponse
    /// Lists all the outbound cross-cluster connections for a local (source) Amazon OpenSearch Service domain. For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
    func describeOutboundConnections(input: DescribeOutboundConnectionsInput) async throws -> DescribeOutboundConnectionsOutputResponse
    /// Describes all packages available to OpenSearch Service. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func describePackages(input: DescribePackagesInput) async throws -> DescribePackagesOutputResponse
    /// Describes the available Amazon OpenSearch Service Reserved Instance offerings for a given Region. For more information, see [Reserved Instances in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html).
    func describeReservedInstanceOfferings(input: DescribeReservedInstanceOfferingsInput) async throws -> DescribeReservedInstanceOfferingsOutputResponse
    /// Describes the Amazon OpenSearch Service instances that you have reserved in a given Region. For more information, see [Reserved Instances in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html).
    func describeReservedInstances(input: DescribeReservedInstancesInput) async throws -> DescribeReservedInstancesOutputResponse
    /// Describes one or more Amazon OpenSearch Service-managed VPC endpoints.
    func describeVpcEndpoints(input: DescribeVpcEndpointsInput) async throws -> DescribeVpcEndpointsOutputResponse
    /// Removes a package from the specified Amazon OpenSearch Service domain. The package can't be in use with any OpenSearch index for the dissociation to succeed. The package is still available in OpenSearch Service for association later. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func dissociatePackage(input: DissociatePackageInput) async throws -> DissociatePackageOutputResponse
    /// Returns a map of OpenSearch or Elasticsearch versions and the versions you can upgrade them to.
    func getCompatibleVersions(input: GetCompatibleVersionsInput) async throws -> GetCompatibleVersionsOutputResponse
    /// Returns a list of Amazon OpenSearch Service package versions, along with their creation time and commit message. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func getPackageVersionHistory(input: GetPackageVersionHistoryInput) async throws -> GetPackageVersionHistoryOutputResponse
    /// Retrieves the complete history of the last 10 upgrades performed on an Amazon OpenSearch Service domain.
    func getUpgradeHistory(input: GetUpgradeHistoryInput) async throws -> GetUpgradeHistoryOutputResponse
    /// Returns the most recent status of the last upgrade or upgrade eligibility check performed on an Amazon OpenSearch Service domain.
    func getUpgradeStatus(input: GetUpgradeStatusInput) async throws -> GetUpgradeStatusOutputResponse
    /// Returns the names of all Amazon OpenSearch Service domains owned by the current user in the active Region.
    func listDomainNames(input: ListDomainNamesInput) async throws -> ListDomainNamesOutputResponse
    /// Lists all Amazon OpenSearch Service domains associated with a given package. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func listDomainsForPackage(input: ListDomainsForPackageInput) async throws -> ListDomainsForPackageOutputResponse
    /// Lists all instance types and available features for a given OpenSearch or Elasticsearch version.
    func listInstanceTypeDetails(input: ListInstanceTypeDetailsInput) async throws -> ListInstanceTypeDetailsOutputResponse
    /// Lists all packages associated with an Amazon OpenSearch Service domain. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func listPackagesForDomain(input: ListPackagesForDomainInput) async throws -> ListPackagesForDomainOutputResponse
    /// Returns all resource tags for an Amazon OpenSearch Service domain. For more information, see [Tagging Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).
    func listTags(input: ListTagsInput) async throws -> ListTagsOutputResponse
    /// Lists all versions of OpenSearch and Elasticsearch that Amazon OpenSearch Service supports.
    func listVersions(input: ListVersionsInput) async throws -> ListVersionsOutputResponse
    /// Retrieves information about each Amazon Web Services principal that is allowed to access a given Amazon OpenSearch Service domain through the use of an interface VPC endpoint.
    func listVpcEndpointAccess(input: ListVpcEndpointAccessInput) async throws -> ListVpcEndpointAccessOutputResponse
    /// Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the current Amazon Web Services account and Region.
    func listVpcEndpoints(input: ListVpcEndpointsInput) async throws -> ListVpcEndpointsOutputResponse
    /// Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a particular domain.
    func listVpcEndpointsForDomain(input: ListVpcEndpointsForDomainInput) async throws -> ListVpcEndpointsForDomainOutputResponse
    /// Allows you to purchase Amazon OpenSearch Service Reserved Instances.
    func purchaseReservedInstanceOffering(input: PurchaseReservedInstanceOfferingInput) async throws -> PurchaseReservedInstanceOfferingOutputResponse
    /// Allows the remote Amazon OpenSearch Service domain owner to reject an inbound cross-cluster connection request.
    func rejectInboundConnection(input: RejectInboundConnectionInput) async throws -> RejectInboundConnectionOutputResponse
    /// Removes the specified set of tags from an Amazon OpenSearch Service domain. For more information, see [ Tagging Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging).
    func removeTags(input: RemoveTagsInput) async throws -> RemoveTagsOutputResponse
    /// Revokes access to an Amazon OpenSearch Service domain that was provided through an interface VPC endpoint.
    func revokeVpcEndpointAccess(input: RevokeVpcEndpointAccessInput) async throws -> RevokeVpcEndpointAccessOutputResponse
    /// Schedules a service software update for an Amazon OpenSearch Service domain. For more information, see [Service software updates in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).
    func startServiceSoftwareUpdate(input: StartServiceSoftwareUpdateInput) async throws -> StartServiceSoftwareUpdateOutputResponse
    /// Modifies the cluster configuration of the specified Amazon OpenSearch Service domain.
    func updateDomainConfig(input: UpdateDomainConfigInput) async throws -> UpdateDomainConfigOutputResponse
    /// Updates a package for use with Amazon OpenSearch Service domains. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
    func updatePackage(input: UpdatePackageInput) async throws -> UpdatePackageOutputResponse
    /// Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.
    func updateVpcEndpoint(input: UpdateVpcEndpointInput) async throws -> UpdateVpcEndpointOutputResponse
    /// Allows you to either upgrade your Amazon OpenSearch Service domain or perform an upgrade eligibility check to a compatible version of OpenSearch or Elasticsearch.
    func upgradeDomain(input: UpgradeDomainInput) async throws -> UpgradeDomainOutputResponse
}

public protocol OpenSearchClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum OpenSearchClientTypes {}
