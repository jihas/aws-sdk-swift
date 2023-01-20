// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class AutoScalingPlansClient {
    public static let clientName = "AutoScalingPlansClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AutoScalingPlansClientConfigurationProtocol
    let serviceName = "Auto Scaling Plans"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: AutoScalingPlansClientConfigurationProtocol) {
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
        let config = try AutoScalingPlansClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await AutoScalingPlansClientConfiguration()
        self.init(config: config)
    }

    public class AutoScalingPlansClientConfiguration: AutoScalingPlansClientConfigurationProtocol {
        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpoint: Swift.String?
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?
        public var useDualStack: Swift.Bool?
        public var useFIPS: Swift.Bool?

        public var endpointResolver: EndpointResolver

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) throws {
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.endpoint = endpoint
            if let endpointResolver = endpointResolver {
                self.endpointResolver = endpointResolver
            } else {
                self.endpointResolver = try DefaultEndpointResolver()
            }
            self.frameworkMetadata = frameworkMetadata
            self.region = region
            self.regionResolver = try regionResolver ?? DefaultRegionResolver()
            self.signingRegion = signingRegion ?? region
            self.useDualStack = useDualStack
            self.useFIPS = useFIPS
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) throws {
            let runtimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("AutoScalingPlansClient")
            try self.init(
                credentialsProvider: credentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                region: region,
                regionResolver: regionResolver,
                runtimeConfig: runtimeConfig,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS
            )
        }

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.endpoint = endpoint
            if let endpointResolver = endpointResolver {
                self.endpointResolver = endpointResolver
            } else {
                self.endpointResolver = try DefaultEndpointResolver()
            }
            self.frameworkMetadata = frameworkMetadata
            let resolvedRegionResolver = try regionResolver ?? DefaultRegionResolver()
            self.region = await resolvedRegionResolver.resolveRegion()
            self.regionResolver = try regionResolver ?? DefaultRegionResolver()
            self.signingRegion = signingRegion ?? region
            self.useDualStack = useDualStack
            self.useFIPS = useFIPS
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            let runtimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("AutoScalingPlansClient")
            try await self.init(
                credentialsProvider: credentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                regionResolver: regionResolver,
                runtimeConfig: runtimeConfig,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS
            )
        }

        public var partitionID: String? {
            return "AutoScalingPlansClient - \(region ?? "")"
        }
    }
}

public struct AutoScalingPlansClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "AutoScalingPlansClient"
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

