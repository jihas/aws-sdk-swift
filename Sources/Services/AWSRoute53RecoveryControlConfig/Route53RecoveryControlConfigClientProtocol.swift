// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Recovery Control Configuration API Reference for Amazon Route 53 Application Recovery Controller
public protocol Route53RecoveryControlConfigClientProtocol {
    /// Create a new cluster. A cluster is a set of redundant Regional endpoints against which you can run API calls to update or get the state of one or more routing controls. Each cluster has a name, status, Amazon Resource Name (ARN), and an array of the five cluster endpoints (one for each supported Amazon Web Services Region) that you can use with API calls to the cluster data plane.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutputResponse
    /// Creates a new control panel. A control panel represents a group of routing controls that can be changed together in a single transaction. You can use a control panel to centrally view the operational status of applications across your organization, and trigger multi-app failovers in a single transaction, for example, to fail over an Availability Zone or Amazon Web Services Region.
    func createControlPanel(input: CreateControlPanelInput) async throws -> CreateControlPanelOutputResponse
    /// Creates a new routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control traffic routing. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    func createRoutingControl(input: CreateRoutingControlInput) async throws -> CreateRoutingControlOutputResponse
    /// Creates a safety rule in a control panel. Safety rules let you add safeguards around changing routing control states, and for enabling and disabling routing controls, to help prevent unexpected outcomes. There are two types of safety rules: assertion rules and gating rules. Assertion rule: An assertion rule enforces that, when you change a routing control state, that a certain criteria is met. For example, the criteria might be that at least one routing control state is On after the transaction so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario. Gating rule: A gating rule lets you configure a gating routing control as an overall "on/off" switch for a group of routing controls. Or, you can configure more complex gating scenarios, for example by configuring multiple gating routing controls. For more information, see [Safety rules](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    func createSafetyRule(input: CreateSafetyRuleInput) async throws -> CreateSafetyRuleOutputResponse
    /// Delete a cluster.
    func deleteCluster(input: DeleteClusterInput) async throws -> DeleteClusterOutputResponse
    /// Deletes a control panel.
    func deleteControlPanel(input: DeleteControlPanelInput) async throws -> DeleteControlPanelOutputResponse
    /// Deletes a routing control.
    func deleteRoutingControl(input: DeleteRoutingControlInput) async throws -> DeleteRoutingControlOutputResponse
    /// Deletes a safety rule./>
    func deleteSafetyRule(input: DeleteSafetyRuleInput) async throws -> DeleteSafetyRuleOutputResponse
    /// Display the details about a cluster. The response includes the cluster name, endpoints, status, and Amazon Resource Name (ARN).
    func describeCluster(input: DescribeClusterInput) async throws -> DescribeClusterOutputResponse
    /// Displays details about a control panel.
    func describeControlPanel(input: DescribeControlPanelInput) async throws -> DescribeControlPanelOutputResponse
    /// Displays details about a routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    func describeRoutingControl(input: DescribeRoutingControlInput) async throws -> DescribeRoutingControlOutputResponse
    /// Returns information about a safety rule.
    func describeSafetyRule(input: DescribeSafetyRuleInput) async throws -> DescribeSafetyRuleOutputResponse
    /// Returns an array of all Amazon Route 53 health checks associated with a specific routing control.
    func listAssociatedRoute53HealthChecks(input: ListAssociatedRoute53HealthChecksInput) async throws -> ListAssociatedRoute53HealthChecksOutputResponse
    /// Returns an array of all the clusters in an account.
    func listClusters(input: ListClustersInput) async throws -> ListClustersOutputResponse
    /// Returns an array of control panels in an account or in a cluster.
    func listControlPanels(input: ListControlPanelsInput) async throws -> ListControlPanelsOutputResponse
    /// Returns an array of routing controls for a control panel. A routing control is an Amazon Route 53 Application Recovery Controller construct that has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.
    func listRoutingControls(input: ListRoutingControlsInput) async throws -> ListRoutingControlsOutputResponse
    /// List the safety rules (the assertion rules and gating rules) that you've defined for the routing controls in a control panel.
    func listSafetyRules(input: ListSafetyRulesInput) async throws -> ListSafetyRulesOutputResponse
    /// Lists the tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds a tag to a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a control panel. The only update you can make to a control panel is to change the name of the control panel.
    func updateControlPanel(input: UpdateControlPanelInput) async throws -> UpdateControlPanelOutputResponse
    /// Updates a routing control. You can only update the name of the routing control. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    func updateRoutingControl(input: UpdateRoutingControlInput) async throws -> UpdateRoutingControlOutputResponse
    /// Update a safety rule (an assertion rule or gating rule). You can only update the name and the waiting period for a safety rule. To make other updates, delete the safety rule and create a new one.
    func updateSafetyRule(input: UpdateSafetyRuleInput) async throws -> UpdateSafetyRuleOutputResponse
}

public protocol Route53RecoveryControlConfigClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum Route53RecoveryControlConfigClientTypes {}
