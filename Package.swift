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
        .library(name: "AWSClientRuntime", targets: ["AWSClientRuntime"]),
    ],
    targets: [
        .target(
            name: "AWSBedrock",
            dependencies: ["AWSClientRuntime"],
            path: "Sources/Services/AWSBedrock"
        ),
        .target(
            name: "AWSBedrockRuntime",
            dependencies: ["AWSClientRuntime"],
            path: "Sources/Services/AWSBedrockRuntime"
        ),
        .target(
            name: "AWSClientRuntime",
            path: "Sources/Core/AWSClientRuntime"
        ),
    ]
)

