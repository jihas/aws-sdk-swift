// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime
import SmithyJSON
import SmithyReadWrite

public enum AppConfigDataClientTypes {}

extension AppConfigDataClientTypes.BadRequestDetails {

    static func read(from reader: SmithyJSON.Reader) throws -> AppConfigDataClientTypes.BadRequestDetails {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        let name = reader.children.filter { $0.hasContent && $0.nodeInfo.name != "__type" }.first?.nodeInfo.name
        switch name {
            case "InvalidParameters":
                return .invalidparameters(try reader["InvalidParameters"].readMap(valueReadingClosure: AppConfigDataClientTypes.InvalidParameterDetail.read(from:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false))
            default:
                return .sdkUnknown(name ?? "")
        }
    }
}

extension AppConfigDataClientTypes {
    /// Detailed information about the input that failed to satisfy the constraints specified by a call.
    public enum BadRequestDetails {
        /// One or more specified parameters are not valid for the call.
        case invalidparameters([Swift.String:AppConfigDataClientTypes.InvalidParameterDetail])
        case sdkUnknown(Swift.String)
    }

}

extension BadRequestException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> BadRequestException {
        let reader = baseError.errorBodyReader
        var value = BadRequestException()
        value.properties.details = try reader["Details"].readIfPresent(with: AppConfigDataClientTypes.BadRequestDetails.read(from:))
        value.properties.message = try reader["Message"].readIfPresent()
        value.properties.reason = try reader["Reason"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The input fails to satisfy the constraints specified by the service.
public struct BadRequestException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// Details describing why the request was invalid.
        public internal(set) var details: AppConfigDataClientTypes.BadRequestDetails? = nil
        public internal(set) var message: Swift.String? = nil
        /// Code indicating the reason the request was invalid.
        public internal(set) var reason: AppConfigDataClientTypes.BadRequestReason? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "BadRequestException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        details: AppConfigDataClientTypes.BadRequestDetails? = nil,
        message: Swift.String? = nil,
        reason: AppConfigDataClientTypes.BadRequestReason? = nil
    )
    {
        self.properties.details = details
        self.properties.message = message
        self.properties.reason = reason
    }
}

extension AppConfigDataClientTypes {

    public enum BadRequestReason: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        /// Indicates there was a problem with one or more of the parameters. See InvalidParameters in the BadRequestDetails for more information.
        case invalidParameters
        case sdkUnknown(Swift.String)

        public static var allCases: [BadRequestReason] {
            return [
                .invalidParameters,
                .sdkUnknown("")
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .invalidParameters: return "InvalidParameters"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension GetLatestConfigurationInput {

    static func queryItemProvider(_ value: GetLatestConfigurationInput) throws -> [ClientRuntime.SDKURLQueryItem] {
        var items = [ClientRuntime.SDKURLQueryItem]()
        guard let configurationToken = value.configurationToken else {
            let message = "Creating a URL Query Item failed. configurationToken is required and must not be nil."
            throw ClientRuntime.ClientError.unknownError(message)
        }
        let configurationTokenQueryItem = ClientRuntime.SDKURLQueryItem(name: "configuration_token".urlPercentEncoding(), value: Swift.String(configurationToken).urlPercentEncoding())
        items.append(configurationTokenQueryItem)
        return items
    }
}

extension GetLatestConfigurationInput {

    static func urlPathProvider(_ value: GetLatestConfigurationInput) -> Swift.String? {
        return "/configuration"
    }
}

public struct GetLatestConfigurationInput {
    /// Token describing the current state of the configuration session. To obtain a token, first call the [StartConfigurationSession] API. Note that every call to GetLatestConfiguration will return a new ConfigurationToken (NextPollConfigurationToken in the response) and must be provided to subsequent GetLatestConfiguration API calls. This token should only be used once. To support long poll use cases, the token is valid for up to 24 hours. If a GetLatestConfiguration call uses an expired token, the system returns BadRequestException.
    /// This member is required.
    public var configurationToken: Swift.String?

    public init(
        configurationToken: Swift.String? = nil
    )
    {
        self.configurationToken = configurationToken
    }
}

extension GetLatestConfigurationOutput: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "GetLatestConfigurationOutput(contentType: \(Swift.String(describing: contentType)), nextPollConfigurationToken: \(Swift.String(describing: nextPollConfigurationToken)), nextPollIntervalInSeconds: \(Swift.String(describing: nextPollIntervalInSeconds)), versionLabel: \(Swift.String(describing: versionLabel)), configuration: \"CONTENT_REDACTED\")"}
}

extension GetLatestConfigurationOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> GetLatestConfigurationOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetLatestConfigurationOutput()
        if let contentTypeHeaderValue = httpResponse.headers.value(for: "Content-Type") {
            value.contentType = contentTypeHeaderValue
        }
        if let nextPollConfigurationTokenHeaderValue = httpResponse.headers.value(for: "Next-Poll-Configuration-Token") {
            value.nextPollConfigurationToken = nextPollConfigurationTokenHeaderValue
        }
        if let nextPollIntervalInSecondsHeaderValue = httpResponse.headers.value(for: "Next-Poll-Interval-In-Seconds") {
            value.nextPollIntervalInSeconds = Swift.Int(nextPollIntervalInSecondsHeaderValue) ?? 0
        }
        if let versionLabelHeaderValue = httpResponse.headers.value(for: "Version-Label") {
            value.versionLabel = versionLabelHeaderValue
        }
        switch httpResponse.body {
        case .data(let data):
            value.configuration = data
        case .stream(let stream):
            value.configuration = try stream.readToEnd()
        case .noStream:
            value.configuration = nil
        }
        return value
    }
}

