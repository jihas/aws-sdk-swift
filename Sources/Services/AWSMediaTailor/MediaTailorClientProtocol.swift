// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad insertion and linear channels. With MediaTailor, you can assemble existing content into a linear stream and serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the [AWS Elemental MediaTailor User Guide](https://docs.aws.amazon.com/mediatailor/latest/ug/). Through the SDKs and the CLI you manage AWS Elemental MediaTailor configurations and channels the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).
public protocol MediaTailorClientProtocol {
    /// Configures Amazon CloudWatch log settings for a channel.
    func configureLogsForChannel(input: ConfigureLogsForChannelInput) async throws -> ConfigureLogsForChannelOutputResponse
    /// Amazon CloudWatch log settings for a playback configuration.
    func configureLogsForPlaybackConfiguration(input: ConfigureLogsForPlaybackConfigurationInput) async throws -> ConfigureLogsForPlaybackConfigurationOutputResponse
    /// Creates a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    /// The live source configuration.
    func createLiveSource(input: CreateLiveSourceInput) async throws -> CreateLiveSourceOutputResponse
    /// Creates a prefetch schedule for a playback configuration. A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html) in the MediaTailor User Guide.
    func createPrefetchSchedule(input: CreatePrefetchScheduleInput) async throws -> CreatePrefetchScheduleOutputResponse
    /// Creates a program within a channel. For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html) in the MediaTailor User Guide.
    func createProgram(input: CreateProgramInput) async throws -> CreateProgramOutputResponse
    /// Creates a source location. A source location is a container for sources. For more information about source locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html) in the MediaTailor User Guide.
    func createSourceLocation(input: CreateSourceLocationInput) async throws -> CreateSourceLocationOutputResponse
    /// The VOD source configuration parameters.
    func createVodSource(input: CreateVodSourceInput) async throws -> CreateVodSourceOutputResponse
    /// Deletes a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    /// The channel policy to delete.
    func deleteChannelPolicy(input: DeleteChannelPolicyInput) async throws -> DeleteChannelPolicyOutputResponse
    /// The live source to delete.
    func deleteLiveSource(input: DeleteLiveSourceInput) async throws -> DeleteLiveSourceOutputResponse
    /// Deletes a playback configuration. For information about MediaTailor configurations, see [Working with configurations in AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
    func deletePlaybackConfiguration(input: DeletePlaybackConfigurationInput) async throws -> DeletePlaybackConfigurationOutputResponse
    /// Deletes a prefetch schedule for a specific playback configuration. If you call DeletePrefetchSchedule on an expired prefetch schedule, MediaTailor returns an HTTP 404 status code. For more information about ad prefetching, see [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html) in the MediaTailor User Guide.
    func deletePrefetchSchedule(input: DeletePrefetchScheduleInput) async throws -> DeletePrefetchScheduleOutputResponse
    /// Deletes a program within a channel. For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html) in the MediaTailor User Guide.
    func deleteProgram(input: DeleteProgramInput) async throws -> DeleteProgramOutputResponse
    /// Deletes a source location. A source location is a container for sources. For more information about source locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html) in the MediaTailor User Guide.
    func deleteSourceLocation(input: DeleteSourceLocationInput) async throws -> DeleteSourceLocationOutputResponse
    /// The video on demand (VOD) source to delete.
    func deleteVodSource(input: DeleteVodSourceInput) async throws -> DeleteVodSourceOutputResponse
    /// Describes a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    func describeChannel(input: DescribeChannelInput) async throws -> DescribeChannelOutputResponse
    /// The live source to describe.
    func describeLiveSource(input: DescribeLiveSourceInput) async throws -> DescribeLiveSourceOutputResponse
    /// Describes a program within a channel. For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html) in the MediaTailor User Guide.
    func describeProgram(input: DescribeProgramInput) async throws -> DescribeProgramOutputResponse
    /// Describes a source location. A source location is a container for sources. For more information about source locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html) in the MediaTailor User Guide.
    func describeSourceLocation(input: DescribeSourceLocationInput) async throws -> DescribeSourceLocationOutputResponse
    /// Provides details about a specific video on demand (VOD) source in a specific source location.
    func describeVodSource(input: DescribeVodSourceInput) async throws -> DescribeVodSourceOutputResponse
    /// Returns the channel's IAM policy. IAM policies are used to control access to your channel.
    func getChannelPolicy(input: GetChannelPolicyInput) async throws -> GetChannelPolicyOutputResponse
    /// Retrieves information about your channel's schedule.
    func getChannelSchedule(input: GetChannelScheduleInput) async throws -> GetChannelScheduleOutputResponse
    /// Retrieves a playback configuration. For information about MediaTailor configurations, see [Working with configurations in AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
    func getPlaybackConfiguration(input: GetPlaybackConfigurationInput) async throws -> GetPlaybackConfigurationOutputResponse
    /// Retrieves a prefetch schedule for a playback configuration. A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html) in the MediaTailor User Guide.
    func getPrefetchSchedule(input: GetPrefetchScheduleInput) async throws -> GetPrefetchScheduleOutputResponse
    /// Lists the alerts that are associated with a MediaTailor channel assembly resource.
    func listAlerts(input: ListAlertsInput) async throws -> ListAlertsOutputResponse
    /// Retrieves information about the channels that are associated with the current AWS account.
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    /// Lists the live sources contained in a source location. A source represents a piece of content.
    func listLiveSources(input: ListLiveSourcesInput) async throws -> ListLiveSourcesOutputResponse
    /// Retrieves existing playback configurations. For information about MediaTailor configurations, see [Working with Configurations in AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
    func listPlaybackConfigurations(input: ListPlaybackConfigurationsInput) async throws -> ListPlaybackConfigurationsOutputResponse
    /// Lists the prefetch schedules for a playback configuration.
    func listPrefetchSchedules(input: ListPrefetchSchedulesInput) async throws -> ListPrefetchSchedulesOutputResponse
    /// Lists the source locations for a channel. A source location defines the host server URL, and contains a list of sources.
    func listSourceLocations(input: ListSourceLocationsInput) async throws -> ListSourceLocationsOutputResponse
    /// A list of tags that are associated with this resource. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see [Tagging AWS Elemental MediaTailor Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Lists the VOD sources contained in a source location. A source represents a piece of content.
    func listVodSources(input: ListVodSourcesInput) async throws -> ListVodSourcesOutputResponse
    /// Creates an IAM policy for the channel. IAM policies are used to control access to your channel.
    func putChannelPolicy(input: PutChannelPolicyInput) async throws -> PutChannelPolicyOutputResponse
    /// Creates a playback configuration. For information about MediaTailor configurations, see [Working with configurations in AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
    func putPlaybackConfiguration(input: PutPlaybackConfigurationInput) async throws -> PutPlaybackConfigurationOutputResponse
    /// Starts a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    func startChannel(input: StartChannelInput) async throws -> StartChannelOutputResponse
    /// Stops a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    func stopChannel(input: StopChannelInput) async throws -> StopChannelOutputResponse
    /// The resource to tag. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see [Tagging AWS Elemental MediaTailor Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// The resource to untag.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
    /// Updates a live source's configuration.
    func updateLiveSource(input: UpdateLiveSourceInput) async throws -> UpdateLiveSourceOutputResponse
    /// Updates a program within a channel.
    func updateProgram(input: UpdateProgramInput) async throws -> UpdateProgramOutputResponse
    /// Updates a source location. A source location is a container for sources. For more information about source locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html) in the MediaTailor User Guide.
    func updateSourceLocation(input: UpdateSourceLocationInput) async throws -> UpdateSourceLocationOutputResponse
    /// Updates a VOD source's configuration.
    func updateVodSource(input: UpdateVodSourceInput) async throws -> UpdateVodSourceOutputResponse
}

public protocol MediaTailorClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MediaTailorClientTypes {}
