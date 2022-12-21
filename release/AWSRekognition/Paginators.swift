// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeProjectsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeProjectsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeProjectsOutputResponse`
extension RekognitionClient {
    public func describeProjectsPaginated(input: DescribeProjectsInput) -> ClientRuntime.PaginatorSequence<DescribeProjectsInput, DescribeProjectsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeProjectsInput, DescribeProjectsOutputResponse>(input: input, inputKey: \DescribeProjectsInput.nextToken, outputKey: \DescribeProjectsOutputResponse.nextToken, paginationFunction: self.describeProjects(input:))
    }
}

extension DescribeProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeProjectsInput {
        return DescribeProjectsInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectNames: self.projectNames
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeProjectsPaginated`
/// to access the nested member `[RekognitionClientTypes.ProjectDescription]`
/// - Returns: `[RekognitionClientTypes.ProjectDescription]`
extension PaginatorSequence where Input == DescribeProjectsInput, Output == DescribeProjectsOutputResponse {
    public func projectDescriptions() async throws -> [RekognitionClientTypes.ProjectDescription] {
        return try await self.asyncCompactMap { item in item.projectDescriptions }
    }
}

/// Paginate over `[DescribeProjectVersionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeProjectVersionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeProjectVersionsOutputResponse`
extension RekognitionClient {
    public func describeProjectVersionsPaginated(input: DescribeProjectVersionsInput) -> ClientRuntime.PaginatorSequence<DescribeProjectVersionsInput, DescribeProjectVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeProjectVersionsInput, DescribeProjectVersionsOutputResponse>(input: input, inputKey: \DescribeProjectVersionsInput.nextToken, outputKey: \DescribeProjectVersionsOutputResponse.nextToken, paginationFunction: self.describeProjectVersions(input:))
    }
}

extension DescribeProjectVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeProjectVersionsInput {
        return DescribeProjectVersionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectArn: self.projectArn,
            versionNames: self.versionNames
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeProjectVersionsPaginated`
/// to access the nested member `[RekognitionClientTypes.ProjectVersionDescription]`
/// - Returns: `[RekognitionClientTypes.ProjectVersionDescription]`
extension PaginatorSequence where Input == DescribeProjectVersionsInput, Output == DescribeProjectVersionsOutputResponse {
    public func projectVersionDescriptions() async throws -> [RekognitionClientTypes.ProjectVersionDescription] {
        return try await self.asyncCompactMap { item in item.projectVersionDescriptions }
    }
}

/// Paginate over `[GetCelebrityRecognitionOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetCelebrityRecognitionInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetCelebrityRecognitionOutputResponse`
extension RekognitionClient {
    public func getCelebrityRecognitionPaginated(input: GetCelebrityRecognitionInput) -> ClientRuntime.PaginatorSequence<GetCelebrityRecognitionInput, GetCelebrityRecognitionOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetCelebrityRecognitionInput, GetCelebrityRecognitionOutputResponse>(input: input, inputKey: \GetCelebrityRecognitionInput.nextToken, outputKey: \GetCelebrityRecognitionOutputResponse.nextToken, paginationFunction: self.getCelebrityRecognition(input:))
    }
}

extension GetCelebrityRecognitionInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCelebrityRecognitionInput {
        return GetCelebrityRecognitionInput(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}

/// Paginate over `[GetContentModerationOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetContentModerationInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetContentModerationOutputResponse`
extension RekognitionClient {
    public func getContentModerationPaginated(input: GetContentModerationInput) -> ClientRuntime.PaginatorSequence<GetContentModerationInput, GetContentModerationOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetContentModerationInput, GetContentModerationOutputResponse>(input: input, inputKey: \GetContentModerationInput.nextToken, outputKey: \GetContentModerationOutputResponse.nextToken, paginationFunction: self.getContentModeration(input:))
    }
}

extension GetContentModerationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetContentModerationInput {
        return GetContentModerationInput(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}

/// Paginate over `[GetFaceDetectionOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetFaceDetectionInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetFaceDetectionOutputResponse`
extension RekognitionClient {
    public func getFaceDetectionPaginated(input: GetFaceDetectionInput) -> ClientRuntime.PaginatorSequence<GetFaceDetectionInput, GetFaceDetectionOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetFaceDetectionInput, GetFaceDetectionOutputResponse>(input: input, inputKey: \GetFaceDetectionInput.nextToken, outputKey: \GetFaceDetectionOutputResponse.nextToken, paginationFunction: self.getFaceDetection(input:))
    }
}

extension GetFaceDetectionInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetFaceDetectionInput {
        return GetFaceDetectionInput(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[GetFaceSearchOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetFaceSearchInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetFaceSearchOutputResponse`
extension RekognitionClient {
    public func getFaceSearchPaginated(input: GetFaceSearchInput) -> ClientRuntime.PaginatorSequence<GetFaceSearchInput, GetFaceSearchOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetFaceSearchInput, GetFaceSearchOutputResponse>(input: input, inputKey: \GetFaceSearchInput.nextToken, outputKey: \GetFaceSearchOutputResponse.nextToken, paginationFunction: self.getFaceSearch(input:))
    }
}

extension GetFaceSearchInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetFaceSearchInput {
        return GetFaceSearchInput(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}

/// Paginate over `[GetLabelDetectionOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetLabelDetectionInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetLabelDetectionOutputResponse`
extension RekognitionClient {
    public func getLabelDetectionPaginated(input: GetLabelDetectionInput) -> ClientRuntime.PaginatorSequence<GetLabelDetectionInput, GetLabelDetectionOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetLabelDetectionInput, GetLabelDetectionOutputResponse>(input: input, inputKey: \GetLabelDetectionInput.nextToken, outputKey: \GetLabelDetectionOutputResponse.nextToken, paginationFunction: self.getLabelDetection(input:))
    }
}

extension GetLabelDetectionInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetLabelDetectionInput {
        return GetLabelDetectionInput(
            aggregateBy: self.aggregateBy,
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}

/// Paginate over `[GetPersonTrackingOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetPersonTrackingInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetPersonTrackingOutputResponse`
extension RekognitionClient {
    public func getPersonTrackingPaginated(input: GetPersonTrackingInput) -> ClientRuntime.PaginatorSequence<GetPersonTrackingInput, GetPersonTrackingOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetPersonTrackingInput, GetPersonTrackingOutputResponse>(input: input, inputKey: \GetPersonTrackingInput.nextToken, outputKey: \GetPersonTrackingOutputResponse.nextToken, paginationFunction: self.getPersonTracking(input:))
    }
}

extension GetPersonTrackingInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetPersonTrackingInput {
        return GetPersonTrackingInput(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )}
}

/// Paginate over `[GetSegmentDetectionOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetSegmentDetectionInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetSegmentDetectionOutputResponse`
extension RekognitionClient {
    public func getSegmentDetectionPaginated(input: GetSegmentDetectionInput) -> ClientRuntime.PaginatorSequence<GetSegmentDetectionInput, GetSegmentDetectionOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetSegmentDetectionInput, GetSegmentDetectionOutputResponse>(input: input, inputKey: \GetSegmentDetectionInput.nextToken, outputKey: \GetSegmentDetectionOutputResponse.nextToken, paginationFunction: self.getSegmentDetection(input:))
    }
}

extension GetSegmentDetectionInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetSegmentDetectionInput {
        return GetSegmentDetectionInput(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[GetTextDetectionOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetTextDetectionInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetTextDetectionOutputResponse`
extension RekognitionClient {
    public func getTextDetectionPaginated(input: GetTextDetectionInput) -> ClientRuntime.PaginatorSequence<GetTextDetectionInput, GetTextDetectionOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetTextDetectionInput, GetTextDetectionOutputResponse>(input: input, inputKey: \GetTextDetectionInput.nextToken, outputKey: \GetTextDetectionOutputResponse.nextToken, paginationFunction: self.getTextDetection(input:))
    }
}

extension GetTextDetectionInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetTextDetectionInput {
        return GetTextDetectionInput(
            jobId: self.jobId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListCollectionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCollectionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCollectionsOutputResponse`
extension RekognitionClient {
    public func listCollectionsPaginated(input: ListCollectionsInput) -> ClientRuntime.PaginatorSequence<ListCollectionsInput, ListCollectionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCollectionsInput, ListCollectionsOutputResponse>(input: input, inputKey: \ListCollectionsInput.nextToken, outputKey: \ListCollectionsOutputResponse.nextToken, paginationFunction: self.listCollections(input:))
    }
}

extension ListCollectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCollectionsInput {
        return ListCollectionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listCollectionsPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListCollectionsInput, Output == ListCollectionsOutputResponse {
    public func collectionIds() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.collectionIds }
    }
}

/// Paginate over `[ListDatasetEntriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatasetEntriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatasetEntriesOutputResponse`
extension RekognitionClient {
    public func listDatasetEntriesPaginated(input: ListDatasetEntriesInput) -> ClientRuntime.PaginatorSequence<ListDatasetEntriesInput, ListDatasetEntriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatasetEntriesInput, ListDatasetEntriesOutputResponse>(input: input, inputKey: \ListDatasetEntriesInput.nextToken, outputKey: \ListDatasetEntriesOutputResponse.nextToken, paginationFunction: self.listDatasetEntries(input:))
    }
}

extension ListDatasetEntriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetEntriesInput {
        return ListDatasetEntriesInput(
            containsLabels: self.containsLabels,
            datasetArn: self.datasetArn,
            hasErrors: self.hasErrors,
            labeled: self.labeled,
            maxResults: self.maxResults,
            nextToken: token,
            sourceRefContains: self.sourceRefContains
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDatasetEntriesPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListDatasetEntriesInput, Output == ListDatasetEntriesOutputResponse {
    public func datasetEntries() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.datasetEntries }
    }
}

/// Paginate over `[ListDatasetLabelsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatasetLabelsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatasetLabelsOutputResponse`
extension RekognitionClient {
    public func listDatasetLabelsPaginated(input: ListDatasetLabelsInput) -> ClientRuntime.PaginatorSequence<ListDatasetLabelsInput, ListDatasetLabelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatasetLabelsInput, ListDatasetLabelsOutputResponse>(input: input, inputKey: \ListDatasetLabelsInput.nextToken, outputKey: \ListDatasetLabelsOutputResponse.nextToken, paginationFunction: self.listDatasetLabels(input:))
    }
}

extension ListDatasetLabelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetLabelsInput {
        return ListDatasetLabelsInput(
            datasetArn: self.datasetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDatasetLabelsPaginated`
/// to access the nested member `[RekognitionClientTypes.DatasetLabelDescription]`
/// - Returns: `[RekognitionClientTypes.DatasetLabelDescription]`
extension PaginatorSequence where Input == ListDatasetLabelsInput, Output == ListDatasetLabelsOutputResponse {
    public func datasetLabelDescriptions() async throws -> [RekognitionClientTypes.DatasetLabelDescription] {
        return try await self.asyncCompactMap { item in item.datasetLabelDescriptions }
    }
}

/// Paginate over `[ListFacesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFacesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFacesOutputResponse`
extension RekognitionClient {
    public func listFacesPaginated(input: ListFacesInput) -> ClientRuntime.PaginatorSequence<ListFacesInput, ListFacesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFacesInput, ListFacesOutputResponse>(input: input, inputKey: \ListFacesInput.nextToken, outputKey: \ListFacesOutputResponse.nextToken, paginationFunction: self.listFaces(input:))
    }
}

extension ListFacesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFacesInput {
        return ListFacesInput(
            collectionId: self.collectionId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listFacesPaginated`
/// to access the nested member `[RekognitionClientTypes.Face]`
/// - Returns: `[RekognitionClientTypes.Face]`
extension PaginatorSequence where Input == ListFacesInput, Output == ListFacesOutputResponse {
    public func faces() async throws -> [RekognitionClientTypes.Face] {
        return try await self.asyncCompactMap { item in item.faces }
    }
}

/// Paginate over `[ListProjectPoliciesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListProjectPoliciesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListProjectPoliciesOutputResponse`
extension RekognitionClient {
    public func listProjectPoliciesPaginated(input: ListProjectPoliciesInput) -> ClientRuntime.PaginatorSequence<ListProjectPoliciesInput, ListProjectPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListProjectPoliciesInput, ListProjectPoliciesOutputResponse>(input: input, inputKey: \ListProjectPoliciesInput.nextToken, outputKey: \ListProjectPoliciesOutputResponse.nextToken, paginationFunction: self.listProjectPolicies(input:))
    }
}

extension ListProjectPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectPoliciesInput {
        return ListProjectPoliciesInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectArn: self.projectArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listProjectPoliciesPaginated`
/// to access the nested member `[RekognitionClientTypes.ProjectPolicy]`
/// - Returns: `[RekognitionClientTypes.ProjectPolicy]`
extension PaginatorSequence where Input == ListProjectPoliciesInput, Output == ListProjectPoliciesOutputResponse {
    public func projectPolicies() async throws -> [RekognitionClientTypes.ProjectPolicy] {
        return try await self.asyncCompactMap { item in item.projectPolicies }
    }
}

/// Paginate over `[ListStreamProcessorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStreamProcessorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStreamProcessorsOutputResponse`
extension RekognitionClient {
    public func listStreamProcessorsPaginated(input: ListStreamProcessorsInput) -> ClientRuntime.PaginatorSequence<ListStreamProcessorsInput, ListStreamProcessorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStreamProcessorsInput, ListStreamProcessorsOutputResponse>(input: input, inputKey: \ListStreamProcessorsInput.nextToken, outputKey: \ListStreamProcessorsOutputResponse.nextToken, paginationFunction: self.listStreamProcessors(input:))
    }
}

extension ListStreamProcessorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStreamProcessorsInput {
        return ListStreamProcessorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