public struct GetLatestConfigurationOutput {
    /// The data of the configuration. This may be empty if the client already has the latest version of configuration.
    public var configuration: ClientRuntime.Data?
    /// A standard MIME type describing the format of the configuration content.
    public var contentType: Swift.String?
    /// The latest token describing the current state of the configuration session. This must be provided to the next call to GetLatestConfiguration. This token should only be used once. To support long poll use cases, the token is valid for up to 24 hours. If a GetLatestConfiguration call uses an expired token, the system returns BadRequestException.
    public var nextPollConfigurationToken: Swift.String?
    /// The amount of time the client should wait before polling for configuration updates again. Use RequiredMinimumPollIntervalInSeconds to set the desired poll interval.
    public var nextPollIntervalInSeconds: Swift.Int
    /// The user-defined label for the AppConfig hosted configuration version. This attribute doesn't apply if the configuration is not from an AppConfig hosted configuration version. If the client already has the latest version of the configuration data, this value is empty.
    public var versionLabel: Swift.String?

    public init(
        configuration: ClientRuntime.Data? = nil,
        contentType: Swift.String? = nil,
        nextPollConfigurationToken: Swift.String? = nil,
        nextPollIntervalInSeconds: Swift.Int = 0,
        versionLabel: Swift.String? = nil
    )
    {
        self.configuration = configuration
        self.contentType = contentType
        self.nextPollConfigurationToken = nextPollConfigurationToken
        self.nextPollIntervalInSeconds = nextPollIntervalInSeconds
        self.versionLabel = versionLabel
    }
}

enum GetLatestConfigurationOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "BadRequestException": return try BadRequestException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension InternalServerException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InternalServerException {
        let reader = baseError.errorBodyReader
        var value = InternalServerException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// There was an internal failure in the service.
public struct InternalServerException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerException" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

extension AppConfigDataClientTypes.InvalidParameterDetail {

    static func read(from reader: SmithyJSON.Reader) throws -> AppConfigDataClientTypes.InvalidParameterDetail {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = AppConfigDataClientTypes.InvalidParameterDetail()
        value.problem = try reader["Problem"].readIfPresent()
        return value
    }
}

extension AppConfigDataClientTypes {
    /// Information about an invalid parameter.
    public struct InvalidParameterDetail {
        /// The reason the parameter is invalid.
        public var problem: AppConfigDataClientTypes.InvalidParameterProblem?

        public init(
            problem: AppConfigDataClientTypes.InvalidParameterProblem? = nil
        )
        {
            self.problem = problem
        }
    }

}

extension AppConfigDataClientTypes {

    public enum InvalidParameterProblem: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        /// The parameter was corrupted and could not be understood by the service.
        case corrupted
        /// The parameter was expired and can no longer be used.
        case expired
        /// The client called the service before the time specified in the poll interval.
        case pollIntervalNotSatisfied
        case sdkUnknown(Swift.String)

