// Code generated by smithy-swift-codegen. DO NOT EDIT!

@testable import AWSIoTWireless
import AWSClientRuntime
import ClientRuntime
import SmithyTestUtil
import XCTest

class EndpointResolverTest: CrtXCBaseTestCase {
    /// For region ap-south-1 with FIPS enabled and DualStack enabled
    func testResolve1() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ap-south-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-south-1 with FIPS enabled and DualStack disabled
    func testResolve2() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ap-south-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-south-1 with FIPS disabled and DualStack enabled
    func testResolve3() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ap-south-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-south-1 with FIPS disabled and DualStack disabled
    func testResolve4() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ap-south-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ca-central-1 with FIPS enabled and DualStack enabled
    func testResolve5() throws {
        let endpointParams = EndpointParams(
            region: "ca-central-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ca-central-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ca-central-1 with FIPS enabled and DualStack disabled
    func testResolve6() throws {
        let endpointParams = EndpointParams(
            region: "ca-central-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ca-central-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ca-central-1 with FIPS disabled and DualStack enabled
    func testResolve7() throws {
        let endpointParams = EndpointParams(
            region: "ca-central-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ca-central-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ca-central-1 with FIPS disabled and DualStack disabled
    func testResolve8() throws {
        let endpointParams = EndpointParams(
            region: "ca-central-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ca-central-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-central-1 with FIPS enabled and DualStack enabled
    func testResolve9() throws {
        let endpointParams = EndpointParams(
            region: "eu-central-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.eu-central-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-central-1 with FIPS enabled and DualStack disabled
    func testResolve10() throws {
        let endpointParams = EndpointParams(
            region: "eu-central-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.eu-central-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-central-1 with FIPS disabled and DualStack enabled
    func testResolve11() throws {
        let endpointParams = EndpointParams(
            region: "eu-central-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.eu-central-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-central-1 with FIPS disabled and DualStack disabled
    func testResolve12() throws {
        let endpointParams = EndpointParams(
            region: "eu-central-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.eu-central-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-west-2 with FIPS enabled and DualStack enabled
    func testResolve13() throws {
        let endpointParams = EndpointParams(
            region: "us-west-2",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.us-west-2.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-west-2 with FIPS enabled and DualStack disabled
    func testResolve14() throws {
        let endpointParams = EndpointParams(
            region: "us-west-2",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.us-west-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-west-2 with FIPS disabled and DualStack enabled
    func testResolve15() throws {
        let endpointParams = EndpointParams(
            region: "us-west-2",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.us-west-2.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-west-2 with FIPS disabled and DualStack disabled
    func testResolve16() throws {
        let endpointParams = EndpointParams(
            region: "us-west-2",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.us-west-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-west-1 with FIPS enabled and DualStack enabled
    func testResolve17() throws {
        let endpointParams = EndpointParams(
            region: "eu-west-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.eu-west-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-west-1 with FIPS enabled and DualStack disabled
    func testResolve18() throws {
        let endpointParams = EndpointParams(
            region: "eu-west-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.eu-west-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-west-1 with FIPS disabled and DualStack enabled
    func testResolve19() throws {
        let endpointParams = EndpointParams(
            region: "eu-west-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.eu-west-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-west-1 with FIPS disabled and DualStack disabled
    func testResolve20() throws {
        let endpointParams = EndpointParams(
            region: "eu-west-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.eu-west-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-northeast-1 with FIPS enabled and DualStack enabled
    func testResolve21() throws {
        let endpointParams = EndpointParams(
            region: "ap-northeast-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ap-northeast-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-northeast-1 with FIPS enabled and DualStack disabled
    func testResolve22() throws {
        let endpointParams = EndpointParams(
            region: "ap-northeast-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ap-northeast-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-northeast-1 with FIPS disabled and DualStack enabled
    func testResolve23() throws {
        let endpointParams = EndpointParams(
            region: "ap-northeast-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ap-northeast-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-northeast-1 with FIPS disabled and DualStack disabled
    func testResolve24() throws {
        let endpointParams = EndpointParams(
            region: "ap-northeast-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ap-northeast-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region sa-east-1 with FIPS enabled and DualStack enabled
    func testResolve25() throws {
        let endpointParams = EndpointParams(
            region: "sa-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.sa-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region sa-east-1 with FIPS enabled and DualStack disabled
    func testResolve26() throws {
        let endpointParams = EndpointParams(
            region: "sa-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.sa-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region sa-east-1 with FIPS disabled and DualStack enabled
    func testResolve27() throws {
        let endpointParams = EndpointParams(
            region: "sa-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.sa-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region sa-east-1 with FIPS disabled and DualStack disabled
    func testResolve28() throws {
        let endpointParams = EndpointParams(
            region: "sa-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.sa-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-1 with FIPS enabled and DualStack enabled
    func testResolve29() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ap-southeast-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-1 with FIPS enabled and DualStack disabled
    func testResolve30() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ap-southeast-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-1 with FIPS disabled and DualStack enabled
    func testResolve31() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ap-southeast-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-1 with FIPS disabled and DualStack disabled
    func testResolve32() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ap-southeast-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-2 with FIPS enabled and DualStack enabled
    func testResolve33() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-2",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ap-southeast-2.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-2 with FIPS enabled and DualStack disabled
    func testResolve34() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-2",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.ap-southeast-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-2 with FIPS disabled and DualStack enabled
    func testResolve35() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-2",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ap-southeast-2.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-2 with FIPS disabled and DualStack disabled
    func testResolve36() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-2",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.ap-southeast-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack enabled
    func testResolve37() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack disabled
    func testResolve38() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless-fips.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack enabled
    func testResolve39() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack disabled
    func testResolve40() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://api.iotwireless.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips disabled and dualstack disabled
    func testResolve41() throws {
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
    func testResolve42() throws {
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
    func testResolve43() throws {
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
