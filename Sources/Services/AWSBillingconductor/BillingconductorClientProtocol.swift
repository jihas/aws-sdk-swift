// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon Web Services Billing Conductor is a fully managed service that you can use to customize a [pro forma](https://docs.aws.amazon.com/billingconductor/latest/userguide/understanding-eb.html#eb-other-definitions) version of your billing data each month, to accurately show or chargeback your end customers. Amazon Web Services Billing Conductor doesn't change the way you're billed by Amazon Web Services each month by design. Instead, it provides you with a mechanism to configure, generate, and display rates to certain customers over a given billing period. You can also analyze the difference between the rates you apply to your accounting groupings relative to your actual rates from Amazon Web Services. As a result of your Amazon Web Services Billing Conductor configuration, the payer account can also see the custom rate applied on the billing details page of the [Amazon Web Services Billing console](https://console.aws.amazon.com/billing), or configure a cost and usage report per billing group. This documentation shows how you can configure Amazon Web Services Billing Conductor using its API. For more information about using the [Amazon Web Services Billing Conductor](https://console.aws.amazon.com/billingconductor/) user interface, see the [ Amazon Web Services Billing Conductor User Guide](https://docs.aws.amazon.com/billingconductor/latest/userguide/what-is-billingconductor.html).
public protocol BillingconductorClientProtocol {
    /// Connects an array of account IDs in a consolidated billing family to a predefined billing group. The account IDs must be a part of the consolidated billing family during the current month, and not already associated with another billing group. The maximum number of accounts that can be associated in one call is 30.
    func associateAccounts(input: AssociateAccountsInput) async throws -> AssociateAccountsOutputResponse
    /// Connects an array of PricingRuleArns to a defined PricingPlan. The maximum number PricingRuleArn that can be associated in one call is 30.
    func associatePricingRules(input: AssociatePricingRulesInput) async throws -> AssociatePricingRulesOutputResponse
    /// Associates a batch of resources to a percentage custom line item.
    func batchAssociateResourcesToCustomLineItem(input: BatchAssociateResourcesToCustomLineItemInput) async throws -> BatchAssociateResourcesToCustomLineItemOutputResponse
    /// Disassociates a batch of resources from a percentage custom line item.
    func batchDisassociateResourcesFromCustomLineItem(input: BatchDisassociateResourcesFromCustomLineItemInput) async throws -> BatchDisassociateResourcesFromCustomLineItemOutputResponse
    /// Creates a billing group that resembles a consolidated billing family that Amazon Web Services charges, based off of the predefined pricing plan computation.
    func createBillingGroup(input: CreateBillingGroupInput) async throws -> CreateBillingGroupOutputResponse
    /// Creates a custom line item that can be used to create a one-time fixed charge that can be applied to a single billing group for the current or previous billing period. The one-time fixed charge is either a fee or discount.
    func createCustomLineItem(input: CreateCustomLineItemInput) async throws -> CreateCustomLineItemOutputResponse
    /// Creates a pricing plan that is used for computing Amazon Web Services charges for billing groups.
    func createPricingPlan(input: CreatePricingPlanInput) async throws -> CreatePricingPlanOutputResponse
    /// Creates a pricing rule can be associated to a pricing plan, or a set of pricing plans.
    func createPricingRule(input: CreatePricingRuleInput) async throws -> CreatePricingRuleOutputResponse
    /// Deletes a billing group.
    func deleteBillingGroup(input: DeleteBillingGroupInput) async throws -> DeleteBillingGroupOutputResponse
    /// Deletes the custom line item identified by the given ARN in the current, or previous billing period.
    func deleteCustomLineItem(input: DeleteCustomLineItemInput) async throws -> DeleteCustomLineItemOutputResponse
    /// Deletes a pricing plan. The pricing plan must not be associated with any billing groups to delete successfully.
    func deletePricingPlan(input: DeletePricingPlanInput) async throws -> DeletePricingPlanOutputResponse
    /// Deletes the pricing rule that's identified by the input Amazon Resource Name (ARN).
    func deletePricingRule(input: DeletePricingRuleInput) async throws -> DeletePricingRuleOutputResponse
    /// Removes the specified list of account IDs from the given billing group.
    func disassociateAccounts(input: DisassociateAccountsInput) async throws -> DisassociateAccountsOutputResponse
    /// Disassociates a list of pricing rules from a pricing plan.
    func disassociatePricingRules(input: DisassociatePricingRulesInput) async throws -> DisassociatePricingRulesOutputResponse
    /// This is a paginated call to list linked accounts that are linked to the payer account for the specified time period. If no information is provided, the current billing period is used. The response will optionally include the billing group that's associated with the linked account.
    func listAccountAssociations(input: ListAccountAssociationsInput) async throws -> ListAccountAssociationsOutputResponse
    /// A paginated call to retrieve a summary report of actual Amazon Web Services charges and the calculated Amazon Web Services charges based on the associated pricing plan of a billing group.
    func listBillingGroupCostReports(input: ListBillingGroupCostReportsInput) async throws -> ListBillingGroupCostReportsOutputResponse
    /// A paginated call to retrieve a list of billing groups for the given billing period. If you don't provide a billing group, the current billing period is used.
    func listBillingGroups(input: ListBillingGroupsInput) async throws -> ListBillingGroupsOutputResponse
    /// A paginated call to get a list of all custom line items (FFLIs) for the given billing period. If you don't provide a billing period, the current billing period is used.
    func listCustomLineItems(input: ListCustomLineItemsInput) async throws -> ListCustomLineItemsOutputResponse
    /// A paginated call to get a list of all custom line item versions.
    func listCustomLineItemVersions(input: ListCustomLineItemVersionsInput) async throws -> ListCustomLineItemVersionsOutputResponse
    /// A paginated call to get pricing plans for the given billing period. If you don't provide a billing period, the current billing period is used.
    func listPricingPlans(input: ListPricingPlansInput) async throws -> ListPricingPlansOutputResponse
    /// A list of the pricing plans that are associated with a pricing rule.
    func listPricingPlansAssociatedWithPricingRule(input: ListPricingPlansAssociatedWithPricingRuleInput) async throws -> ListPricingPlansAssociatedWithPricingRuleOutputResponse
    /// Describes a pricing rule that can be associated to a pricing plan, or set of pricing plans.
    func listPricingRules(input: ListPricingRulesInput) async throws -> ListPricingRulesOutputResponse
    /// Lists the pricing rules that are associated with a pricing plan.
    func listPricingRulesAssociatedToPricingPlan(input: ListPricingRulesAssociatedToPricingPlanInput) async throws -> ListPricingRulesAssociatedToPricingPlanOutputResponse
    /// List the resources that are associated to a custom line item.
    func listResourcesAssociatedToCustomLineItem(input: ListResourcesAssociatedToCustomLineItemInput) async throws -> ListResourcesAssociatedToCustomLineItemOutputResponse
    /// A list the tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Deletes specified tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// This updates an existing billing group.
    func updateBillingGroup(input: UpdateBillingGroupInput) async throws -> UpdateBillingGroupOutputResponse
    /// Update an existing custom line item in the current or previous billing period.
    func updateCustomLineItem(input: UpdateCustomLineItemInput) async throws -> UpdateCustomLineItemOutputResponse
    /// This updates an existing pricing plan.
    func updatePricingPlan(input: UpdatePricingPlanInput) async throws -> UpdatePricingPlanOutputResponse
    /// Updates an existing pricing rule.
    func updatePricingRule(input: UpdatePricingRuleInput) async throws -> UpdatePricingRuleOutputResponse
}

public protocol BillingconductorClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum BillingconductorClientTypes {}
