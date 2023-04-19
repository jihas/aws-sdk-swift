// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// This is the API Reference Guide for the zonal shift feature of Amazon Route 53 Application Recovery Controller. This guide is for developers who need detailed information about zonal shift API actions, data types, and errors. Zonal shift is in preview release for Amazon Route 53 Application Recovery Controller and is subject to change. Zonal shift in Route 53 ARC enables you to move traffic for a load balancer resource away from an Availability Zone. Starting a zonal shift helps your application recover immediately, for example, from a developer's bad code deployment or from an AWS infrastructure failure in a single Availability Zone, reducing the impact and time lost from an issue in one zone. Supported AWS resources are automatically registered with Route 53 ARC. Resources that are registered for zonal shifts in Route 53 ARC are managed resources in Route 53 ARC. You can start a zonal shift for any managed resource in your account in a Region. At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off. Zonal shifts are temporary. You must specify an expiration when you start a zonal shift, of up to three days initially. If you want to still keep traffic away from an Availability Zone, you can update the zonal shift and set a new expiration. You can also cancel a zonal shift, before it expires, for example, if you're ready to restore traffic to the Availability Zone. For more information about using zonal shift, see the [Amazon Route 53 Application Recovery Controller Developer Guide](https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html).
public protocol ARCZonalShiftClientProtocol {
    /// Cancel a zonal shift in Amazon Route 53 Application Recovery Controller that you've started for a resource in your AWS account in an AWS Region.
    func cancelZonalShift(input: CancelZonalShiftInput) async throws -> CancelZonalShiftOutputResponse
    /// Get information about a resource that's been registered for zonal shifts with Amazon Route 53 Application Recovery Controller in this AWS Region. Resources that are registered for zonal shifts are managed resources in Route 53 ARC. At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
    func getManagedResource(input: GetManagedResourceInput) async throws -> GetManagedResourceOutputResponse
    /// Lists all the resources in your AWS account in this AWS Region that are managed for zonal shifts in Amazon Route 53 Application Recovery Controller, and information about them. The information includes their Amazon Resource Names (ARNs), the Availability Zones the resources are deployed in, and the resource name.
    func listManagedResources(input: ListManagedResourcesInput) async throws -> ListManagedResourcesOutputResponse
    /// Lists all the active zonal shifts in Amazon Route 53 Application Recovery Controller in your AWS account in this AWS Region.
    func listZonalShifts(input: ListZonalShiftsInput) async throws -> ListZonalShiftsOutputResponse
    /// You start a zonal shift to temporarily move load balancer traffic away from an Availability Zone in a AWS Region, to help your application recover immediately, for example, from a developer's bad code deployment or from an AWS infrastructure failure in a single Availability Zone. You can start a zonal shift in Route 53 ARC only for managed resources in your account in an AWS Region. Resources are automatically registered with Route 53 ARC by AWS services. At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off. When you start a zonal shift, traffic for the resource is no longer routed to the Availability Zone. The zonal shift is created immediately in Route 53 ARC. However, it can take a short time, typically up to a few minutes, for existing, in-progress connections in the Availability Zone to complete. For more information, see [Zonal shift](https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    func startZonalShift(input: StartZonalShiftInput) async throws -> StartZonalShiftOutputResponse
    /// Update an active zonal shift in Amazon Route 53 Application Recovery Controller in your AWS account. You can update a zonal shift to set a new expiration, or edit or replace the comment for the zonal shift.
    func updateZonalShift(input: UpdateZonalShiftInput) async throws -> UpdateZonalShiftOutputResponse
}

public protocol ARCZonalShiftClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ARCZonalShiftClientTypes {}
