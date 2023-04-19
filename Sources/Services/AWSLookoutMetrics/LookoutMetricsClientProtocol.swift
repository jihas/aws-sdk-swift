// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// This is the Amazon Lookout for Metrics API Reference. For an introduction to the service with tutorials for getting started, visit [Amazon Lookout for Metrics Developer Guide](https://docs.aws.amazon.com/lookoutmetrics/latest/dev).
public protocol LookoutMetricsClientProtocol {
    /// Activates an anomaly detector.
    func activateAnomalyDetector(input: ActivateAnomalyDetectorInput) async throws -> ActivateAnomalyDetectorOutputResponse
    /// Runs a backtest for anomaly detection for the specified resource.
    func backTestAnomalyDetector(input: BackTestAnomalyDetectorInput) async throws -> BackTestAnomalyDetectorOutputResponse
    /// Creates an alert for an anomaly detector.
    func createAlert(input: CreateAlertInput) async throws -> CreateAlertOutputResponse
    /// Creates an anomaly detector.
    func createAnomalyDetector(input: CreateAnomalyDetectorInput) async throws -> CreateAnomalyDetectorOutputResponse
    /// Creates a dataset.
    func createMetricSet(input: CreateMetricSetInput) async throws -> CreateMetricSetOutputResponse
    /// Deactivates an anomaly detector.
    func deactivateAnomalyDetector(input: DeactivateAnomalyDetectorInput) async throws -> DeactivateAnomalyDetectorOutputResponse
    /// Deletes an alert.
    func deleteAlert(input: DeleteAlertInput) async throws -> DeleteAlertOutputResponse
    /// Deletes a detector. Deleting an anomaly detector will delete all of its corresponding resources including any configured datasets and alerts.
    func deleteAnomalyDetector(input: DeleteAnomalyDetectorInput) async throws -> DeleteAnomalyDetectorOutputResponse
    /// Describes an alert. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    func describeAlert(input: DescribeAlertInput) async throws -> DescribeAlertOutputResponse
    /// Returns information about the status of the specified anomaly detection jobs.
    func describeAnomalyDetectionExecutions(input: DescribeAnomalyDetectionExecutionsInput) async throws -> DescribeAnomalyDetectionExecutionsOutputResponse
    /// Describes a detector. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    func describeAnomalyDetector(input: DescribeAnomalyDetectorInput) async throws -> DescribeAnomalyDetectorOutputResponse
    /// Describes a dataset. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    func describeMetricSet(input: DescribeMetricSetInput) async throws -> DescribeMetricSetOutputResponse
    /// Detects an Amazon S3 dataset's file format, interval, and offset.
    func detectMetricSetConfig(input: DetectMetricSetConfigInput) async throws -> DetectMetricSetConfigOutputResponse
    /// Returns details about a group of anomalous metrics.
    func getAnomalyGroup(input: GetAnomalyGroupInput) async throws -> GetAnomalyGroupOutputResponse
    /// Returns details about the requested data quality metrics.
    func getDataQualityMetrics(input: GetDataQualityMetricsInput) async throws -> GetDataQualityMetricsOutputResponse
    /// Get feedback for an anomaly group.
    func getFeedback(input: GetFeedbackInput) async throws -> GetFeedbackOutputResponse
    /// Returns a selection of sample records from an Amazon S3 datasource.
    func getSampleData(input: GetSampleDataInput) async throws -> GetSampleDataOutputResponse
    /// Lists the alerts attached to a detector. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    func listAlerts(input: ListAlertsInput) async throws -> ListAlertsOutputResponse
    /// Lists the detectors in the current AWS Region. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    func listAnomalyDetectors(input: ListAnomalyDetectorsInput) async throws -> ListAnomalyDetectorsOutputResponse
    /// Returns a list of measures that are potential causes or effects of an anomaly group.
    func listAnomalyGroupRelatedMetrics(input: ListAnomalyGroupRelatedMetricsInput) async throws -> ListAnomalyGroupRelatedMetricsOutputResponse
    /// Returns a list of anomaly groups.
    func listAnomalyGroupSummaries(input: ListAnomalyGroupSummariesInput) async throws -> ListAnomalyGroupSummariesOutputResponse
    /// Gets a list of anomalous metrics for a measure in an anomaly group.
    func listAnomalyGroupTimeSeries(input: ListAnomalyGroupTimeSeriesInput) async throws -> ListAnomalyGroupTimeSeriesOutputResponse
    /// Lists the datasets in the current AWS Region. Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource immediately after creating or modifying it, use retries to allow time for the write operation to complete.
    func listMetricSets(input: ListMetricSetsInput) async throws -> ListMetricSetsOutputResponse
    /// Gets a list of [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html) for a detector, dataset, or alert.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Add feedback for an anomalous metric.
    func putFeedback(input: PutFeedbackInput) async throws -> PutFeedbackOutputResponse
    /// Adds [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html) to a detector, dataset, or alert.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html) from a detector, dataset, or alert.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Make changes to an existing alert.
    func updateAlert(input: UpdateAlertInput) async throws -> UpdateAlertOutputResponse
    /// Updates a detector. After activation, you can only change a detector's ingestion delay and description.
    func updateAnomalyDetector(input: UpdateAnomalyDetectorInput) async throws -> UpdateAnomalyDetectorOutputResponse
    /// Updates a dataset.
    func updateMetricSet(input: UpdateMetricSetInput) async throws -> UpdateMetricSetOutputResponse
}

public protocol LookoutMetricsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum LookoutMetricsClientTypes {}