        public static var allCases: [InvalidParameterProblem] {
            return [
                .corrupted,
                .expired,
                .pollIntervalNotSatisfied,
                .sdkUnknown("")
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .corrupted: return "Corrupted"
            case .expired: return "Expired"
            case .pollIntervalNotSatisfied: return "PollIntervalNotSatisfied"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension ResourceNotFoundException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ResourceNotFoundException {
        let reader = baseError.errorBodyReader
        var value = ResourceNotFoundException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.properties.referencedBy = try reader["ReferencedBy"].readMapIfPresent(valueReadingClosure: Swift.String.read(from:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        value.properties.resourceType = try reader["ResourceType"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The requested resource could not be found.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
        /// A map indicating which parameters in the request reference the resource that was not found.
        public internal(set) var referencedBy: [Swift.String:Swift.String]? = nil
        /// The type of resource that was not found.
        public internal(set) var resourceType: AppConfigDataClientTypes.ResourceType? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil,
        referencedBy: [Swift.String:Swift.String]? = nil,
        resourceType: AppConfigDataClientTypes.ResourceType? = nil
    )
    {
        self.properties.message = message
        self.properties.referencedBy = referencedBy
        self.properties.resourceType = resourceType
    }
}

extension AppConfigDataClientTypes {

    public enum ResourceType: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        /// Resource type value for the Application resource.
        case application
        /// Resource type value for the Configuration resource.
        case configuration
        /// Resource type value for the ConfigurationProfile resource.
        case configurationProfile
        /// Resource type value for the Deployment resource.
        case deployment
        /// Resource type value for the Environment resource.
        case environment
        case sdkUnknown(Swift.String)

        public static var allCases: [ResourceType] {
            return [
                .application,
                .configuration,
                .configurationProfile,
                .deployment,
                .environment,
                .sdkUnknown("")
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .application: return "Application"
            case .configuration: return "Configuration"
            case .configurationProfile: return "ConfigurationProfile"
            case .deployment: return "Deployment"
            case .environment: return "Environment"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension StartConfigurationSessionInput {

    static func urlPathProvider(_ value: StartConfigurationSessionInput) -> Swift.String? {
        return "/configurationsessions"
    }
}

extension StartConfigurationSessionInput {

    static func write(value: StartConfigurationSessionInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["ApplicationIdentifier"].write(value.applicationIdentifier)
        try writer["ConfigurationProfileIdentifier"].write(value.configurationProfileIdentifier)
        try writer["EnvironmentIdentifier"].write(value.environmentIdentifier)
        try writer["RequiredMinimumPollIntervalInSeconds"].write(value.requiredMinimumPollIntervalInSeconds)
    }
}

public struct StartConfigurationSessionInput {
    /// The application ID or the application name.
    /// This member is required.
    public var applicationIdentifier: Swift.String?
    /// The configuration profile ID or the configuration profile name.
    /// This member is required.
    public var configurationProfileIdentifier: Swift.String?
    /// The environment ID or the environment name.
    /// This member is required.
    public var environmentIdentifier: Swift.String?
    /// Sets a constraint on a session. If you specify a value of, for example, 60 seconds, then the client that established the session can't call [GetLatestConfiguration] more frequently than every 60 seconds.
    public var requiredMinimumPollIntervalInSeconds: Swift.Int?

    public init(
        applicationIdentifier: Swift.String? = nil,
        configurationProfileIdentifier: Swift.String? = nil,
        environmentIdentifier: Swift.String? = nil,
        requiredMinimumPollIntervalInSeconds: Swift.Int? = nil
    )
    {
        self.applicationIdentifier = applicationIdentifier
        self.configurationProfileIdentifier = configurationProfileIdentifier
        self.environmentIdentifier = environmentIdentifier
        self.requiredMinimumPollIntervalInSeconds = requiredMinimumPollIntervalInSeconds
    }
}

extension StartConfigurationSessionOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> StartConfigurationSessionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = StartConfigurationSessionOutput()
        value.initialConfigurationToken = try reader["InitialConfigurationToken"].readIfPresent()
        return value
    }
}

public struct StartConfigurationSessionOutput {
    /// Token encapsulating state about the configuration session. Provide this token to the GetLatestConfiguration API to retrieve configuration data. This token should only be used once in your first call to GetLatestConfiguration. You must use the new token in the GetLatestConfiguration response (NextPollConfigurationToken) in each subsequent call to GetLatestConfiguration. The InitialConfigurationToken and NextPollConfigurationToken should only be used once. To support long poll use cases, the tokens are valid for up to 24 hours. If a GetLatestConfiguration call uses an expired token, the system returns BadRequestException.
    public var initialConfigurationToken: Swift.String?

    public init(
        initialConfigurationToken: Swift.String? = nil
    )
    {
        self.initialConfigurationToken = initialConfigurationToken
    }
}

enum StartConfigurationSessionOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "BadRequestException": return try BadRequestException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ThrottlingException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ThrottlingException {
        let reader = baseError.errorBodyReader
        var value = ThrottlingException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The request was denied due to request throttling.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ThrottlingException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}
