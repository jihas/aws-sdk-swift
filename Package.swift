// swift-tools-version:5.7

//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// This manifest is auto-generated.  Do not commit edits to this file;
// they will be overwritten.

import Foundation
import PackageDescription

// MARK: - Base Package

let package = Package(
    name: "aws-sdk-swift",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "AWSClientRuntime", targets: ["AWSClientRuntime"]),
        .library(name: "AWSSDKEventStreamsAuth", targets: ["AWSSDKEventStreamsAuth"]),
        .library(name: "AWSSDKIdentity", targets: ["AWSSDKIdentity"]),
        .library(name: "AWSSDKHTTPAuth", targets: ["AWSSDKHTTPAuth"]),
    ],
    targets: [
        .target(
            name: "AWSSDKForSwift",
            path: "Sources/Core/AWSSDKForSwift",
            exclude: ["Documentation.docc/AWSSDKForSwift.md"]
        ),
        .target(
            name: "AWSClientRuntime",
            dependencies: [],
            path: "./Sources/Core/AWSClientRuntime",
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ]
        ),
        .target(
            name: "AWSSDKIdentity",
            dependencies: [],
            path: "./Sources/Core/AWSSDKIdentity"
        ),
        .target(
            name: "AWSSDKHTTPAuth",
            dependencies: [],
            path: "./Sources/Core/AWSSDKHTTPAuth"
        ),
        .target(
            name: "AWSSDKEventStreamsAuth",
            dependencies: [],
            path: "./Sources/Core/AWSSDKEventStreamsAuth"
        ),
        .testTarget(
            name: "AWSClientRuntimeTests",
            dependencies: ["AWSClientRuntime"],
            path: "./Tests/Core/AWSClientRuntimeTests",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "AWSSDKHTTPAuthTests",
            dependencies: ["AWSSDKHTTPAuth", "AWSClientRuntime", "AWSSDKEventStreamsAuth"],
            path: "./Tests/Core/AWSSDKHTTPAuthTests"
        ),
        .testTarget(
            name: "AWSSDKEventStreamsAuthTests",
            dependencies: ["AWSClientRuntime", "AWSSDKEventStreamsAuth"],
            path: "./Tests/Core/AWSSDKEventStreamsAuthTests"
        )
    ]
)

// MARK: - Services

let serviceTargetDependencies: [Target.Dependency] = [
    "AWSClientRuntime",
    "AWSSDKIdentity",
    "AWSSDKHTTPAuth",
    "AWSSDKEventStreamsAuth",
]

func addServiceTarget(_ name: String) {
    package.products += [
        .library(name: name, targets: [name]),
    ]
    package.targets += [
        .target(
            name: name,
            dependencies: serviceTargetDependencies,
            path: "./Sources/Services/\(name)"
        )
    ]
}

func addServiceUnitTestTarget(_ name: String) {
    let testName = "\(name)Tests"
    package.targets += [
        .testTarget(
            name: "\(testName)",
            dependencies: ["AWSClientRuntime", .byName(name: name)],
            path: "./Tests/Services/\(testName)"
        )
    ]
}

func addIntegrationTestTarget(_ name: String) {
    let integrationTestName = "\(name)IntegrationTests"
    package.targets += [
        .testTarget(
            name: integrationTestName,
            dependencies: ["AWSClientRuntime", .byName(name: name)],
            path: "./IntegrationTests/Services/\(integrationTestName)",
            resources: [.process("Resources")]
        )
    ]
}

var enabledServices = Set<String>()
var enabledServiceUnitTests = Set<String>()

func addAllServices() {
    enabledServices = Set(serviceTargets)
    enabledServiceUnitTests = Set(serviceTargets)
}

var integrationTestServices = Set<String>()

func addIntegrationTests() {
    servicesWithIntegrationTests.forEach { addIntegrationTestTarget($0) }
}

func excludeRuntimeUnitTests() {
    package.targets.removeAll { $0.name == "AWSClientRuntimeTests" }
}

func addResolvedTargets() {
    enabledServices.union(integrationTestServices).forEach(addServiceTarget)
    enabledServiceUnitTests.forEach(addServiceUnitTestTarget)
}

// MARK: - Generated

// Uncomment this line to exclude runtime unit tests
// excludeRuntimeUnitTests()

let serviceTargets: [String] = [
    "AWSACM",
    "AWSACMPCA",
    "AWSAPIGateway",
    "AWSARCZonalShift",
    "AWSAccessAnalyzer",
    "AWSAccount",
    "AWSAmp",
    "AWSAmplify",
    "AWSAmplifyBackend",
    "AWSAmplifyUIBuilder",
    "AWSApiGatewayManagementApi",
    "AWSApiGatewayV2",
    "AWSAppConfig",
    "AWSAppConfigData",
    "AWSAppFabric",
    "AWSAppIntegrations",
    "AWSAppMesh",
    "AWSAppRunner",
    "AWSAppStream",
    "AWSAppSync",
    "AWSAppflow",
    "AWSApplicationAutoScaling",
    "AWSApplicationCostProfiler",
    "AWSApplicationDiscoveryService",
    "AWSApplicationInsights",
    "AWSArtifact",
    "AWSAthena",
    "AWSAuditManager",
    "AWSAutoScaling",
    "AWSAutoScalingPlans",
    "AWSB2bi",
    "AWSBCMDataExports",
    "AWSBackup",
    "AWSBackupGateway",
    "AWSBackupStorage",
    "AWSBatch",
    "AWSBedrock",
    "AWSBedrockAgent",
    "AWSBedrockAgentRuntime",
    "AWSBedrockRuntime",
    "AWSBillingconductor",
    "AWSBraket",
    "AWSBudgets",
    "AWSChatbot",
    "AWSChime",
    "AWSChimeSDKIdentity",
    "AWSChimeSDKMediaPipelines",
    "AWSChimeSDKMeetings",
    "AWSChimeSDKMessaging",
    "AWSChimeSDKVoice",
    "AWSCleanRooms",
    "AWSCleanRoomsML",
    "AWSCloud9",
    "AWSCloudControl",
    "AWSCloudDirectory",
    "AWSCloudFormation",
    "AWSCloudFront",
    "AWSCloudFrontKeyValueStore",
    "AWSCloudHSM",
    "AWSCloudHSMV2",
    "AWSCloudSearch",
    "AWSCloudSearchDomain",
    "AWSCloudTrail",
    "AWSCloudTrailData",
    "AWSCloudWatch",
    "AWSCloudWatchEvents",
    "AWSCloudWatchLogs",
    "AWSCodeBuild",
    "AWSCodeCatalyst",
    "AWSCodeCommit",
    "AWSCodeConnections",
    "AWSCodeDeploy",
    "AWSCodeGuruProfiler",
    "AWSCodeGuruReviewer",
    "AWSCodeGuruSecurity",
    "AWSCodePipeline",
    "AWSCodeStar",
    "AWSCodeStarconnections",
    "AWSCodeartifact",
    "AWSCodestarnotifications",
    "AWSCognitoIdentity",
    "AWSCognitoIdentityProvider",
    "AWSCognitoSync",
    "AWSComprehend",
    "AWSComprehendMedical",
    "AWSComputeOptimizer",
    "AWSConfigService",
    "AWSConnect",
    "AWSConnectCampaigns",
    "AWSConnectCases",
    "AWSConnectContactLens",
    "AWSConnectParticipant",
    "AWSControlCatalog",
    "AWSControlTower",
    "AWSCostExplorer",
    "AWSCostOptimizationHub",
    "AWSCostandUsageReportService",
    "AWSCustomerProfiles",
    "AWSDAX",
    "AWSDLM",
    "AWSDataBrew",
    "AWSDataExchange",
    "AWSDataPipeline",
    "AWSDataSync",
    "AWSDataZone",
    "AWSDatabaseMigrationService",
    "AWSDeadline",
    "AWSDetective",
    "AWSDevOpsGuru",
    "AWSDeviceFarm",
    "AWSDirectConnect",
    "AWSDirectoryService",
    "AWSDocDB",
    "AWSDocDBElastic",
    "AWSDrs",
    "AWSDynamoDB",
    "AWSDynamoDBStreams",
    "AWSEBS",
    "AWSEC2",
    "AWSEC2InstanceConnect",
    "AWSECR",
    "AWSECRPUBLIC",
    "AWSECS",
    "AWSEFS",
    "AWSEKS",
    "AWSEKSAuth",
    "AWSEMR",
    "AWSEMRServerless",
    "AWSEMRcontainers",
    "AWSElastiCache",
    "AWSElasticBeanstalk",
    "AWSElasticInference",
    "AWSElasticLoadBalancing",
    "AWSElasticLoadBalancingv2",
    "AWSElasticTranscoder",
    "AWSElasticsearchService",
    "AWSEntityResolution",
    "AWSEventBridge",
    "AWSEvidently",
    "AWSFMS",
    "AWSFSx",
    "AWSFinspace",
    "AWSFinspacedata",
    "AWSFirehose",
    "AWSFis",
    "AWSForecast",
    "AWSForecastquery",
    "AWSFraudDetector",
    "AWSFreeTier",
    "AWSGameLift",
    "AWSGlacier",
    "AWSGlobalAccelerator",
    "AWSGlue",
    "AWSGrafana",
    "AWSGreengrass",
    "AWSGreengrassV2",
    "AWSGroundStation",
    "AWSGuardDuty",
    "AWSHealth",
    "AWSHealthLake",
    "AWSIAM",
    "AWSIVSRealTime",
    "AWSIdentitystore",
    "AWSImagebuilder",
    "AWSInspector",
    "AWSInspector2",
    "AWSInspectorScan",
    "AWSInternetMonitor",
    "AWSIoT",
    "AWSIoT1ClickDevicesService",
    "AWSIoT1ClickProjects",
    "AWSIoTAnalytics",
    "AWSIoTDataPlane",
    "AWSIoTEvents",
    "AWSIoTEventsData",
    "AWSIoTFleetHub",
    "AWSIoTFleetWise",
    "AWSIoTJobsDataPlane",
    "AWSIoTSecureTunneling",
    "AWSIoTSiteWise",
    "AWSIoTThingsGraph",
    "AWSIoTTwinMaker",
    "AWSIoTWireless",
    "AWSIotDeviceAdvisor",
    "AWSIvs",
    "AWSIvschat",
    "AWSKMS",
    "AWSKafka",
    "AWSKafkaConnect",
    "AWSKendra",
    "AWSKendraRanking",
    "AWSKeyspaces",
    "AWSKinesis",
    "AWSKinesisAnalytics",
    "AWSKinesisAnalyticsV2",
    "AWSKinesisVideo",
    "AWSKinesisVideoArchivedMedia",
    "AWSKinesisVideoMedia",
    "AWSKinesisVideoSignaling",
    "AWSKinesisVideoWebRTCStorage",
    "AWSLakeFormation",
    "AWSLambda",
    "AWSLaunchWizard",
    "AWSLexModelBuildingService",
    "AWSLexModelsV2",
    "AWSLexRuntimeService",
    "AWSLexRuntimeV2",
    "AWSLicenseManager",
    "AWSLicenseManagerLinuxSubscriptions",
    "AWSLicenseManagerUserSubscriptions",
    "AWSLightsail",
    "AWSLocation",
    "AWSLookoutEquipment",
    "AWSLookoutMetrics",
    "AWSLookoutVision",
    "AWSM2",
    "AWSMTurk",
    "AWSMWAA",
    "AWSMachineLearning",
    "AWSMacie2",
    "AWSMailManager",
    "AWSManagedBlockchain",
    "AWSManagedBlockchainQuery",
    "AWSMarketplaceAgreement",
    "AWSMarketplaceCatalog",
    "AWSMarketplaceCommerceAnalytics",
    "AWSMarketplaceDeployment",
    "AWSMarketplaceEntitlementService",
    "AWSMarketplaceMetering",
    "AWSMediaConnect",
    "AWSMediaConvert",
    "AWSMediaLive",
    "AWSMediaPackage",
    "AWSMediaPackageV2",
    "AWSMediaPackageVod",
    "AWSMediaStore",
    "AWSMediaStoreData",
    "AWSMediaTailor",
    "AWSMedicalImaging",
    "AWSMemoryDB",
    "AWSMgn",
    "AWSMigrationHub",
    "AWSMigrationHubConfig",
    "AWSMigrationHubOrchestrator",
    "AWSMigrationHubRefactorSpaces",
    "AWSMigrationHubStrategy",
    "AWSMobile",
    "AWSMq",
    "AWSNeptune",
    "AWSNeptuneGraph",
    "AWSNeptunedata",
    "AWSNetworkFirewall",
    "AWSNetworkManager",
    "AWSNetworkMonitor",
    "AWSNimble",
    "AWSOAM",
    "AWSOSIS",
    "AWSOmics",
    "AWSOpenSearch",
    "AWSOpenSearchServerless",
    "AWSOpsWorks",
    "AWSOpsWorksCM",
    "AWSOrganizations",
    "AWSOutposts",
    "AWSPI",
    "AWSPanorama",
    "AWSPaymentCryptography",
    "AWSPaymentCryptographyData",
    "AWSPcaConnectorAd",
    "AWSPersonalize",
    "AWSPersonalizeEvents",
    "AWSPersonalizeRuntime",
    "AWSPinpoint",
    "AWSPinpointEmail",
    "AWSPinpointSMSVoice",
    "AWSPinpointSMSVoiceV2",
    "AWSPipes",
    "AWSPolly",
    "AWSPricing",
    "AWSPrivateNetworks",
    "AWSProton",
    "AWSQBusiness",
    "AWSQConnect",
    "AWSQLDB",
    "AWSQLDBSession",
    "AWSQuickSight",
    "AWSRAM",
    "AWSRDS",
    "AWSRDSData",
    "AWSRUM",
    "AWSRbin",
    "AWSRedshift",
    "AWSRedshiftData",
    "AWSRedshiftServerless",
    "AWSRekognition",
    "AWSRepostspace",
    "AWSResiliencehub",
    "AWSResourceExplorer2",
    "AWSResourceGroups",
    "AWSResourceGroupsTaggingAPI",
    "AWSRoboMaker",
    "AWSRolesAnywhere",
    "AWSRoute53",
    "AWSRoute53Domains",
    "AWSRoute53Profiles",
    "AWSRoute53RecoveryCluster",
    "AWSRoute53RecoveryControlConfig",
    "AWSRoute53RecoveryReadiness",
    "AWSRoute53Resolver",
    "AWSS3",
    "AWSS3Control",
    "AWSS3Outposts",
    "AWSSES",
    "AWSSESv2",
    "AWSSFN",
    "AWSSMS",
    "AWSSNS",
    "AWSSQS",
    "AWSSSM",
    "AWSSSMContacts",
    "AWSSSMIncidents",
    "AWSSSO",
    "AWSSSOAdmin",
    "AWSSSOOIDC",
    "AWSSTS",
    "AWSSWF",
    "AWSSageMaker",
    "AWSSageMakerA2IRuntime",
    "AWSSageMakerFeatureStoreRuntime",
    "AWSSageMakerGeospatial",
    "AWSSageMakerMetrics",
    "AWSSageMakerRuntime",
    "AWSSagemakerEdge",
    "AWSSavingsplans",
    "AWSScheduler",
    "AWSSchemas",
    "AWSSecretsManager",
    "AWSSecurityHub",
    "AWSSecurityLake",
    "AWSServerlessApplicationRepository",
    "AWSServiceCatalog",
    "AWSServiceCatalogAppRegistry",
    "AWSServiceDiscovery",
    "AWSServiceQuotas",
    "AWSShield",
    "AWSSigner",
    "AWSSimSpaceWeaver",
    "AWSSnowDeviceManagement",
    "AWSSnowball",
    "AWSSsmSap",
    "AWSStorageGateway",
    "AWSSupplyChain",
    "AWSSupport",
    "AWSSupportApp",
    "AWSSynthetics",
    "AWSTaxSettings",
    "AWSTextract",
    "AWSTimestreamInfluxDB",
    "AWSTimestreamQuery",
    "AWSTimestreamWrite",
    "AWSTnb",
    "AWSTranscribe",
    "AWSTranscribeStreaming",
    "AWSTransfer",
    "AWSTranslate",
    "AWSTrustedAdvisor",
    "AWSVPCLattice",
    "AWSVerifiedPermissions",
    "AWSVoiceID",
    "AWSWAF",
    "AWSWAFRegional",
    "AWSWAFV2",
    "AWSWellArchitected",
    "AWSWisdom",
    "AWSWorkDocs",
    "AWSWorkLink",
    "AWSWorkMail",
    "AWSWorkMailMessageFlow",
    "AWSWorkSpaces",
    "AWSWorkSpacesThinClient",
    "AWSWorkSpacesWeb",
    "AWSXRay",
]

// Uncomment this line to enable all services
// addAllServices()

let servicesWithIntegrationTests: [String] = [
    "AWSCloudFrontKeyValueStore",
    "AWSEC2",
    "AWSECS",
    "AWSEventBridge",
    "AWSKinesis",
    "AWSMediaConvert",
    "AWSRoute53",
    "AWSS3",
    "AWSSQS",
    "AWSSTS",
    "AWSTranscribeStreaming",
]

// Uncomment this line to enable integration tests
// addIntegrationTests()

// Uncomment this line to enable protocol tests
// addProtocolTests()

addResolvedTargets()

