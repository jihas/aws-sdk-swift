// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime
import SmithyJSON
import SmithyReadWrite

extension SageMakerMetricsClientTypes.BatchPutMetricsError {

    static func read(from reader: SmithyJSON.Reader) throws -> SageMakerMetricsClientTypes.BatchPutMetricsError {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = SageMakerMetricsClientTypes.BatchPutMetricsError()
        value.code = try reader["Code"].readIfPresent()
        value.metricIndex = try reader["MetricIndex"].readIfPresent()
        return value
    }
}

extension SageMakerMetricsClientTypes {
    /// An error that occured when putting the metric data.
    public struct BatchPutMetricsError {
        /// The error code of an error that occured when attempting to put metrics.
        ///
        /// * METRIC_LIMIT_EXCEEDED: The maximum amount of metrics per resource is exceeded.
        ///
        /// * INTERNAL_ERROR: An internal error occured.
        ///
        /// * VALIDATION_ERROR: The metric data failed validation.
        ///
        /// * CONFLICT_ERROR: Multiple requests attempted to modify the same data simultaneously.
        public var code: SageMakerMetricsClientTypes.PutMetricsErrorCode?
        /// An index that corresponds to the metric in the request.
        public var metricIndex: Swift.Int?

        public init(
            code: SageMakerMetricsClientTypes.PutMetricsErrorCode? = nil,
            metricIndex: Swift.Int? = nil
        )
        {
            self.code = code
            self.metricIndex = metricIndex
        }
    }

}

extension BatchPutMetricsInput {

    static func urlPathProvider(_ value: BatchPutMetricsInput) -> Swift.String? {
        return "/BatchPutMetrics"
    }
}

extension BatchPutMetricsInput {

    static func write(value: BatchPutMetricsInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["MetricData"].writeList(value.metricData, memberWritingClosure: SageMakerMetricsClientTypes.RawMetricData.write(value:to:), memberNodeInfo: "member", isFlattened: false)
        try writer["TrialComponentName"].write(value.trialComponentName)
    }
}

public struct BatchPutMetricsInput {
    /// A list of raw metric values to put.
    /// This member is required.
    public var metricData: [SageMakerMetricsClientTypes.RawMetricData]?
    /// The name of the Trial Component to associate with the metrics.
    /// This member is required.
    public var trialComponentName: Swift.String?

    public init(
        metricData: [SageMakerMetricsClientTypes.RawMetricData]? = nil,
        trialComponentName: Swift.String? = nil
    )
    {
        self.metricData = metricData
        self.trialComponentName = trialComponentName
    }
}

extension BatchPutMetricsOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> BatchPutMetricsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = BatchPutMetricsOutput()
        value.errors = try reader["Errors"].readListIfPresent(memberReadingClosure: SageMakerMetricsClientTypes.BatchPutMetricsError.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

public struct BatchPutMetricsOutput {
    /// Lists any errors that occur when inserting metric data.
    public var errors: [SageMakerMetricsClientTypes.BatchPutMetricsError]?

    public init(
        errors: [SageMakerMetricsClientTypes.BatchPutMetricsError]? = nil
    )
    {
        self.errors = errors
    }
}

enum BatchPutMetricsOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension SageMakerMetricsClientTypes {

    public enum PutMetricsErrorCode: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case conflictError
        case internalError
        case metricLimitExceeded
        case validationError
        case sdkUnknown(Swift.String)

        public static var allCases: [PutMetricsErrorCode] {
            return [
                .conflictError,
                .internalError,
                .metricLimitExceeded,
                .validationError,
                .sdkUnknown("")
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .conflictError: return "CONFLICT_ERROR"
            case .internalError: return "INTERNAL_ERROR"
            case .metricLimitExceeded: return "METRIC_LIMIT_EXCEEDED"
            case .validationError: return "VALIDATION_ERROR"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension SageMakerMetricsClientTypes.RawMetricData {

    static func write(value: SageMakerMetricsClientTypes.RawMetricData?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["MetricName"].write(value.metricName)
        try writer["Step"].write(value.step)
        try writer["Timestamp"].writeTimestamp(value.timestamp, format: .epochSeconds)
        try writer["Value"].write(value.value)
    }
}

extension SageMakerMetricsClientTypes {
    /// The raw metric data to associate with the resource.
    public struct RawMetricData {
        /// The name of the metric.
        /// This member is required.
        public var metricName: Swift.String?
        /// The metric step (epoch).
        public var step: Swift.Int?
        /// The time that the metric was recorded.
        /// This member is required.
        public var timestamp: ClientRuntime.Date?
        /// The metric value.
        /// This member is required.
        public var value: Swift.Double?

        public init(
            metricName: Swift.String? = nil,
            step: Swift.Int? = nil,
            timestamp: ClientRuntime.Date? = nil,
            value: Swift.Double? = nil
        )
        {
            self.metricName = metricName
            self.step = step
            self.timestamp = timestamp
            self.value = value
        }
    }

}

public enum SageMakerMetricsClientTypes {}
