// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// AWS Panorama Overview This is the AWS Panorama API Reference. For an introduction to the service, see [What is AWS Panorama?](https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html) in the AWS Panorama Developer Guide.
public protocol PanoramaClientProtocol {
    /// Creates an application instance and deploys it to a device.
    func createApplicationInstance(input: CreateApplicationInstanceInput) async throws -> CreateApplicationInstanceOutputResponse
    /// Creates a job to run on a device. A job can update a device's software or reboot it.
    func createJobForDevices(input: CreateJobForDevicesInput) async throws -> CreateJobForDevicesOutputResponse
    /// Creates a camera stream node.
    func createNodeFromTemplateJob(input: CreateNodeFromTemplateJobInput) async throws -> CreateNodeFromTemplateJobOutputResponse
    /// Creates a package and storage location in an Amazon S3 access point.
    func createPackage(input: CreatePackageInput) async throws -> CreatePackageOutputResponse
    /// Imports a node package.
    func createPackageImportJob(input: CreatePackageImportJobInput) async throws -> CreatePackageImportJobOutputResponse
    /// Deletes a device.
    func deleteDevice(input: DeleteDeviceInput) async throws -> DeleteDeviceOutputResponse
    /// Deletes a package. To delete a package, you need permission to call s3:DeleteObject in addition to permissions for the AWS Panorama API.
    func deletePackage(input: DeletePackageInput) async throws -> DeletePackageOutputResponse
    /// Deregisters a package version.
    func deregisterPackageVersion(input: DeregisterPackageVersionInput) async throws -> DeregisterPackageVersionOutputResponse
    /// Returns information about an application instance on a device.
    func describeApplicationInstance(input: DescribeApplicationInstanceInput) async throws -> DescribeApplicationInstanceOutputResponse
    /// Returns information about an application instance's configuration manifest.
    func describeApplicationInstanceDetails(input: DescribeApplicationInstanceDetailsInput) async throws -> DescribeApplicationInstanceDetailsOutputResponse
    /// Returns information about a device.
    func describeDevice(input: DescribeDeviceInput) async throws -> DescribeDeviceOutputResponse
    /// Returns information about a device job.
    func describeDeviceJob(input: DescribeDeviceJobInput) async throws -> DescribeDeviceJobOutputResponse
    /// Returns information about a node.
    func describeNode(input: DescribeNodeInput) async throws -> DescribeNodeOutputResponse
    /// Returns information about a job to create a camera stream node.
    func describeNodeFromTemplateJob(input: DescribeNodeFromTemplateJobInput) async throws -> DescribeNodeFromTemplateJobOutputResponse
    /// Returns information about a package.
    func describePackage(input: DescribePackageInput) async throws -> DescribePackageOutputResponse
    /// Returns information about a package import job.
    func describePackageImportJob(input: DescribePackageImportJobInput) async throws -> DescribePackageImportJobOutputResponse
    /// Returns information about a package version.
    func describePackageVersion(input: DescribePackageVersionInput) async throws -> DescribePackageVersionOutputResponse
    /// Returns a list of application instance dependencies.
    func listApplicationInstanceDependencies(input: ListApplicationInstanceDependenciesInput) async throws -> ListApplicationInstanceDependenciesOutputResponse
    /// Returns a list of application node instances.
    func listApplicationInstanceNodeInstances(input: ListApplicationInstanceNodeInstancesInput) async throws -> ListApplicationInstanceNodeInstancesOutputResponse
    /// Returns a list of application instances.
    func listApplicationInstances(input: ListApplicationInstancesInput) async throws -> ListApplicationInstancesOutputResponse
    /// Returns a list of devices.
    func listDevices(input: ListDevicesInput) async throws -> ListDevicesOutputResponse
    /// Returns a list of jobs.
    func listDevicesJobs(input: ListDevicesJobsInput) async throws -> ListDevicesJobsOutputResponse
    /// Returns a list of camera stream node jobs.
    func listNodeFromTemplateJobs(input: ListNodeFromTemplateJobsInput) async throws -> ListNodeFromTemplateJobsOutputResponse
    /// Returns a list of nodes.
    func listNodes(input: ListNodesInput) async throws -> ListNodesOutputResponse
    /// Returns a list of package import jobs.
    func listPackageImportJobs(input: ListPackageImportJobsInput) async throws -> ListPackageImportJobsOutputResponse
    /// Returns a list of packages.
    func listPackages(input: ListPackagesInput) async throws -> ListPackagesOutputResponse
    /// Returns a list of tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a provisioning certificate that is valid for 5 minutes. Name the configuration archive certificates-omni_device-name.zip and transfer it to the device within 5 minutes. Use the included USB storage device and connect it to the USB 3.0 port next to the HDMI output.
    func provisionDevice(input: ProvisionDeviceInput) async throws -> ProvisionDeviceOutputResponse
    /// Registers a package version.
    func registerPackageVersion(input: RegisterPackageVersionInput) async throws -> RegisterPackageVersionOutputResponse
    /// Removes an application instance.
    func removeApplicationInstance(input: RemoveApplicationInstanceInput) async throws -> RemoveApplicationInstanceOutputResponse
    /// Signal camera nodes to stop or resume.
    func signalApplicationInstanceNodeInstances(input: SignalApplicationInstanceNodeInstancesInput) async throws -> SignalApplicationInstanceNodeInstancesOutputResponse
    /// Tags a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a device's metadata.
    func updateDeviceMetadata(input: UpdateDeviceMetadataInput) async throws -> UpdateDeviceMetadataOutputResponse
}

public protocol PanoramaClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum PanoramaClientTypes {}
