// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CodeDeployClientProtocol {

    static func deploymentSuccessfulWaiterConfig() throws -> WaiterConfiguration<GetDeploymentInput, GetDeploymentOutputResponse> {
        let acceptors: [WaiterConfiguration<GetDeploymentInput, GetDeploymentOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetDeploymentInput, result: Result<GetDeploymentOutputResponse, Error>) -> Bool in
                // JMESPath expression: "deploymentInfo.status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Succeeded"
                guard case .success(let output) = result else { return false }
                let deploymentInfo = output.deploymentInfo
                let status = deploymentInfo?.status
                return JMESUtils.compare(status, ==, "Succeeded")
            }),
            .init(state: .failure, matcher: { (input: GetDeploymentInput, result: Result<GetDeploymentOutputResponse, Error>) -> Bool in
                // JMESPath expression: "deploymentInfo.status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Failed"
                guard case .success(let output) = result else { return false }
                let deploymentInfo = output.deploymentInfo
                let status = deploymentInfo?.status
                return JMESUtils.compare(status, ==, "Failed")
            }),
            .init(state: .failure, matcher: { (input: GetDeploymentInput, result: Result<GetDeploymentOutputResponse, Error>) -> Bool in
                // JMESPath expression: "deploymentInfo.status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "Stopped"
                guard case .success(let output) = result else { return false }
                let deploymentInfo = output.deploymentInfo
                let status = deploymentInfo?.status
                return JMESUtils.compare(status, ==, "Stopped")
            }),
        ]
        return try WaiterConfiguration<GetDeploymentInput, GetDeploymentOutputResponse>(acceptors: acceptors, minDelay: 15.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the DeploymentSuccessful event on the getDeployment operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetDeploymentInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilDeploymentSuccessful(options: WaiterOptions, input: GetDeploymentInput) async throws -> WaiterOutcome<GetDeploymentOutputResponse> {
        let waiter = Waiter(config: try Self.deploymentSuccessfulWaiterConfig(), operation: self.getDeployment(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
