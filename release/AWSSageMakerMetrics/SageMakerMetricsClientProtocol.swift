// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Contains all data plane API operations and data types for Amazon SageMaker Metrics. Use these APIs to put and retrieve (get) features related to your training run.
///
/// * [BatchPutMetrics](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_metrics_BatchPutMetrics.html)
public protocol SageMakerMetricsClientProtocol {
    /// Used to ingest training metrics into SageMaker. These metrics can be visualized in SageMaker Studio and retrieved with the GetMetrics API.
    func batchPutMetrics(input: BatchPutMetricsInput) async throws -> BatchPutMetricsOutputResponse
}

public protocol SageMakerMetricsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SageMakerMetricsClientTypes {}
