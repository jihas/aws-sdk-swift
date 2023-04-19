// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Catalog API actions allow you to manage your entities through list, describe, and update capabilities. An entity can be a product or an offer on AWS Marketplace. You can automate your entity update process by integrating the AWS Marketplace Catalog API with your AWS Marketplace product build or deployment pipelines. You can also create your own applications on top of the Catalog API to manage your products on AWS Marketplace.
public protocol MarketplaceCatalogClientProtocol {
    /// Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.
    func cancelChangeSet(input: CancelChangeSetInput) async throws -> CancelChangeSetOutputResponse
    /// Deletes a resource-based policy on an Entity that is identified by its resource ARN.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    /// Provides information about a given change set.
    func describeChangeSet(input: DescribeChangeSetInput) async throws -> DescribeChangeSetOutputResponse
    /// Returns the metadata and content of the entity.
    func describeEntity(input: DescribeEntityInput) async throws -> DescribeEntityOutputResponse
    /// Gets a resource-based policy of an Entity that is identified by its resource ARN.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutputResponse
    /// Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.
    func listChangeSets(input: ListChangeSetsInput) async throws -> ListChangeSetsOutputResponse
    /// Provides the list of entities of a given type.
    func listEntities(input: ListEntitiesInput) async throws -> ListEntitiesOutputResponse
    /// Lists all tags that have been added to a resource (either an [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Attaches a resource-based policy to an Entity. Examples of an entity include: AmiProduct and ContainerProduct.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    /// Allows you to request changes for your entities. Within a single ChangeSet, you can't start the same change type against the same entity multiple times. Additionally, when a ChangeSet is running, all the entities targeted by the different changes are locked until the change set has completed (either succeeded, cancelled, or failed). If you try to start a change set containing a change against an entity that is already locked, you will receive a ResourceInUseException error. For example, you can't start the ChangeSet described in the [example](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples) later in this topic because it contains two changes to run the same change type (AddRevisions) against the same entity (entity-id@1). For more information about working with change sets, see [ Working with change sets](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets). For information on change types for single-AMI products, see [Working with single-AMI products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products). Als, for more information on change types available for container-based products, see [Working with container products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products).
    func startChangeSet(input: StartChangeSetInput) async throws -> StartChangeSetOutputResponse
    /// Tags a resource (either an [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag or list of tags from a resource (either an [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public protocol MarketplaceCatalogClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MarketplaceCatalogClientTypes {}
