// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "aws-sdk-swift",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "AWSBedrock", targets: ["AWSBedrock"]),
        .library(name: "AWSBedrockRuntime", targets: ["AWSBedrockRuntime"]),
    ],
    targets: [
        .target(
            name: "AWSBedrock",
            path: "Sources/Services/AWSBedrock"
        ),
        .target(
            name: "AWSBedrockRuntime",
            path: "Sources/Services/AWSBedrockRuntime"
        )
    ]
)

