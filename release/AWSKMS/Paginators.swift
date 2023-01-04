// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeCustomKeyStoresOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeCustomKeyStoresInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeCustomKeyStoresOutputResponse`
extension KMSClient {
    public func describeCustomKeyStoresPaginated(input: DescribeCustomKeyStoresInput) -> ClientRuntime.PaginatorSequence<DescribeCustomKeyStoresInput, DescribeCustomKeyStoresOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeCustomKeyStoresInput, DescribeCustomKeyStoresOutputResponse>(input: input, inputKey: \DescribeCustomKeyStoresInput.marker, outputKey: \DescribeCustomKeyStoresOutputResponse.nextMarker, paginationFunction: self.describeCustomKeyStores(input:))
    }
}

extension DescribeCustomKeyStoresInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCustomKeyStoresInput {
        return DescribeCustomKeyStoresInput(
            customKeyStoreId: self.customKeyStoreId,
            customKeyStoreName: self.customKeyStoreName,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeCustomKeyStoresPaginated`
/// to access the nested member `[KMSClientTypes.CustomKeyStoresListEntry]`
/// - Returns: `[KMSClientTypes.CustomKeyStoresListEntry]`
extension PaginatorSequence where Input == DescribeCustomKeyStoresInput, Output == DescribeCustomKeyStoresOutputResponse {
    public func customKeyStores() async throws -> [KMSClientTypes.CustomKeyStoresListEntry] {
        return try await self.asyncCompactMap { item in item.customKeyStores }
    }
}

/// Paginate over `[ListAliasesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAliasesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAliasesOutputResponse`
extension KMSClient {
    public func listAliasesPaginated(input: ListAliasesInput) -> ClientRuntime.PaginatorSequence<ListAliasesInput, ListAliasesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAliasesInput, ListAliasesOutputResponse>(input: input, inputKey: \ListAliasesInput.marker, outputKey: \ListAliasesOutputResponse.nextMarker, paginationFunction: self.listAliases(input:))
    }
}

extension ListAliasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAliasesInput {
        return ListAliasesInput(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAliasesPaginated`
/// to access the nested member `[KMSClientTypes.AliasListEntry]`
/// - Returns: `[KMSClientTypes.AliasListEntry]`
extension PaginatorSequence where Input == ListAliasesInput, Output == ListAliasesOutputResponse {
    public func aliases() async throws -> [KMSClientTypes.AliasListEntry] {
        return try await self.asyncCompactMap { item in item.aliases }
    }
}

/// Paginate over `[ListGrantsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListGrantsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListGrantsOutputResponse`
extension KMSClient {
    public func listGrantsPaginated(input: ListGrantsInput) -> ClientRuntime.PaginatorSequence<ListGrantsInput, ListGrantsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGrantsInput, ListGrantsOutputResponse>(input: input, inputKey: \ListGrantsInput.marker, outputKey: \ListGrantsOutputResponse.nextMarker, paginationFunction: self.listGrants(input:))
    }
}

extension ListGrantsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGrantsInput {
        return ListGrantsInput(
            grantId: self.grantId,
            granteePrincipal: self.granteePrincipal,
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listGrantsPaginated`
/// to access the nested member `[KMSClientTypes.GrantListEntry]`
/// - Returns: `[KMSClientTypes.GrantListEntry]`
extension PaginatorSequence where Input == ListGrantsInput, Output == ListGrantsOutputResponse {
    public func grants() async throws -> [KMSClientTypes.GrantListEntry] {
        return try await self.asyncCompactMap { item in item.grants }
    }
}

/// Paginate over `[ListKeyPoliciesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListKeyPoliciesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListKeyPoliciesOutputResponse`
extension KMSClient {
    public func listKeyPoliciesPaginated(input: ListKeyPoliciesInput) -> ClientRuntime.PaginatorSequence<ListKeyPoliciesInput, ListKeyPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListKeyPoliciesInput, ListKeyPoliciesOutputResponse>(input: input, inputKey: \ListKeyPoliciesInput.marker, outputKey: \ListKeyPoliciesOutputResponse.nextMarker, paginationFunction: self.listKeyPolicies(input:))
    }
}

extension ListKeyPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKeyPoliciesInput {
        return ListKeyPoliciesInput(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listKeyPoliciesPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListKeyPoliciesInput, Output == ListKeyPoliciesOutputResponse {
    public func policyNames() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.policyNames }
    }
}

/// Paginate over `[ListKeysOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListKeysInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListKeysOutputResponse`
extension KMSClient {
    public func listKeysPaginated(input: ListKeysInput) -> ClientRuntime.PaginatorSequence<ListKeysInput, ListKeysOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListKeysInput, ListKeysOutputResponse>(input: input, inputKey: \ListKeysInput.marker, outputKey: \ListKeysOutputResponse.nextMarker, paginationFunction: self.listKeys(input:))
    }
}

extension ListKeysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKeysInput {
        return ListKeysInput(
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listKeysPaginated`
/// to access the nested member `[KMSClientTypes.KeyListEntry]`
/// - Returns: `[KMSClientTypes.KeyListEntry]`
extension PaginatorSequence where Input == ListKeysInput, Output == ListKeysOutputResponse {
    public func keys() async throws -> [KMSClientTypes.KeyListEntry] {
        return try await self.asyncCompactMap { item in item.keys }
    }
}

/// Paginate over `[ListResourceTagsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListResourceTagsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListResourceTagsOutputResponse`
extension KMSClient {
    public func listResourceTagsPaginated(input: ListResourceTagsInput) -> ClientRuntime.PaginatorSequence<ListResourceTagsInput, ListResourceTagsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResourceTagsInput, ListResourceTagsOutputResponse>(input: input, inputKey: \ListResourceTagsInput.marker, outputKey: \ListResourceTagsOutputResponse.nextMarker, paginationFunction: self.listResourceTags(input:))
    }
}

extension ListResourceTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourceTagsInput {
        return ListResourceTagsInput(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listResourceTagsPaginated`
/// to access the nested member `[KMSClientTypes.Tag]`
/// - Returns: `[KMSClientTypes.Tag]`
extension PaginatorSequence where Input == ListResourceTagsInput, Output == ListResourceTagsOutputResponse {
    public func tags() async throws -> [KMSClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}

/// Paginate over `[ListRetirableGrantsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRetirableGrantsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRetirableGrantsOutputResponse`
extension KMSClient {
    public func listRetirableGrantsPaginated(input: ListRetirableGrantsInput) -> ClientRuntime.PaginatorSequence<ListRetirableGrantsInput, ListRetirableGrantsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRetirableGrantsInput, ListRetirableGrantsOutputResponse>(input: input, inputKey: \ListRetirableGrantsInput.marker, outputKey: \ListRetirableGrantsOutputResponse.nextMarker, paginationFunction: self.listRetirableGrants(input:))
    }
}

extension ListRetirableGrantsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRetirableGrantsInput {
        return ListRetirableGrantsInput(
            limit: self.limit,
            marker: token,
            retiringPrincipal: self.retiringPrincipal
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listRetirableGrantsPaginated`
/// to access the nested member `[KMSClientTypes.GrantListEntry]`
/// - Returns: `[KMSClientTypes.GrantListEntry]`
extension PaginatorSequence where Input == ListRetirableGrantsInput, Output == ListRetirableGrantsOutputResponse {
    public func grants() async throws -> [KMSClientTypes.GrantListEntry] {
        return try await self.asyncCompactMap { item in item.grants }
    }
}