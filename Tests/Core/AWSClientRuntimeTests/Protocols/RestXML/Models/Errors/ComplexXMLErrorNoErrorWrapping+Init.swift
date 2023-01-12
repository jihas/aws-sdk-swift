//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension ComplexXMLErrorNoErrorWrapping: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if let headerHeaderValue = httpResponse.headers.value(for: "X-Header") {
            self.header = headerHeaderValue
        } else {
            self.header = nil
        }
        if let data = httpResponse.body.toBytes()?.getData(), let responseDecoder = decoder {
            let output: ComplexXMLErrorNoErrorWrappingBody = try responseDecoder.decode(responseBody: data)
            self.nested = output.nested
            self.topLevel = output.topLevel
        } else {
            self.nested = nil
            self.topLevel = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}
