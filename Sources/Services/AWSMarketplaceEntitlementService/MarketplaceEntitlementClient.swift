// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MarketplaceEntitlementClient {
    public static let clientName = "MarketplaceEntitlementClient"
    let client: ClientRuntime.SdkHttpClient
    let config: MarketplaceEntitlementClientConfigurationProtocol
    let serviceName = "Marketplace Entitlement"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: MarketplaceEntitlementClientConfigurationProtocol) {
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
        let config = try MarketplaceEntitlementClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await MarketplaceEntitlementClientConfiguration()
        self.init(config: config)
    }

    public class MarketplaceEntitlementClientConfiguration: MarketplaceEntitlementClientConfigurationProtocol {
        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProviding
        public var endpoint: Swift.String?
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?
        public var useDualStack: Swift.Bool?
        public var useFIPS: Swift.Bool?

        public var endpointResolver: EndpointResolver

        /// Creates a configuration asynchronously
        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProviding? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            let fileBasedConfig = try await CRTFileBasedConfiguration.makeAsync()

            let resolvedRegionResolver = try regionResolver ?? DefaultRegionResolver { _, _ in fileBasedConfig }

            let resolvedRegion: String?
            if let region = region {
                resolvedRegion = region
            } else {
                resolvedRegion = await resolvedRegionResolver.resolveRegion()
            }

            let resolvedCredentialsProvider: AWSClientRuntime.CredentialsProviding
            if let credentialsProvider = credentialsProvider {
                resolvedCredentialsProvider = credentialsProvider
            } else {
                resolvedCredentialsProvider = try DefaultChainCredentialsProvider(fileBasedConfig: fileBasedConfig)
            }

            try self.init(
                credentialsProvider: resolvedCredentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                region: resolvedRegion,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS,
                runtimeConfig: runtimeConfig
            )
        }

        public convenience init(
            region: Swift.String,
            credentialsProvider: AWSClientRuntime.CredentialsProviding? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) throws {
            let resolvedCredentialsProvider: CredentialsProviding
            if let credentialsProvider = credentialsProvider {
                resolvedCredentialsProvider = credentialsProvider
            } else {
                let fileBasedConfig = try CRTFileBasedConfiguration.make()
                resolvedCredentialsProvider = try DefaultChainCredentialsProvider(fileBasedConfig: fileBasedConfig)
            }

            try self.init(
                credentialsProvider: resolvedCredentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                region: region,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS,
                runtimeConfig: runtimeConfig
            )
        }

        /// Internal designated init
        /// All convenience inits should call this
        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProviding,
            endpoint: Swift.String?,
            endpointResolver: EndpointResolver?,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata?,
            region: Swift.String?,
            signingRegion: Swift.String?,
            useDualStack: Swift.Bool?,
            useFIPS: Swift.Bool?,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration?
        ) throws {
            let runtimeConfig = try runtimeConfig ?? ClientRuntime.DefaultSDKRuntimeConfiguration("MarketplaceEntitlementClient")

            let resolvedSigningRegion = signingRegion ?? region

            let resolvedEndpointsResolver = try endpointResolver ?? DefaultEndpointResolver()

            self.credentialsProvider = credentialsProvider
            self.endpoint = endpoint
            self.endpointResolver = resolvedEndpointsResolver
            self.frameworkMetadata = frameworkMetadata
            self.region = region
            // TODO: Remove region resolver. Region must already be resolved and there is no point in storing the resolver.
            self.regionResolver = nil
            self.signingRegion = resolvedSigningRegion
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

        public var partitionID: String? {
            return "MarketplaceEntitlementClient - \(region ?? "")"
        }
    }
}

public struct MarketplaceEntitlementClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MarketplaceEntitlementClient"
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

extension MarketplaceEntitlementClient: MarketplaceEntitlementClientProtocol {
    /// GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.
    public func getEntitlements(input: GetEntitlementsInput) async throws -> GetEntitlementsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getEntitlements")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetEntitlementsInput, GetEntitlementsOutputResponse, GetEntitlementsOutputError>(id: "getEntitlements")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetEntitlementsInput, GetEntitlementsOutputResponse, GetEntitlementsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetEntitlementsInput, GetEntitlementsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetEntitlementsOutputResponse, GetEntitlementsOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetEntitlementsInput, GetEntitlementsOutputResponse>(xAmzTarget: "AWSMPEntitlementService.GetEntitlements"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetEntitlementsInput, GetEntitlementsOutputResponse>(xmlName: "GetEntitlementsRequest"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetEntitlementsInput, GetEntitlementsOutputResponse>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<GetEntitlementsOutputResponse, GetEntitlementsOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetEntitlementsOutputResponse, GetEntitlementsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetEntitlementsOutputResponse, GetEntitlementsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetEntitlementsOutputResponse, GetEntitlementsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}
