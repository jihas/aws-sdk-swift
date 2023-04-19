// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// EC2 Image Builder is a fully managed Amazon Web Services service that makes it easier to automate the creation, management, and deployment of customized, secure, and up-to-date "golden" server images that are pre-installed and pre-configured with software and settings to meet specific IT standards.
public protocol ImagebuilderClientProtocol {
    /// CancelImageCreation cancels the creation of Image. This operation can only be used on images in a non-terminal state.
    func cancelImageCreation(input: CancelImageCreationInput) async throws -> CancelImageCreationOutputResponse
    /// Creates a new component that can be used to build, validate, test, and assess your image. The component is based on a YAML document that you specify using exactly one of the following methods:
    ///
    /// * Inline, using the data property in the request body.
    ///
    /// * A URL that points to a YAML document file stored in Amazon S3, using the uri property in the request body.
    func createComponent(input: CreateComponentInput) async throws -> CreateComponentOutputResponse
    /// Creates a new container recipe. Container recipes define how images are configured, tested, and assessed.
    func createContainerRecipe(input: CreateContainerRecipeInput) async throws -> CreateContainerRecipeOutputResponse
    /// Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline.
    func createDistributionConfiguration(input: CreateDistributionConfigurationInput) async throws -> CreateDistributionConfigurationOutputResponse
    /// Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. You must specify exactly one recipe for your image, using either a ContainerRecipeArn or an ImageRecipeArn.
    func createImage(input: CreateImageInput) async throws -> CreateImageOutputResponse
    /// Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images.
    func createImagePipeline(input: CreateImagePipelineInput) async throws -> CreateImagePipelineOutputResponse
    /// Creates a new image recipe. Image recipes define how images are configured, tested, and assessed.
    func createImageRecipe(input: CreateImageRecipeInput) async throws -> CreateImageRecipeOutputResponse
    /// Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested.
    func createInfrastructureConfiguration(input: CreateInfrastructureConfigurationInput) async throws -> CreateInfrastructureConfigurationOutputResponse
    /// Deletes a component build version.
    func deleteComponent(input: DeleteComponentInput) async throws -> DeleteComponentOutputResponse
    /// Deletes a container recipe.
    func deleteContainerRecipe(input: DeleteContainerRecipeInput) async throws -> DeleteContainerRecipeOutputResponse
    /// Deletes a distribution configuration.
    func deleteDistributionConfiguration(input: DeleteDistributionConfigurationInput) async throws -> DeleteDistributionConfigurationOutputResponse
    /// Deletes an Image Builder image resource. This does not delete any EC2 AMIs or ECR container images that are created during the image build process. You must clean those up separately, using the appropriate Amazon EC2 or Amazon ECR console actions, or API or CLI commands.
    ///
    /// * To deregister an EC2 Linux AMI, see [Deregister your Linux AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html) in the Amazon EC2 User Guide .
    ///
    /// * To deregister an EC2 Windows AMI, see [Deregister your Windows AMI](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html) in the Amazon EC2 Windows Guide .
    ///
    /// * To delete a container image from Amazon ECR, see [Deleting an image](https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html) in the Amazon ECR User Guide.
    func deleteImage(input: DeleteImageInput) async throws -> DeleteImageOutputResponse
    /// Deletes an image pipeline.
    func deleteImagePipeline(input: DeleteImagePipelineInput) async throws -> DeleteImagePipelineOutputResponse
    /// Deletes an image recipe.
    func deleteImageRecipe(input: DeleteImageRecipeInput) async throws -> DeleteImageRecipeOutputResponse
    /// Deletes an infrastructure configuration.
    func deleteInfrastructureConfiguration(input: DeleteInfrastructureConfigurationInput) async throws -> DeleteInfrastructureConfigurationOutputResponse
    /// Gets a component object.
    func getComponent(input: GetComponentInput) async throws -> GetComponentOutputResponse
    /// Gets a component policy.
    func getComponentPolicy(input: GetComponentPolicyInput) async throws -> GetComponentPolicyOutputResponse
    /// Retrieves a container recipe.
    func getContainerRecipe(input: GetContainerRecipeInput) async throws -> GetContainerRecipeOutputResponse
    /// Retrieves the policy for a container recipe.
    func getContainerRecipePolicy(input: GetContainerRecipePolicyInput) async throws -> GetContainerRecipePolicyOutputResponse
    /// Gets a distribution configuration.
    func getDistributionConfiguration(input: GetDistributionConfigurationInput) async throws -> GetDistributionConfigurationOutputResponse
    /// Gets an image.
    func getImage(input: GetImageInput) async throws -> GetImageOutputResponse
    /// Gets an image pipeline.
    func getImagePipeline(input: GetImagePipelineInput) async throws -> GetImagePipelineOutputResponse
    /// Gets an image policy.
    func getImagePolicy(input: GetImagePolicyInput) async throws -> GetImagePolicyOutputResponse
    /// Gets an image recipe.
    func getImageRecipe(input: GetImageRecipeInput) async throws -> GetImageRecipeOutputResponse
    /// Gets an image recipe policy.
    func getImageRecipePolicy(input: GetImageRecipePolicyInput) async throws -> GetImageRecipePolicyOutputResponse
    /// Gets an infrastructure configuration.
    func getInfrastructureConfiguration(input: GetInfrastructureConfigurationInput) async throws -> GetInfrastructureConfigurationOutputResponse
    /// Get the runtime information that was logged for a specific runtime instance of the workflow.
    func getWorkflowExecution(input: GetWorkflowExecutionInput) async throws -> GetWorkflowExecutionOutputResponse
    /// Get the runtime information that was logged for a specific runtime instance of the workflow step.
    func getWorkflowStepExecution(input: GetWorkflowStepExecutionInput) async throws -> GetWorkflowStepExecutionOutputResponse
    /// Imports a component and transforms its data into a component document.
    func importComponent(input: ImportComponentInput) async throws -> ImportComponentOutputResponse
    /// When you export your virtual machine (VM) from its virtualization environment, that process creates a set of one or more disk container files that act as snapshots of your VM’s environment, settings, and data. The Amazon EC2 API [ImportImage](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html) action uses those files to import your VM and create an AMI. To import using the CLI command, see [import-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html) You can reference the task ID from the VM import to pull in the AMI that the import created as the base image for your Image Builder recipe.
    func importVmImage(input: ImportVmImageInput) async throws -> ImportVmImageOutputResponse
    /// Returns the list of component build versions for the specified semantic version. The semantic version has four nodes: ../. You can assign values for the first three, and can filter on all of them. Filtering: With semantic versioning, you have the flexibility to use wildcards (x) to specify the most recent versions or nodes when selecting the base image or components for your recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be wildcards.
    func listComponentBuildVersions(input: ListComponentBuildVersionsInput) async throws -> ListComponentBuildVersionsOutputResponse
    /// Returns the list of components that can be filtered by name, or by using the listed filters to streamline results. Newly created components can take up to two minutes to appear in the ListComponents API Results. The semantic version has four nodes: ../. You can assign values for the first three, and can filter on all of them. Filtering: With semantic versioning, you have the flexibility to use wildcards (x) to specify the most recent versions or nodes when selecting the base image or components for your recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be wildcards.
    func listComponents(input: ListComponentsInput) async throws -> ListComponentsOutputResponse
    /// Returns a list of container recipes.
    func listContainerRecipes(input: ListContainerRecipesInput) async throws -> ListContainerRecipesOutputResponse
    /// Returns a list of distribution configurations.
    func listDistributionConfigurations(input: ListDistributionConfigurationsInput) async throws -> ListDistributionConfigurationsOutputResponse
    /// Returns a list of image build versions.
    func listImageBuildVersions(input: ListImageBuildVersionsInput) async throws -> ListImageBuildVersionsOutputResponse
    /// List the Packages that are associated with an Image Build Version, as determined by Amazon Web Services Systems Manager Inventory at build time.
    func listImagePackages(input: ListImagePackagesInput) async throws -> ListImagePackagesOutputResponse
    /// Returns a list of images created by the specified pipeline.
    func listImagePipelineImages(input: ListImagePipelineImagesInput) async throws -> ListImagePipelineImagesOutputResponse
    /// Returns a list of image pipelines.
    func listImagePipelines(input: ListImagePipelinesInput) async throws -> ListImagePipelinesOutputResponse
    /// Returns a list of image recipes.
    func listImageRecipes(input: ListImageRecipesInput) async throws -> ListImageRecipesOutputResponse
    /// Returns the list of images that you have access to. Newly created images can take up to two minutes to appear in the ListImages API Results.
    func listImages(input: ListImagesInput) async throws -> ListImagesOutputResponse
    /// Returns a list of image scan aggregations for your account. You can filter by the type of key that Image Builder uses to group results. For example, if you want to get a list of findings by severity level for one of your pipelines, you might specify your pipeline with the imagePipelineArn filter. If you don't specify a filter, Image Builder returns an aggregation for your account. To streamline results, you can use the following filters in your request:
    ///
    /// * accountId
    ///
    /// * imageBuildVersionArn
    ///
    /// * imagePipelineArn
    ///
    /// * vulnerabilityId
    func listImageScanFindingAggregations(input: ListImageScanFindingAggregationsInput) async throws -> ListImageScanFindingAggregationsOutputResponse
    /// Returns a list of image scan findings for your account.
    func listImageScanFindings(input: ListImageScanFindingsInput) async throws -> ListImageScanFindingsOutputResponse
    /// Returns a list of infrastructure configurations.
    func listInfrastructureConfigurations(input: ListInfrastructureConfigurationsInput) async throws -> ListInfrastructureConfigurationsOutputResponse
    /// Returns the list of tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Returns a list of workflow runtime instance metadata objects for a specific image build version.
    func listWorkflowExecutions(input: ListWorkflowExecutionsInput) async throws -> ListWorkflowExecutionsOutputResponse
    /// Shows runtime data for each step in a runtime instance of the workflow that you specify in the request.
    func listWorkflowStepExecutions(input: ListWorkflowStepExecutionsInput) async throws -> ListWorkflowStepExecutionsOutputResponse
    /// Applies a policy to a component. We recommend that you call the RAM API [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API PutComponentPolicy, you must also call the RAM API [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html) in order for the resource to be visible to all principals with whom the resource is shared.
    func putComponentPolicy(input: PutComponentPolicyInput) async throws -> PutComponentPolicyOutputResponse
    /// Applies a policy to a container image. We recommend that you call the RAM API CreateResourceShare (https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API PutContainerImagePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy (https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html) in order for the resource to be visible to all principals with whom the resource is shared.
    func putContainerRecipePolicy(input: PutContainerRecipePolicyInput) async throws -> PutContainerRecipePolicyOutputResponse
    /// Applies a policy to an image. We recommend that you call the RAM API [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API PutImagePolicy, you must also call the RAM API [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html) in order for the resource to be visible to all principals with whom the resource is shared.
    func putImagePolicy(input: PutImagePolicyInput) async throws -> PutImagePolicyOutputResponse
    /// Applies a policy to an image recipe. We recommend that you call the RAM API [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API PutImageRecipePolicy, you must also call the RAM API [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html) in order for the resource to be visible to all principals with whom the resource is shared.
    func putImageRecipePolicy(input: PutImageRecipePolicyInput) async throws -> PutImageRecipePolicyOutputResponse
    /// Manually triggers a pipeline to create an image.
    func startImagePipelineExecution(input: StartImagePipelineExecutionInput) async throws -> StartImagePipelineExecutionOutputResponse
    /// Adds a tag to a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline.
    func updateDistributionConfiguration(input: UpdateDistributionConfigurationInput) async throws -> UpdateDistributionConfigurationOutputResponse
    /// Updates an image pipeline. Image pipelines enable you to automate the creation and distribution of images. UpdateImagePipeline does not support selective updates for the pipeline. You must specify all of the required properties in the update request, not just the properties that have changed.
    func updateImagePipeline(input: UpdateImagePipelineInput) async throws -> UpdateImagePipelineOutputResponse
    /// Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested.
    func updateInfrastructureConfiguration(input: UpdateInfrastructureConfigurationInput) async throws -> UpdateInfrastructureConfigurationOutputResponse
}

public protocol ImagebuilderClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ImagebuilderClientTypes {}
