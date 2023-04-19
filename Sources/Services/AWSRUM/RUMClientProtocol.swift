// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// With Amazon CloudWatch RUM, you can perform real-user monitoring to collect client-side data about your web application performance from actual user sessions in real time. The data collected includes page load times, client-side errors, and user behavior. When you view this data, you can see it all aggregated together and also see breakdowns by the browsers and devices that your customers use. You can use the collected data to quickly identify and debug client-side performance issues. CloudWatch RUM helps you visualize anomalies in your application performance and find relevant debugging data such as error messages, stack traces, and user sessions. You can also use RUM to understand the range of end-user impact including the number of users, geolocations, and browsers used.
public protocol RUMClientProtocol {
    /// Specifies the extended metrics and custom metrics that you want a CloudWatch RUM app monitor to send to a destination. Valid destinations include CloudWatch and Evidently. By default, RUM app monitors send some metrics to CloudWatch. These default metrics are listed in [CloudWatch metrics that you can collect with CloudWatch RUM](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-metrics.html). In addition to these default metrics, you can choose to send extended metrics or custom metrics or both.
    ///
    /// * Extended metrics enable you to send metrics with additional dimensions not included in the default metrics. You can also send extended metrics to Evidently as well as CloudWatch. The valid dimension names for the additional dimensions for extended metrics are BrowserName, CountryCode, DeviceType, FileType, OSName, and PageId. For more information, see [ Extended metrics that you can send to CloudWatch and CloudWatch Evidently](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-vended-metrics.html).
    ///
    /// * Custom metrics are metrics that you define. You can send custom metrics to CloudWatch or to CloudWatch Evidently or to both. With custom metrics, you can use any metric name and namespace, and to derive the metrics you can use any custom events, built-in events, custom attributes, or default attributes. You can't send custom metrics to the AWS/RUM namespace. You must send custom metrics to a custom namespace that you define. The namespace that you use can't start with AWS/. CloudWatch RUM prepends RUM/CustomMetrics/ to the custom namespace that you define, so the final namespace for your metrics in CloudWatch is RUM/CustomMetrics/your-custom-namespace .
    ///
    ///
    /// The maximum number of metric definitions that you can specify in one BatchCreateRumMetricDefinitions operation is 200. The maximum number of metric definitions that one destination can contain is 2000. Extended metrics sent to CloudWatch and RUM custom metrics are charged as CloudWatch custom metrics. Each combination of additional dimension name and dimension value counts as a custom metric. For more information, see [Amazon CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/). You must have already created a destination for the metrics before you send them. For more information, see [PutRumMetricsDestination](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html). If some metric definitions specified in a BatchCreateRumMetricDefinitions operations are not valid, those metric definitions fail and return errors, but all valid metric definitions in the same operation still succeed.
    func batchCreateRumMetricDefinitions(input: BatchCreateRumMetricDefinitionsInput) async throws -> BatchCreateRumMetricDefinitionsOutputResponse
    /// Removes the specified metrics from being sent to an extended metrics destination. If some metric definition IDs specified in a BatchDeleteRumMetricDefinitions operations are not valid, those metric definitions fail and return errors, but all valid metric definition IDs in the same operation are still deleted. The maximum number of metric definitions that you can specify in one BatchDeleteRumMetricDefinitions operation is 200.
    func batchDeleteRumMetricDefinitions(input: BatchDeleteRumMetricDefinitionsInput) async throws -> BatchDeleteRumMetricDefinitionsOutputResponse
    /// Retrieves the list of metrics and dimensions that a RUM app monitor is sending to a single destination.
    func batchGetRumMetricDefinitions(input: BatchGetRumMetricDefinitionsInput) async throws -> BatchGetRumMetricDefinitionsOutputResponse
    /// Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your application and sends that data to RUM. The data includes performance and reliability information such as page load time, client-side errors, and user behavior. You use this operation only to create a new app monitor. To update an existing app monitor, use [UpdateAppMonitor](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html) instead. After you create an app monitor, sign in to the CloudWatch RUM console to get the JavaScript code snippet to add to your web application. For more information, see [How do I find a code snippet that I've already generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)
    func createAppMonitor(input: CreateAppMonitorInput) async throws -> CreateAppMonitorOutputResponse
    /// Deletes an existing app monitor. This immediately stops the collection of data.
    func deleteAppMonitor(input: DeleteAppMonitorInput) async throws -> DeleteAppMonitorOutputResponse
    /// Deletes a destination for CloudWatch RUM extended metrics, so that the specified app monitor stops sending extended metrics to that destination.
    func deleteRumMetricsDestination(input: DeleteRumMetricsDestinationInput) async throws -> DeleteRumMetricsDestinationOutputResponse
    /// Retrieves the complete configuration information for one app monitor.
    func getAppMonitor(input: GetAppMonitorInput) async throws -> GetAppMonitorOutputResponse
    /// Retrieves the raw performance events that RUM has collected from your web application, so that you can do your own processing or analysis of this data.
    func getAppMonitorData(input: GetAppMonitorDataInput) async throws -> GetAppMonitorDataOutputResponse
    /// Returns a list of the Amazon CloudWatch RUM app monitors in the account.
    func listAppMonitors(input: ListAppMonitorsInput) async throws -> ListAppMonitorsOutputResponse
    /// Returns a list of destinations that you have created to receive RUM extended metrics, for the specified app monitor. For more information about extended metrics, see [AddRumMetrics](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_AddRumMetrcs.html).
    func listRumMetricsDestinations(input: ListRumMetricsDestinationsInput) async throws -> ListRumMetricsDestinationsOutputResponse
    /// Displays the tags associated with a CloudWatch RUM resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Sends telemetry events about your application performance and user behavior to CloudWatch RUM. The code snippet that RUM generates for you to add to your application includes PutRumEvents operations to send this data to RUM. Each PutRumEvents operation can send a batch of events from one user session.
    func putRumEvents(input: PutRumEventsInput) async throws -> PutRumEventsOutputResponse
    /// Creates or updates a destination to receive extended metrics from CloudWatch RUM. You can send extended metrics to CloudWatch or to a CloudWatch Evidently experiment. For more information about extended metrics, see [BatchCreateRumMetricDefinitions](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricDefinitions.html).
    func putRumMetricsDestination(input: PutRumMetricsDestinationInput) async throws -> PutRumMetricsDestinationOutputResponse
    /// Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM resource. Currently, the only resources that can be tagged app monitors. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. For more information, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the configuration of an existing app monitor. When you use this operation, only the parts of the app monitor configuration that you specify in this operation are changed. For any parameters that you omit, the existing values are kept. You can't use this operation to change the tags of an existing app monitor. To change the tags of an existing app monitor, use [TagResource](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html). To create a new app monitor, use [CreateAppMonitor](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html). After you update an app monitor, sign in to the CloudWatch RUM console to get the updated JavaScript code snippet to add to your web application. For more information, see [How do I find a code snippet that I've already generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)
    func updateAppMonitor(input: UpdateAppMonitorInput) async throws -> UpdateAppMonitorOutputResponse
    /// Modifies one existing metric definition for CloudWatch RUM extended metrics. For more information about extended metrics, see [BatchCreateRumMetricsDefinitions](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricsDefinitions.html).
    func updateRumMetricDefinition(input: UpdateRumMetricDefinitionInput) async throws -> UpdateRumMetricDefinitionOutputResponse
}

public protocol RUMClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum RUMClientTypes {}
