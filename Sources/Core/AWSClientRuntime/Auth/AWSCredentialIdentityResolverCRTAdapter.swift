//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import AwsCommonRuntimeKit
import ClientRuntime

/// The adapter used to return CRTAWSCredentialIdentity from AWSCredentialIdentityResolver.
struct AWSCredentialIdentityResolverCRTAdapter: AwsCommonRuntimeKit.CredentialsProviding {
    let awsCredentialIdentityResolver: any AWSCredentialIdentityResolver

    func getCredentials() async throws -> CRTAWSCredentialIdentity {
        let credentials = try await awsCredentialIdentityResolver.getIdentity(
            identityProperties: Attributes()
        )
        return try .init(awsCredentialIdentity: credentials)
    }
}
