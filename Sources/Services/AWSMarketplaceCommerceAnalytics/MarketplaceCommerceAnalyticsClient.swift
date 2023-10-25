// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MarketplaceCommerceAnalyticsClient {
    public static let clientName = "MarketplaceCommerceAnalyticsClient"
    let client: ClientRuntime.SdkHttpClient
    let config: MarketplaceCommerceAnalyticsClient.MarketplaceCommerceAnalyticsClientConfiguration
    let serviceName = "Marketplace Commerce Analytics"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: MarketplaceCommerceAnalyticsClient.MarketplaceCommerceAnalyticsClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try MarketplaceCommerceAnalyticsClient.MarketplaceCommerceAnalyticsClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await MarketplaceCommerceAnalyticsClient.MarketplaceCommerceAnalyticsClientConfiguration()
        self.init(config: config)
    }
}

extension MarketplaceCommerceAnalyticsClient {
    public typealias MarketplaceCommerceAnalyticsClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Marketplace Commerce Analytics" }
        public var clientName: String { "MarketplaceCommerceAnalyticsClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct MarketplaceCommerceAnalyticsClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MarketplaceCommerceAnalyticsClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension MarketplaceCommerceAnalyticsClient: MarketplaceCommerceAnalyticsClientProtocol {
    /// Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    ///
    /// - Parameter GenerateDataSetInput : Container for the parameters to the GenerateDataSet operation.
    ///
    /// - Returns: `GenerateDataSetOutput` : Container for the result of the GenerateDataSet operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `MarketplaceCommerceAnalyticsException` : This exception is thrown when an internal service error occurs.
    public func generateDataSet(input: GenerateDataSetInput) async throws -> GenerateDataSetOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "generateDataSet")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "marketplacecommerceanalytics")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GenerateDataSetInput, GenerateDataSetOutput, GenerateDataSetOutputError>(id: "generateDataSet")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GenerateDataSetInput, GenerateDataSetOutput, GenerateDataSetOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GenerateDataSetInput, GenerateDataSetOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GenerateDataSetOutput, GenerateDataSetOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GenerateDataSetInput, GenerateDataSetOutput>(xAmzTarget: "MarketplaceCommerceAnalytics20150701.GenerateDataSet"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GenerateDataSetInput, GenerateDataSetOutput>(xmlName: "GenerateDataSetRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GenerateDataSetInput, GenerateDataSetOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GenerateDataSetOutput, GenerateDataSetOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GenerateDataSetOutput, GenerateDataSetOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GenerateDataSetOutput, GenerateDataSetOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GenerateDataSetOutput, GenerateDataSetOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// This target has been deprecated. Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    @available(*, deprecated, message: "This target has been deprecated. As of December 2022 Product Support Connection is no longer supported.")
    ///
    /// - Parameter StartSupportDataExportInput : This target has been deprecated. Container for the parameters to the StartSupportDataExport operation.
    ///
    /// - Returns: `StartSupportDataExportOutput` : This target has been deprecated. Container for the result of the StartSupportDataExport operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `MarketplaceCommerceAnalyticsException` : This exception is thrown when an internal service error occurs.
    public func startSupportDataExport(input: StartSupportDataExportInput) async throws -> StartSupportDataExportOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startSupportDataExport")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "marketplacecommerceanalytics")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StartSupportDataExportInput, StartSupportDataExportOutput, StartSupportDataExportOutputError>(id: "startSupportDataExport")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartSupportDataExportInput, StartSupportDataExportOutput, StartSupportDataExportOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartSupportDataExportInput, StartSupportDataExportOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartSupportDataExportOutput, StartSupportDataExportOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<StartSupportDataExportInput, StartSupportDataExportOutput>(xAmzTarget: "MarketplaceCommerceAnalytics20150701.StartSupportDataExport"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StartSupportDataExportInput, StartSupportDataExportOutput>(xmlName: "StartSupportDataExportRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartSupportDataExportInput, StartSupportDataExportOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartSupportDataExportOutput, StartSupportDataExportOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StartSupportDataExportOutput, StartSupportDataExportOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartSupportDataExportOutput, StartSupportDataExportOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartSupportDataExportOutput, StartSupportDataExportOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
