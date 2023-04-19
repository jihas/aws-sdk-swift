// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// The AWS IoT 1-Click Projects API Reference
public protocol IoT1ClickProjectsClientProtocol {
    /// Associates a physical device with a placement.
    func associateDeviceWithPlacement(input: AssociateDeviceWithPlacementInput) async throws -> AssociateDeviceWithPlacementOutputResponse
    /// Creates an empty placement.
    func createPlacement(input: CreatePlacementInput) async throws -> CreatePlacementOutputResponse
    /// Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
    func createProject(input: CreateProjectInput) async throws -> CreateProjectOutputResponse
    /// Deletes a placement. To delete a placement, it must not have any devices associated with it. When you delete a placement, all associated data becomes irretrievable.
    func deletePlacement(input: DeletePlacementInput) async throws -> DeletePlacementOutputResponse
    /// Deletes a project. To delete a project, it must not have any placements associated with it. When you delete a project, all associated data becomes irretrievable.
    func deleteProject(input: DeleteProjectInput) async throws -> DeleteProjectOutputResponse
    /// Describes a placement in a project.
    func describePlacement(input: DescribePlacementInput) async throws -> DescribePlacementOutputResponse
    /// Returns an object describing a project.
    func describeProject(input: DescribeProjectInput) async throws -> DescribeProjectOutputResponse
    /// Removes a physical device from a placement.
    func disassociateDeviceFromPlacement(input: DisassociateDeviceFromPlacementInput) async throws -> DisassociateDeviceFromPlacementOutputResponse
    /// Returns an object enumerating the devices in a placement.
    func getDevicesInPlacement(input: GetDevicesInPlacementInput) async throws -> GetDevicesInPlacementOutputResponse
    /// Lists the placement(s) of a project.
    func listPlacements(input: ListPlacementsInput) async throws -> ListPlacementsOutputResponse
    /// Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    func listProjects(input: ListProjectsInput) async throws -> ListProjectsOutputResponse
    /// Lists the tags (metadata key/value pairs) which you have assigned to the resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see [AWS Tagging Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags (metadata key/value pairs) from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
    func updatePlacement(input: UpdatePlacementInput) async throws -> UpdatePlacementOutputResponse
    /// Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
    func updateProject(input: UpdateProjectInput) async throws -> UpdateProjectOutputResponse
}

public protocol IoT1ClickProjectsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IoT1ClickProjectsClientTypes {}
