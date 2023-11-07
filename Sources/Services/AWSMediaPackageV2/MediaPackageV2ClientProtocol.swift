// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This guide is intended for creating AWS Elemental MediaPackage resources in MediaPackage Version 2 (v2) starting from May 2023. To get started with MediaPackage v2, create your MediaPackage resources. There isn't an automated process to migrate your resources from MediaPackage v1 to MediaPackage v2. The names of the entities that you use to access this API, like URLs and ARNs, all have the versioning information added, like "v2", to distinguish from the prior version. If you used MediaPackage prior to this release, you can't use the MediaPackage v2 CLI or the MediaPackage v2 API to access any MediaPackage v1 resources. If you created resources in MediaPackage v1, use video on demand (VOD) workflows, and aren't looking to migrate to MediaPackage v2 yet, see the [MediaPackage v1 Live API Reference](https://docs.aws.amazon.com/mediapackage/latest/apireference/what-is.html). This is the AWS Elemental MediaPackage v2 Live REST API Reference. It describes all the MediaPackage API operations for live content in detail, and provides sample requests, responses, and errors for the supported web services protocols. We assume that you have the IAM permissions that you need to use MediaPackage via the REST API. We also assume that you are familiar with the features and operations of MediaPackage, as described in the AWS Elemental MediaPackage User Guide.
public protocol MediaPackageV2ClientProtocol {
    /// Create a channel to start receiving content streams. The channel represents the input to MediaPackage for incoming live content from an encoder such as AWS Elemental MediaLive. The channel receives content, and after packaging it, outputs it through an origin endpoint to downstream devices (such as video players or CDNs) that request the content. You can create only one channel with each request. We recommend that you spread out channels between channel groups, such as putting redundant channels in the same AWS Region in different channel groups.
    ///
    /// - Parameter CreateChannelInput : [no documentation found]
    ///
    /// - Returns: `CreateChannelOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutput
    /// Create a channel group to group your channels and origin endpoints. A channel group is the top-level resource that consists of channels and origin endpoints that are associated with it and that provides predictable URLs for stream delivery. All channels and origin endpoints within the channel group are guaranteed to share the DNS. You can create only one channel group with each request.
    ///
    /// - Parameter CreateChannelGroupInput : [no documentation found]
    ///
    /// - Returns: `CreateChannelGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func createChannelGroup(input: CreateChannelGroupInput) async throws -> CreateChannelGroupOutput
    /// The endpoint is attached to a channel, and represents the output of the live content. You can associate multiple endpoints to a single channel. Each endpoint gives players and downstream CDNs (such as Amazon CloudFront) access to the content for playback. Content can't be served from a channel until it has an endpoint. You can create only one endpoint with each request.
    ///
    /// - Parameter CreateOriginEndpointInput : [no documentation found]
    ///
    /// - Returns: `CreateOriginEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func createOriginEndpoint(input: CreateOriginEndpointInput) async throws -> CreateOriginEndpointOutput
    /// Delete a channel to stop AWS Elemental MediaPackage from receiving further content. You must delete the channel's origin endpoints before you can delete the channel.
    ///
    /// - Parameter DeleteChannelInput : [no documentation found]
    ///
    /// - Returns: `DeleteChannelOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutput
    /// Delete a channel group. You must delete the channel group's channels and origin endpoints before you can delete the channel group. If you delete a channel group, you'll lose access to the egress domain and will have to create a new channel group to replace it.
    ///
    /// - Parameter DeleteChannelGroupInput : [no documentation found]
    ///
    /// - Returns: `DeleteChannelGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func deleteChannelGroup(input: DeleteChannelGroupInput) async throws -> DeleteChannelGroupOutput
    /// Delete a channel policy.
    ///
    /// - Parameter DeleteChannelPolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteChannelPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func deleteChannelPolicy(input: DeleteChannelPolicyInput) async throws -> DeleteChannelPolicyOutput
    /// Origin endpoints can serve content until they're deleted. Delete the endpoint if it should no longer respond to playback requests. You must delete all endpoints from a channel before you can delete the channel.
    ///
    /// - Parameter DeleteOriginEndpointInput : [no documentation found]
    ///
    /// - Returns: `DeleteOriginEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func deleteOriginEndpoint(input: DeleteOriginEndpointInput) async throws -> DeleteOriginEndpointOutput
    /// Delete an origin endpoint policy.
    ///
    /// - Parameter DeleteOriginEndpointPolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteOriginEndpointPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func deleteOriginEndpointPolicy(input: DeleteOriginEndpointPolicyInput) async throws -> DeleteOriginEndpointPolicyOutput
    /// Retrieves the specified channel that's configured in AWS Elemental MediaPackage, including the origin endpoints that are associated with it.
    ///
    /// - Parameter GetChannelInput : [no documentation found]
    ///
    /// - Returns: `GetChannelOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func getChannel(input: GetChannelInput) async throws -> GetChannelOutput
    /// Retrieves the specified channel group that's configured in AWS Elemental MediaPackage, including the channels and origin endpoints that are associated with it.
    ///
    /// - Parameter GetChannelGroupInput : [no documentation found]
    ///
    /// - Returns: `GetChannelGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func getChannelGroup(input: GetChannelGroupInput) async throws -> GetChannelGroupOutput
    /// Retrieves the specified channel policy that's configured in AWS Elemental MediaPackage. With policies, you can specify who has access to AWS resources and what actions they can perform on those resources.
    ///
    /// - Parameter GetChannelPolicyInput : [no documentation found]
    ///
    /// - Returns: `GetChannelPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func getChannelPolicy(input: GetChannelPolicyInput) async throws -> GetChannelPolicyOutput
    /// Retrieves the specified origin endpoint that's configured in AWS Elemental MediaPackage to obtain its playback URL and to view the packaging settings that it's currently using.
    ///
    /// - Parameter GetOriginEndpointInput : [no documentation found]
    ///
    /// - Returns: `GetOriginEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func getOriginEndpoint(input: GetOriginEndpointInput) async throws -> GetOriginEndpointOutput
    /// Retrieves the specified origin endpoint policy that's configured in AWS Elemental MediaPackage.
    ///
    /// - Parameter GetOriginEndpointPolicyInput : [no documentation found]
    ///
    /// - Returns: `GetOriginEndpointPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func getOriginEndpointPolicy(input: GetOriginEndpointPolicyInput) async throws -> GetOriginEndpointPolicyOutput
    /// Retrieves all channel groups that are configured in AWS Elemental MediaPackage, including the channels and origin endpoints that are associated with it.
    ///
    /// - Parameter ListChannelGroupsInput : [no documentation found]
    ///
    /// - Returns: `ListChannelGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func listChannelGroups(input: ListChannelGroupsInput) async throws -> ListChannelGroupsOutput
    /// Retrieves all channels in a specific channel group that are configured in AWS Elemental MediaPackage, including the origin endpoints that are associated with it.
    ///
    /// - Parameter ListChannelsInput : [no documentation found]
    ///
    /// - Returns: `ListChannelsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutput
    /// Retrieves all origin endpoints in a specific channel that are configured in AWS Elemental MediaPackage.
    ///
    /// - Parameter ListOriginEndpointsInput : [no documentation found]
    ///
    /// - Returns: `ListOriginEndpointsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func listOriginEndpoints(input: ListOriginEndpointsInput) async throws -> ListOriginEndpointsOutput
    /// Lists the tags assigned to a resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Attaches an IAM policy to the specified channel. With policies, you can specify who has access to AWS resources and what actions they can perform on those resources. You can attach only one policy with each request.
    ///
    /// - Parameter PutChannelPolicyInput : [no documentation found]
    ///
    /// - Returns: `PutChannelPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func putChannelPolicy(input: PutChannelPolicyInput) async throws -> PutChannelPolicyOutput
    /// Attaches an IAM policy to the specified origin endpoint. You can attach only one policy with each request.
    ///
    /// - Parameter PutOriginEndpointPolicyInput : [no documentation found]
    ///
    /// - Returns: `PutOriginEndpointPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func putOriginEndpointPolicy(input: PutOriginEndpointPolicyInput) async throws -> PutOriginEndpointPolicyOutput
    /// Assigns one of more tags (key-value pairs) to the specified MediaPackage resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes one or more tags from the specified resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Update the specified channel. You can edit if MediaPackage sends ingest or egress access logs to the CloudWatch log group, if content will be encrypted, the description on a channel, and your channel's policy settings. You can't edit the name of the channel or CloudFront distribution details. Any edits you make that impact the video output may not be reflected for a few minutes.
    ///
    /// - Parameter UpdateChannelInput : [no documentation found]
    ///
    /// - Returns: `UpdateChannelOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutput
    /// Update the specified channel group. You can edit the description on a channel group for easier identification later from the AWS Elemental MediaPackage console. You can't edit the name of the channel group. Any edits you make that impact the video output may not be reflected for a few minutes.
    ///
    /// - Parameter UpdateChannelGroupInput : [no documentation found]
    ///
    /// - Returns: `UpdateChannelGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func updateChannelGroup(input: UpdateChannelGroupInput) async throws -> UpdateChannelGroupOutput
    /// Update the specified origin endpoint. Edit the packaging preferences on an endpoint to optimize the viewing experience. You can't edit the name of the endpoint. Any edits you make that impact the video output may not be reflected for a few minutes.
    ///
    /// - Parameter UpdateOriginEndpointInput : [no documentation found]
    ///
    /// - Returns: `UpdateOriginEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : The request throughput limit was exceeded.
    /// - `ValidationException` : The input failed to meet the constraints specified by the AWS service.
    func updateOriginEndpoint(input: UpdateOriginEndpointInput) async throws -> UpdateOriginEndpointOutput
}

public enum MediaPackageV2ClientTypes {}
