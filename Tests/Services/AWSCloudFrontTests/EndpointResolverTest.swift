// Code generated by smithy-swift-codegen. DO NOT EDIT!

@testable import AWSCloudFront
import AWSClientRuntime
import ClientRuntime
import SmithyTestUtil
import XCTest

class EndpointResolverTest: CrtXCBaseTestCase {
    /// For region aws-cn-global with FIPS disabled and DualStack disabled
    func testResolve1() throws {
        let endpointParams = EndpointParams(
            region: "aws-cn-global",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingRegion": "cn-northwest-1",
                        "name": "sigv4",
                        "signingName": "cloudfront"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://cloudfront.cn-northwest-1.amazonaws.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region aws-global with FIPS disabled and DualStack disabled
    func testResolve2() throws {
        let endpointParams = EndpointParams(
            region: "aws-global",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingRegion": "us-east-1",
                        "name": "sigv4",
                        "signingName": "cloudfront"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://cloudfront.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips disabled and dualstack disabled
    func testResolve3() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://example.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips enabled and dualstack disabled
    func testResolve4() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: FIPS and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

    /// For custom endpoint with fips disabled and dualstack enabled
    func testResolve5() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: Dualstack and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

}
