// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class Route53RecoveryClusterClient {
    public static let clientName = "Route53RecoveryClusterClient"
    let client: ClientRuntime.SdkHttpClient
    let config: Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration
    let serviceName = "Route53 Recovery Cluster"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration) {
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
        let config = try Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration()
        self.init(config: config)
    }
}

extension Route53RecoveryClusterClient {
    public typealias Route53RecoveryClusterClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Route53 Recovery Cluster" }
        public var clientName: String { "Route53RecoveryClusterClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct Route53RecoveryClusterClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "Route53RecoveryClusterClient"
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

extension Route53RecoveryClusterClient: Route53RecoveryClusterClientProtocol {
    /// Get the state for a routing control. A routing control is a simple on/off switch that you can use to route traffic to cells. When a routing control state is set to ON, traffic flows to a cell. When the state is set to OFF, traffic does not flow. Before you can create a routing control, you must first create a cluster, and then host the control in a control panel on the cluster. For more information, see [ Create routing control structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You access one of the endpoints for the cluster to get or update the routing control state to redirect traffic for your application. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. Learn more about working with routing controls in the following topics in the Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls in Route 53 ARC](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    ///
    /// - Parameter GetRoutingControlStateInput : [no documentation found]
    ///
    /// - Returns: `GetRoutingControlStateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permissions to perform this action.
    /// - `EndpointTemporarilyUnavailableException` : The cluster endpoint isn't available. Try another cluster endpoint.
    /// - `InternalServerException` : There was an unexpected error during processing of the request.
    /// - `ResourceNotFoundException` : The request references a routing control or control panel that was not found.
    /// - `ThrottlingException` : The request was denied because of request throttling.
    /// - `ValidationException` : There was a validation error on the request.
    public func getRoutingControlState(input: GetRoutingControlStateInput) async throws -> GetRoutingControlStateOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRoutingControlState")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetRoutingControlStateInput, GetRoutingControlStateOutput, GetRoutingControlStateOutputError>(id: "getRoutingControlState")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput, GetRoutingControlStateOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetRoutingControlStateOutput, GetRoutingControlStateOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>(xAmzTarget: "ToggleCustomerAPI.GetRoutingControlState"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>(xmlName: "GetRoutingControlStateRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetRoutingControlStateOutput, GetRoutingControlStateOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetRoutingControlStateOutput, GetRoutingControlStateOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetRoutingControlStateOutput, GetRoutingControlStateOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetRoutingControlStateOutput, GetRoutingControlStateOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// List routing control names and Amazon Resource Names (ARNs), as well as the routing control state for each routing control, along with the control panel name and control panel ARN for the routing controls. If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists all the routing controls in the cluster. A routing control is a simple on/off switch in Route 53 ARC that you can use to route traffic to cells. When a routing control state is set to ON, traffic flows to a cell. When the state is set to OFF, traffic does not flow. Before you can create a routing control, you must first create a cluster, and then host the control in a control panel on the cluster. For more information, see [ Create routing control structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You access one of the endpoints for the cluster to get or update the routing control state to redirect traffic for your application. You must specify Regional endpoints when you work with API cluster operations to use this API operation to list routing controls in Route 53 ARC. Learn more about working with routing controls in the following topics in the Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls in Route 53 ARC](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    ///
    /// - Parameter ListRoutingControlsInput : [no documentation found]
    ///
    /// - Returns: `ListRoutingControlsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permissions to perform this action.
    /// - `EndpointTemporarilyUnavailableException` : The cluster endpoint isn't available. Try another cluster endpoint.
    /// - `InternalServerException` : There was an unexpected error during processing of the request.
    /// - `ResourceNotFoundException` : The request references a routing control or control panel that was not found.
    /// - `ThrottlingException` : The request was denied because of request throttling.
    /// - `ValidationException` : There was a validation error on the request.
    public func listRoutingControls(input: ListRoutingControlsInput) async throws -> ListRoutingControlsOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listRoutingControls")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListRoutingControlsInput, ListRoutingControlsOutput, ListRoutingControlsOutputError>(id: "listRoutingControls")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput, ListRoutingControlsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListRoutingControlsOutput, ListRoutingControlsOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>(xAmzTarget: "ToggleCustomerAPI.ListRoutingControls"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>(xmlName: "ListRoutingControlsRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListRoutingControlsOutput, ListRoutingControlsOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListRoutingControlsOutput, ListRoutingControlsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListRoutingControlsOutput, ListRoutingControlsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListRoutingControlsOutput, ListRoutingControlsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Set the state of the routing control to reroute traffic. You can set the value to ON or OFF. When the state is ON, traffic flows to a cell. When the state is OFF, traffic does not flow. With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing control state updates that help prevent unexpected outcomes, like fail open traffic routing. However, there are scenarios when you might want to bypass the routing control safeguards that are enforced with safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery, and one or more safety rules might be unexpectedly preventing you from updating a routing control state to reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change a routing control state and fail over your application. The SafetyRulesToOverride property enables you override one or more safety rules and update routing control states. For more information, see [ Override safety rules to reroute traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    ///
    /// - Parameter UpdateRoutingControlStateInput : [no documentation found]
    ///
    /// - Returns: `UpdateRoutingControlStateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permissions to perform this action.
    /// - `ConflictException` : There was a conflict with this request. Try again.
    /// - `EndpointTemporarilyUnavailableException` : The cluster endpoint isn't available. Try another cluster endpoint.
    /// - `InternalServerException` : There was an unexpected error during processing of the request.
    /// - `ResourceNotFoundException` : The request references a routing control or control panel that was not found.
    /// - `ThrottlingException` : The request was denied because of request throttling.
    /// - `ValidationException` : There was a validation error on the request.
    public func updateRoutingControlState(input: UpdateRoutingControlStateInput) async throws -> UpdateRoutingControlStateOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateRoutingControlState")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput, UpdateRoutingControlStateOutputError>(id: "updateRoutingControlState")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput, UpdateRoutingControlStateOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateRoutingControlStateOutput, UpdateRoutingControlStateOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(xAmzTarget: "ToggleCustomerAPI.UpdateRoutingControlState"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(xmlName: "UpdateRoutingControlStateRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateRoutingControlStateOutput, UpdateRoutingControlStateOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateRoutingControlStateOutput, UpdateRoutingControlStateOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateRoutingControlStateOutput, UpdateRoutingControlStateOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateRoutingControlStateOutput, UpdateRoutingControlStateOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Set multiple routing control states. You can set the value for each state to be ON or OFF. When the state is ON, traffic flows to a cell. When it's OFF, traffic does not flow. With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing control state updates that help prevent unexpected outcomes, like fail open traffic routing. However, there are scenarios when you might want to bypass the routing control safeguards that are enforced with safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery, and one or more safety rules might be unexpectedly preventing you from updating a routing control state to reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change a routing control state and fail over your application. The SafetyRulesToOverride property enables you override one or more safety rules and update routing control states. For more information, see [ Override safety rules to reroute traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    ///
    /// - Parameter UpdateRoutingControlStatesInput : [no documentation found]
    ///
    /// - Returns: `UpdateRoutingControlStatesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permissions to perform this action.
    /// - `ConflictException` : There was a conflict with this request. Try again.
    /// - `EndpointTemporarilyUnavailableException` : The cluster endpoint isn't available. Try another cluster endpoint.
    /// - `InternalServerException` : There was an unexpected error during processing of the request.
    /// - `ResourceNotFoundException` : The request references a routing control or control panel that was not found.
    /// - `ServiceLimitExceededException` : The request can't update that many routing control states at the same time. Try again with fewer routing control states.
    /// - `ThrottlingException` : The request was denied because of request throttling.
    /// - `ValidationException` : There was a validation error on the request.
    public func updateRoutingControlStates(input: UpdateRoutingControlStatesInput) async throws -> UpdateRoutingControlStatesOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateRoutingControlStates")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput, UpdateRoutingControlStatesOutputError>(id: "updateRoutingControlStates")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput, UpdateRoutingControlStatesOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateRoutingControlStatesOutput, UpdateRoutingControlStatesOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(xAmzTarget: "ToggleCustomerAPI.UpdateRoutingControlStates"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(xmlName: "UpdateRoutingControlStatesRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateRoutingControlStatesOutput, UpdateRoutingControlStatesOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateRoutingControlStatesOutput, UpdateRoutingControlStatesOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateRoutingControlStatesOutput, UpdateRoutingControlStatesOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateRoutingControlStatesOutput, UpdateRoutingControlStatesOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