extension AutoScalingPlansClient: AutoScalingPlansClientProtocol {
    /// Creates a scaling plan.
    public func createScalingPlan(input: CreateScalingPlanInput) async throws -> CreateScalingPlanOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createScalingPlan")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "autoscaling-plans")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<CreateScalingPlanInput, CreateScalingPlanOutputResponse, CreateScalingPlanOutputError>(id: "createScalingPlan")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<CreateScalingPlanInput, CreateScalingPlanOutputResponse, CreateScalingPlanOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<CreateScalingPlanInput, CreateScalingPlanOutputResponse>())
        guard let region = config.region else {
            throw SdkError<CreateScalingPlanOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<CreateScalingPlanOutputResponse, CreateScalingPlanOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<CreateScalingPlanInput, CreateScalingPlanOutputResponse>(xAmzTarget: "AnyScaleScalingPlannerFrontendService.CreateScalingPlan"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<CreateScalingPlanInput, CreateScalingPlanOutputResponse>(xmlName: "CreateScalingPlanRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateScalingPlanInput, CreateScalingPlanOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<CreateScalingPlanOutputResponse, CreateScalingPlanOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<CreateScalingPlanOutputResponse, CreateScalingPlanOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<CreateScalingPlanOutputResponse, CreateScalingPlanOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<CreateScalingPlanOutputResponse, CreateScalingPlanOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying [ScalingInstruction] for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    public func deleteScalingPlan(input: DeleteScalingPlanInput) async throws -> DeleteScalingPlanOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteScalingPlan")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "autoscaling-plans")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteScalingPlanInput, DeleteScalingPlanOutputResponse, DeleteScalingPlanOutputError>(id: "deleteScalingPlan")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteScalingPlanInput, DeleteScalingPlanOutputResponse, DeleteScalingPlanOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteScalingPlanInput, DeleteScalingPlanOutputResponse>())
        guard let region = config.region else {
            throw SdkError<DeleteScalingPlanOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteScalingPlanOutputResponse, DeleteScalingPlanOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DeleteScalingPlanInput, DeleteScalingPlanOutputResponse>(xAmzTarget: "AnyScaleScalingPlannerFrontendService.DeleteScalingPlan"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<DeleteScalingPlanInput, DeleteScalingPlanOutputResponse>(xmlName: "DeleteScalingPlanRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DeleteScalingPlanInput, DeleteScalingPlanOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<DeleteScalingPlanOutputResponse, DeleteScalingPlanOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteScalingPlanOutputResponse, DeleteScalingPlanOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<DeleteScalingPlanOutputResponse, DeleteScalingPlanOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteScalingPlanOutputResponse, DeleteScalingPlanOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Describes the scalable resources in the specified scaling plan.
    public func describeScalingPlanResources(input: DescribeScalingPlanResourcesInput) async throws -> DescribeScalingPlanResourcesOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeScalingPlanResources")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "autoscaling-plans")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DescribeScalingPlanResourcesInput, DescribeScalingPlanResourcesOutputResponse, DescribeScalingPlanResourcesOutputError>(id: "describeScalingPlanResources")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeScalingPlanResourcesInput, DescribeScalingPlanResourcesOutputResponse, DescribeScalingPlanResourcesOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeScalingPlanResourcesInput, DescribeScalingPlanResourcesOutputResponse>())
        guard let region = config.region else {
            throw SdkError<DescribeScalingPlanResourcesOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeScalingPlanResourcesOutputResponse, DescribeScalingPlanResourcesOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DescribeScalingPlanResourcesInput, DescribeScalingPlanResourcesOutputResponse>(xAmzTarget: "AnyScaleScalingPlannerFrontendService.DescribeScalingPlanResources"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<DescribeScalingPlanResourcesInput, DescribeScalingPlanResourcesOutputResponse>(xmlName: "DescribeScalingPlanResourcesRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeScalingPlanResourcesInput, DescribeScalingPlanResourcesOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<DescribeScalingPlanResourcesOutputResponse, DescribeScalingPlanResourcesOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeScalingPlanResourcesOutputResponse, DescribeScalingPlanResourcesOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<DescribeScalingPlanResourcesOutputResponse, DescribeScalingPlanResourcesOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeScalingPlanResourcesOutputResponse, DescribeScalingPlanResourcesOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Describes one or more of your scaling plans.
    public func describeScalingPlans(input: DescribeScalingPlansInput) async throws -> DescribeScalingPlansOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeScalingPlans")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "autoscaling-plans")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DescribeScalingPlansInput, DescribeScalingPlansOutputResponse, DescribeScalingPlansOutputError>(id: "describeScalingPlans")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeScalingPlansInput, DescribeScalingPlansOutputResponse, DescribeScalingPlansOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeScalingPlansInput, DescribeScalingPlansOutputResponse>())
        guard let region = config.region else {
            throw SdkError<DescribeScalingPlansOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeScalingPlansOutputResponse, DescribeScalingPlansOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DescribeScalingPlansInput, DescribeScalingPlansOutputResponse>(xAmzTarget: "AnyScaleScalingPlannerFrontendService.DescribeScalingPlans"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<DescribeScalingPlansInput, DescribeScalingPlansOutputResponse>(xmlName: "DescribeScalingPlansRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeScalingPlansInput, DescribeScalingPlansOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<DescribeScalingPlansOutputResponse, DescribeScalingPlansOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeScalingPlansOutputResponse, DescribeScalingPlansOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<DescribeScalingPlansOutputResponse, DescribeScalingPlansOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeScalingPlansOutputResponse, DescribeScalingPlansOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days.
    public func getScalingPlanResourceForecastData(input: GetScalingPlanResourceForecastDataInput) async throws -> GetScalingPlanResourceForecastDataOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getScalingPlanResourceForecastData")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "autoscaling-plans")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetScalingPlanResourceForecastDataInput, GetScalingPlanResourceForecastDataOutputResponse, GetScalingPlanResourceForecastDataOutputError>(id: "getScalingPlanResourceForecastData")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetScalingPlanResourceForecastDataInput, GetScalingPlanResourceForecastDataOutputResponse, GetScalingPlanResourceForecastDataOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetScalingPlanResourceForecastDataInput, GetScalingPlanResourceForecastDataOutputResponse>())
        guard let region = config.region else {
            throw SdkError<GetScalingPlanResourceForecastDataOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetScalingPlanResourceForecastDataOutputResponse, GetScalingPlanResourceForecastDataOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetScalingPlanResourceForecastDataInput, GetScalingPlanResourceForecastDataOutputResponse>(xAmzTarget: "AnyScaleScalingPlannerFrontendService.GetScalingPlanResourceForecastData"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetScalingPlanResourceForecastDataInput, GetScalingPlanResourceForecastDataOutputResponse>(xmlName: "GetScalingPlanResourceForecastDataRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetScalingPlanResourceForecastDataInput, GetScalingPlanResourceForecastDataOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<GetScalingPlanResourceForecastDataOutputResponse, GetScalingPlanResourceForecastDataOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetScalingPlanResourceForecastDataOutputResponse, GetScalingPlanResourceForecastDataOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<GetScalingPlanResourceForecastDataOutputResponse, GetScalingPlanResourceForecastDataOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetScalingPlanResourceForecastDataOutputResponse, GetScalingPlanResourceForecastDataOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    public func updateScalingPlan(input: UpdateScalingPlanInput) async throws -> UpdateScalingPlanOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateScalingPlan")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "autoscaling-plans")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UpdateScalingPlanInput, UpdateScalingPlanOutputResponse, UpdateScalingPlanOutputError>(id: "updateScalingPlan")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateScalingPlanInput, UpdateScalingPlanOutputResponse, UpdateScalingPlanOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateScalingPlanInput, UpdateScalingPlanOutputResponse>())
        guard let region = config.region else {
            throw SdkError<UpdateScalingPlanOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateScalingPlanOutputResponse, UpdateScalingPlanOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateScalingPlanInput, UpdateScalingPlanOutputResponse>(xAmzTarget: "AnyScaleScalingPlannerFrontendService.UpdateScalingPlan"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateScalingPlanInput, UpdateScalingPlanOutputResponse>(xmlName: "UpdateScalingPlanRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateScalingPlanInput, UpdateScalingPlanOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<UpdateScalingPlanOutputResponse, UpdateScalingPlanOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateScalingPlanOutputResponse, UpdateScalingPlanOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<UpdateScalingPlanOutputResponse, UpdateScalingPlanOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateScalingPlanOutputResponse, UpdateScalingPlanOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}
