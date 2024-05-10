// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime
import SmithyJSON
import SmithyReadWrite

public enum ApiGatewayManagementApiClientTypes {}

extension DeleteConnectionInput {

    static func urlPathProvider(_ value: DeleteConnectionInput) -> Swift.String? {
        guard let connectionId = value.connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

public struct DeleteConnectionInput {
    /// This member is required.
    public var connectionId: Swift.String?

    public init(
        connectionId: Swift.String? = nil
    )
    {
        self.connectionId = connectionId
    }
}

extension DeleteConnectionOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> DeleteConnectionOutput {
        return DeleteConnectionOutput()
    }
}

public struct DeleteConnectionOutput {

    public init() { }
}

enum DeleteConnectionOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ForbiddenException": return try ForbiddenException.makeError(baseError: baseError)
            case "GoneException": return try GoneException.makeError(baseError: baseError)
            case "LimitExceededException": return try LimitExceededException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ForbiddenException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ForbiddenException {
        var value = ForbiddenException()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The caller is not authorized to invoke this operation.
public struct ForbiddenException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {
    public static var typeName: Swift.String { "ForbiddenException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init() { }
}

extension GetConnectionInput {

    static func urlPathProvider(_ value: GetConnectionInput) -> Swift.String? {
        guard let connectionId = value.connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

public struct GetConnectionInput {
    /// This member is required.
    public var connectionId: Swift.String?

    public init(
        connectionId: Swift.String? = nil
    )
    {
        self.connectionId = connectionId
    }
}

extension GetConnectionOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> GetConnectionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetConnectionOutput()
        value.connectedAt = try reader["connectedAt"].readTimestampIfPresent(format: .dateTime)
        value.identity = try reader["identity"].readIfPresent(with: ApiGatewayManagementApiClientTypes.Identity.read(from:))
        value.lastActiveAt = try reader["lastActiveAt"].readTimestampIfPresent(format: .dateTime)
        return value
    }
}

public struct GetConnectionOutput {
    /// The time in ISO 8601 format for when the connection was established.
    public var connectedAt: ClientRuntime.Date?
    public var identity: ApiGatewayManagementApiClientTypes.Identity?
    /// The time in ISO 8601 format for when the connection was last active.
    public var lastActiveAt: ClientRuntime.Date?

    public init(
        connectedAt: ClientRuntime.Date? = nil,
        identity: ApiGatewayManagementApiClientTypes.Identity? = nil,
        lastActiveAt: ClientRuntime.Date? = nil
    )
    {
        self.connectedAt = connectedAt
        self.identity = identity
        self.lastActiveAt = lastActiveAt
    }
}

enum GetConnectionOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ForbiddenException": return try ForbiddenException.makeError(baseError: baseError)
            case "GoneException": return try GoneException.makeError(baseError: baseError)
            case "LimitExceededException": return try LimitExceededException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension GoneException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> GoneException {
        var value = GoneException()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The connection with the provided id no longer exists.
public struct GoneException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {
    public static var typeName: Swift.String { "GoneException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init() { }
}

extension ApiGatewayManagementApiClientTypes.Identity {

    static func read(from reader: SmithyJSON.Reader) throws -> ApiGatewayManagementApiClientTypes.Identity {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ApiGatewayManagementApiClientTypes.Identity()
        value.sourceIp = try reader["sourceIp"].readIfPresent()
        value.userAgent = try reader["userAgent"].readIfPresent()
        return value
    }
}

extension ApiGatewayManagementApiClientTypes {
    public struct Identity {
        /// The source IP address of the TCP connection making the request to API Gateway.
        /// This member is required.
        public var sourceIp: Swift.String?
        /// The User Agent of the API caller.
        /// This member is required.
        public var userAgent: Swift.String?

        public init(
            sourceIp: Swift.String? = nil,
            userAgent: Swift.String? = nil
        )
        {
            self.sourceIp = sourceIp
            self.userAgent = userAgent
        }
    }

}

extension LimitExceededException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> LimitExceededException {
        var value = LimitExceededException()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.
public struct LimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {
    public static var typeName: Swift.String { "LimitExceededException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init() { }
}

extension PayloadTooLargeException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> PayloadTooLargeException {
        let reader = baseError.errorBodyReader
        var value = PayloadTooLargeException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The data has exceeded the maximum size allowed.
public struct PayloadTooLargeException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "PayloadTooLargeException" }
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

extension PostToConnectionInput {

    static func urlPathProvider(_ value: PostToConnectionInput) -> Swift.String? {
        guard let connectionId = value.connectionId else {
            return nil
        }
        return "/@connections/\(connectionId.urlPercentEncoding())"
    }
}

extension PostToConnectionInput {

    static func write(value: PostToConnectionInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["Data"].write(value.data)
    }
}

public struct PostToConnectionInput {
    /// The identifier of the connection that a specific client is using.
    /// This member is required.
    public var connectionId: Swift.String?
    /// The data to be sent to the client specified by its connection id.
    /// This member is required.
    public var data: ClientRuntime.Data?

    public init(
        connectionId: Swift.String? = nil,
        data: ClientRuntime.Data? = nil
    )
    {
        self.connectionId = connectionId
        self.data = data
    }
}

extension PostToConnectionOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> PostToConnectionOutput {
        return PostToConnectionOutput()
    }
}

public struct PostToConnectionOutput {

    public init() { }
}

enum PostToConnectionOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ForbiddenException": return try ForbiddenException.makeError(baseError: baseError)
            case "GoneException": return try GoneException.makeError(baseError: baseError)
            case "LimitExceededException": return try LimitExceededException.makeError(baseError: baseError)
            case "PayloadTooLargeException": return try PayloadTooLargeException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}
