// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon Web Services enables you to centrally manage your Amazon Web Services Cloud WAN core network and your Transit Gateway network across Amazon Web Services accounts, Regions, and on-premises locations.
public protocol NetworkManagerClientProtocol {
    /// Accepts a core network attachment request. Once the attachment request is accepted by a core network owner, the attachment is created and connected to a core network.
    func acceptAttachment(input: AcceptAttachmentInput) async throws -> AcceptAttachmentOutputResponse
    /// Associates a core network Connect peer with a device and optionally, with a link. If you specify a link, it must be associated with the specified device. You can only associate core network Connect peers that have been created on a core network Connect attachment on a core network.
    func associateConnectPeer(input: AssociateConnectPeerInput) async throws -> AssociateConnectPeerOutputResponse
    /// Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device. You can only associate customer gateways that are connected to a VPN attachment on a transit gateway or core network registered in your global network. When you register a transit gateway or core network, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the [DescribeVpnConnections](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html) EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link.
    func associateCustomerGateway(input: AssociateCustomerGatewayInput) async throws -> AssociateCustomerGatewayOutputResponse
    /// Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.
    func associateLink(input: AssociateLinkInput) async throws -> AssociateLinkOutputResponse
    /// Associates a transit gateway Connect peer with a device, and optionally, with a link. If you specify a link, it must be associated with the specified device. You can only associate transit gateway Connect peers that have been created on a transit gateway that's registered in your global network. You cannot associate a transit gateway Connect peer with more than one device and link.
    func associateTransitGatewayConnectPeer(input: AssociateTransitGatewayConnectPeerInput) async throws -> AssociateTransitGatewayConnectPeerOutputResponse
    /// Creates a core network Connect attachment from a specified core network attachment. A core network Connect attachment is a GRE-based tunnel attachment that you can use to establish a connection between a core network and an appliance. A core network Connect attachment uses an existing VPC attachment as the underlying transport mechanism.
    func createConnectAttachment(input: CreateConnectAttachmentInput) async throws -> CreateConnectAttachmentOutputResponse
    /// Creates a connection between two devices. The devices can be a physical or virtual appliance that connects to a third-party appliance in a VPC, or a physical appliance that connects to another physical appliance in an on-premises network.
    func createConnection(input: CreateConnectionInput) async throws -> CreateConnectionOutputResponse
    /// Creates a core network Connect peer for a specified core network connect attachment between a core network and an appliance. The peer address and transit gateway address must be the same IP address family (IPv4 or IPv6).
    func createConnectPeer(input: CreateConnectPeerInput) async throws -> CreateConnectPeerOutputResponse
    /// Creates a core network as part of your global network, and optionally, with a core network policy.
    func createCoreNetwork(input: CreateCoreNetworkInput) async throws -> CreateCoreNetworkOutputResponse
    /// Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.
    func createDevice(input: CreateDeviceInput) async throws -> CreateDeviceOutputResponse
    /// Creates a new, empty global network.
    func createGlobalNetwork(input: CreateGlobalNetworkInput) async throws -> CreateGlobalNetworkOutputResponse
    /// Creates a new link for a specified site.
    func createLink(input: CreateLinkInput) async throws -> CreateLinkOutputResponse
    /// Creates a new site in a global network.
    func createSite(input: CreateSiteInput) async throws -> CreateSiteOutputResponse
    /// Creates an Amazon Web Services site-to-site VPN attachment on an edge location of a core network.
    func createSiteToSiteVpnAttachment(input: CreateSiteToSiteVpnAttachmentInput) async throws -> CreateSiteToSiteVpnAttachmentOutputResponse
    /// Creates a transit gateway peering connection.
    func createTransitGatewayPeering(input: CreateTransitGatewayPeeringInput) async throws -> CreateTransitGatewayPeeringOutputResponse
    /// Creates a transit gateway route table attachment.
    func createTransitGatewayRouteTableAttachment(input: CreateTransitGatewayRouteTableAttachmentInput) async throws -> CreateTransitGatewayRouteTableAttachmentOutputResponse
    /// Creates a VPC attachment on an edge location of a core network.
    func createVpcAttachment(input: CreateVpcAttachmentInput) async throws -> CreateVpcAttachmentOutputResponse
    /// Deletes an attachment. Supports all attachment types.
    func deleteAttachment(input: DeleteAttachmentInput) async throws -> DeleteAttachmentOutputResponse
    /// Deletes the specified connection in your global network.
    func deleteConnection(input: DeleteConnectionInput) async throws -> DeleteConnectionOutputResponse
    /// Deletes a Connect peer.
    func deleteConnectPeer(input: DeleteConnectPeerInput) async throws -> DeleteConnectPeerOutputResponse
    /// Deletes a core network along with all core network policies. This can only be done if there are no attachments on a core network.
    func deleteCoreNetwork(input: DeleteCoreNetworkInput) async throws -> DeleteCoreNetworkOutputResponse
    /// Deletes a policy version from a core network. You can't delete the current LIVE policy.
    func deleteCoreNetworkPolicyVersion(input: DeleteCoreNetworkPolicyVersionInput) async throws -> DeleteCoreNetworkPolicyVersionOutputResponse
    /// Deletes an existing device. You must first disassociate the device from any links and customer gateways.
    func deleteDevice(input: DeleteDeviceInput) async throws -> DeleteDeviceOutputResponse
    /// Deletes an existing global network. You must first delete all global network objects (devices, links, and sites), deregister all transit gateways, and delete any core networks.
    func deleteGlobalNetwork(input: DeleteGlobalNetworkInput) async throws -> DeleteGlobalNetworkOutputResponse
    /// Deletes an existing link. You must first disassociate the link from any devices and customer gateways.
    func deleteLink(input: DeleteLinkInput) async throws -> DeleteLinkOutputResponse
    /// Deletes an existing peering connection.
    func deletePeering(input: DeletePeeringInput) async throws -> DeletePeeringOutputResponse
    /// Deletes a resource policy for the specified resource. This revokes the access of the principals specified in the resource policy.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    /// Deletes an existing site. The site cannot be associated with any device or link.
    func deleteSite(input: DeleteSiteInput) async throws -> DeleteSiteOutputResponse
    /// Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.
    func deregisterTransitGateway(input: DeregisterTransitGatewayInput) async throws -> DeregisterTransitGatewayOutputResponse
    /// Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use [GetTransitGatewayRegistrations].
    func describeGlobalNetworks(input: DescribeGlobalNetworksInput) async throws -> DescribeGlobalNetworksOutputResponse
    /// Disassociates a core network Connect peer from a device and a link.
    func disassociateConnectPeer(input: DisassociateConnectPeerInput) async throws -> DisassociateConnectPeerOutputResponse
    /// Disassociates a customer gateway from a device and a link.
    func disassociateCustomerGateway(input: DisassociateCustomerGatewayInput) async throws -> DisassociateCustomerGatewayOutputResponse
    /// Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.
    func disassociateLink(input: DisassociateLinkInput) async throws -> DisassociateLinkOutputResponse
    /// Disassociates a transit gateway Connect peer from a device and link.
    func disassociateTransitGatewayConnectPeer(input: DisassociateTransitGatewayConnectPeerInput) async throws -> DisassociateTransitGatewayConnectPeerOutputResponse
    /// Executes a change set on your core network. Deploys changes globally based on the policy submitted..
    func executeCoreNetworkChangeSet(input: ExecuteCoreNetworkChangeSetInput) async throws -> ExecuteCoreNetworkChangeSetOutputResponse
    /// Returns information about a core network Connect attachment.
    func getConnectAttachment(input: GetConnectAttachmentInput) async throws -> GetConnectAttachmentOutputResponse
    /// Gets information about one or more of your connections in a global network.
    func getConnections(input: GetConnectionsInput) async throws -> GetConnectionsOutputResponse
    /// Returns information about a core network Connect peer.
    func getConnectPeer(input: GetConnectPeerInput) async throws -> GetConnectPeerOutputResponse
    /// Returns information about a core network Connect peer associations.
    func getConnectPeerAssociations(input: GetConnectPeerAssociationsInput) async throws -> GetConnectPeerAssociationsOutputResponse
    /// Returns information about the LIVE policy for a core network.
    func getCoreNetwork(input: GetCoreNetworkInput) async throws -> GetCoreNetworkOutputResponse
    /// Returns information about a core network change event.
    func getCoreNetworkChangeEvents(input: GetCoreNetworkChangeEventsInput) async throws -> GetCoreNetworkChangeEventsOutputResponse
    /// Returns a change set between the LIVE core network policy and a submitted policy.
    func getCoreNetworkChangeSet(input: GetCoreNetworkChangeSetInput) async throws -> GetCoreNetworkChangeSetOutputResponse
    /// Returns details about a core network policy. You can get details about your current live policy or any previous policy version.
    func getCoreNetworkPolicy(input: GetCoreNetworkPolicyInput) async throws -> GetCoreNetworkPolicyOutputResponse
    /// Gets the association information for customer gateways that are associated with devices and links in your global network.
    func getCustomerGatewayAssociations(input: GetCustomerGatewayAssociationsInput) async throws -> GetCustomerGatewayAssociationsOutputResponse
    /// Gets information about one or more of your devices in a global network.
    func getDevices(input: GetDevicesInput) async throws -> GetDevicesOutputResponse
    /// Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    func getLinkAssociations(input: GetLinkAssociationsInput) async throws -> GetLinkAssociationsOutputResponse
    /// Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    func getLinks(input: GetLinksInput) async throws -> GetLinksOutputResponse
    /// Gets the count of network resources, by resource type, for the specified global network.
    func getNetworkResourceCounts(input: GetNetworkResourceCountsInput) async throws -> GetNetworkResourceCountsOutputResponse
    /// Gets the network resource relationships for the specified global network.
    func getNetworkResourceRelationships(input: GetNetworkResourceRelationshipsInput) async throws -> GetNetworkResourceRelationshipsOutputResponse
    /// Describes the network resources for the specified global network. The results include information from the corresponding Describe call for the resource, minus any sensitive information such as pre-shared keys.
    func getNetworkResources(input: GetNetworkResourcesInput) async throws -> GetNetworkResourcesOutputResponse
    /// Gets the network routes of the specified global network.
    func getNetworkRoutes(input: GetNetworkRoutesInput) async throws -> GetNetworkRoutesOutputResponse
    /// Gets the network telemetry of the specified global network.
    func getNetworkTelemetry(input: GetNetworkTelemetryInput) async throws -> GetNetworkTelemetryOutputResponse
    /// Returns information about a resource policy.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutputResponse
    /// Gets information about the specified route analysis.
    func getRouteAnalysis(input: GetRouteAnalysisInput) async throws -> GetRouteAnalysisOutputResponse
    /// Gets information about one or more of your sites in a global network.
    func getSites(input: GetSitesInput) async throws -> GetSitesOutputResponse
    /// Returns information about a site-to-site VPN attachment.
    func getSiteToSiteVpnAttachment(input: GetSiteToSiteVpnAttachmentInput) async throws -> GetSiteToSiteVpnAttachmentOutputResponse
    /// Gets information about one or more of your transit gateway Connect peer associations in a global network.
    func getTransitGatewayConnectPeerAssociations(input: GetTransitGatewayConnectPeerAssociationsInput) async throws -> GetTransitGatewayConnectPeerAssociationsOutputResponse
    /// Returns information about a transit gateway peer.
    func getTransitGatewayPeering(input: GetTransitGatewayPeeringInput) async throws -> GetTransitGatewayPeeringOutputResponse
    /// Gets information about the transit gateway registrations in a specified global network.
    func getTransitGatewayRegistrations(input: GetTransitGatewayRegistrationsInput) async throws -> GetTransitGatewayRegistrationsOutputResponse
    /// Returns information about a transit gateway route table attachment.
    func getTransitGatewayRouteTableAttachment(input: GetTransitGatewayRouteTableAttachmentInput) async throws -> GetTransitGatewayRouteTableAttachmentOutputResponse
    /// Returns information about a VPC attachment.
    func getVpcAttachment(input: GetVpcAttachmentInput) async throws -> GetVpcAttachmentOutputResponse
    /// Returns a list of core network attachments.
    func listAttachments(input: ListAttachmentsInput) async throws -> ListAttachmentsOutputResponse
    /// Returns a list of core network Connect peers.
    func listConnectPeers(input: ListConnectPeersInput) async throws -> ListConnectPeersOutputResponse
    /// Returns a list of core network policy versions.
    func listCoreNetworkPolicyVersions(input: ListCoreNetworkPolicyVersionsInput) async throws -> ListCoreNetworkPolicyVersionsOutputResponse
    /// Returns a list of owned and shared core networks.
    func listCoreNetworks(input: ListCoreNetworksInput) async throws -> ListCoreNetworksOutputResponse
    /// Gets the status of the Service Linked Role (SLR) deployment for the accounts in a given Amazon Web Services Organization.
    func listOrganizationServiceAccessStatus(input: ListOrganizationServiceAccessStatusInput) async throws -> ListOrganizationServiceAccessStatusOutputResponse
    /// Lists the peerings for a core network.
    func listPeerings(input: ListPeeringsInput) async throws -> ListPeeringsOutputResponse
    /// Lists the tags for a specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates a new, immutable version of a core network policy. A subsequent change set is created showing the differences between the LIVE policy and the submitted policy.
    func putCoreNetworkPolicy(input: PutCoreNetworkPolicyInput) async throws -> PutCoreNetworkPolicyOutputResponse
    /// Creates or updates a resource policy.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    /// Registers a transit gateway in your global network. Not all Regions support transit gateways for global networks. For a list of the supported Regions, see [Region Availability](https://docs.aws.amazon.com/network-manager/latest/tgwnm/what-are-global-networks.html#nm-available-regions) in the Amazon Web Services Transit Gateways for Global Networks User Guide. The transit gateway can be in any of the supported Amazon Web Services Regions, but it must be owned by the same Amazon Web Services account that owns the global network. You cannot register a transit gateway in more than one global network.
    func registerTransitGateway(input: RegisterTransitGatewayInput) async throws -> RegisterTransitGatewayOutputResponse
    /// Rejects a core network attachment request.
    func rejectAttachment(input: RejectAttachmentInput) async throws -> RejectAttachmentOutputResponse
    /// Restores a previous policy version as a new, immutable version of a core network policy. A subsequent change set is created showing the differences between the LIVE policy and restored policy.
    func restoreCoreNetworkPolicyVersion(input: RestoreCoreNetworkPolicyVersionInput) async throws -> RestoreCoreNetworkPolicyVersionOutputResponse
    /// Enables the Network Manager service for an Amazon Web Services Organization. This can only be called by a management account within the organization.
    func startOrganizationServiceAccessUpdate(input: StartOrganizationServiceAccessUpdateInput) async throws -> StartOrganizationServiceAccessUpdateOutputResponse
    /// Starts analyzing the routing path between the specified source and destination. For more information, see [Route Analyzer](https://docs.aws.amazon.com/vpc/latest/tgw/route-analyzer.html).
    func startRouteAnalysis(input: StartRouteAnalysisInput) async throws -> StartRouteAnalysisOutputResponse
    /// Tags a specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from a specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the information for an existing connection. To remove information for any of the parameters, specify an empty string.
    func updateConnection(input: UpdateConnectionInput) async throws -> UpdateConnectionOutputResponse
    /// Updates the description of a core network.
    func updateCoreNetwork(input: UpdateCoreNetworkInput) async throws -> UpdateCoreNetworkOutputResponse
    /// Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.
    func updateDevice(input: UpdateDeviceInput) async throws -> UpdateDeviceOutputResponse
    /// Updates an existing global network. To remove information for any of the parameters, specify an empty string.
    func updateGlobalNetwork(input: UpdateGlobalNetworkInput) async throws -> UpdateGlobalNetworkOutputResponse
    /// Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.
    func updateLink(input: UpdateLinkInput) async throws -> UpdateLinkOutputResponse
    /// Updates the resource metadata for the specified global network.
    func updateNetworkResourceMetadata(input: UpdateNetworkResourceMetadataInput) async throws -> UpdateNetworkResourceMetadataOutputResponse
    /// Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.
    func updateSite(input: UpdateSiteInput) async throws -> UpdateSiteOutputResponse
    /// Updates a VPC attachment.
    func updateVpcAttachment(input: UpdateVpcAttachmentInput) async throws -> UpdateVpcAttachmentOutputResponse
}

public protocol NetworkManagerClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum NetworkManagerClientTypes {}
