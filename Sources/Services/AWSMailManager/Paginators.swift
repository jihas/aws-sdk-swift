// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension MailManagerClient {
    /// Paginate over `[ListArchiveExportsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListArchiveExportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListArchiveExportsOutput`
    public func listArchiveExportsPaginated(input: ListArchiveExportsInput) -> ClientRuntime.PaginatorSequence<ListArchiveExportsInput, ListArchiveExportsOutput> {
        return ClientRuntime.PaginatorSequence<ListArchiveExportsInput, ListArchiveExportsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listArchiveExports(input:))
    }
}

extension ListArchiveExportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListArchiveExportsInput {
        return ListArchiveExportsInput(
            archiveId: self.archiveId,
            nextToken: token,
            pageSize: self.pageSize
        )}
}

extension PaginatorSequence where OperationStackInput == ListArchiveExportsInput, OperationStackOutput == ListArchiveExportsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listArchiveExportsPaginated`
    /// to access the nested member `[MailManagerClientTypes.ExportSummary]`
    /// - Returns: `[MailManagerClientTypes.ExportSummary]`
    public func exports() async throws -> [MailManagerClientTypes.ExportSummary] {
        return try await self.asyncCompactMap { item in item.exports }
    }
}
extension MailManagerClient {
    /// Paginate over `[ListArchiveSearchesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListArchiveSearchesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListArchiveSearchesOutput`
    public func listArchiveSearchesPaginated(input: ListArchiveSearchesInput) -> ClientRuntime.PaginatorSequence<ListArchiveSearchesInput, ListArchiveSearchesOutput> {
        return ClientRuntime.PaginatorSequence<ListArchiveSearchesInput, ListArchiveSearchesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listArchiveSearches(input:))
    }
}

extension ListArchiveSearchesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListArchiveSearchesInput {
        return ListArchiveSearchesInput(
            archiveId: self.archiveId,
            nextToken: token,
            pageSize: self.pageSize
        )}
}

extension PaginatorSequence where OperationStackInput == ListArchiveSearchesInput, OperationStackOutput == ListArchiveSearchesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listArchiveSearchesPaginated`
    /// to access the nested member `[MailManagerClientTypes.SearchSummary]`
    /// - Returns: `[MailManagerClientTypes.SearchSummary]`
    public func searches() async throws -> [MailManagerClientTypes.SearchSummary] {
        return try await self.asyncCompactMap { item in item.searches }
    }
}
