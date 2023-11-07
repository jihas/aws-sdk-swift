// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RedshiftServerlessClient {
    /// Paginate over `[ListCustomDomainAssociationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomDomainAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomDomainAssociationsOutput`
    public func listCustomDomainAssociationsPaginated(input: ListCustomDomainAssociationsInput) -> ClientRuntime.PaginatorSequence<ListCustomDomainAssociationsInput, ListCustomDomainAssociationsOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomDomainAssociationsInput, ListCustomDomainAssociationsOutput>(input: input, inputKey: \ListCustomDomainAssociationsInput.nextToken, outputKey: \ListCustomDomainAssociationsOutput.nextToken, paginationFunction: self.listCustomDomainAssociations(input:))
    }
}

extension ListCustomDomainAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomDomainAssociationsInput {
        return ListCustomDomainAssociationsInput(
            customDomainCertificateArn: self.customDomainCertificateArn,
            customDomainName: self.customDomainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListCustomDomainAssociationsInput, Output == ListCustomDomainAssociationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomDomainAssociationsPaginated`
    /// to access the nested member `[RedshiftServerlessClientTypes.Association]`
    /// - Returns: `[RedshiftServerlessClientTypes.Association]`
    public func associations() async throws -> [RedshiftServerlessClientTypes.Association] {
        return try await self.asyncCompactMap { item in item.associations }
    }
}
