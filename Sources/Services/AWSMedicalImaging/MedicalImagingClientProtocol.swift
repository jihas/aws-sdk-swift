// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This is the AWS HealthImaging API Reference. AWS HealthImaging is a HIPAA-eligible service that helps health care providers and their medical imaging ISV partners store, transform, and apply machine learning to medical images. For an introduction to the service, see the [ AWS HealthImaging Developer Guide ](https://docs.aws.amazon.com/healthimaging/latest/devguide/what-is.html). We recommend using one of the AWS Software Development Kits (SDKs) for your programming language, as they take care of request authentication, serialization, and connection management. For more information, see [Tools to build on AWS](http://aws.amazon.com/developer/tools). For information about using HealthImaging API actions in one of the language-specific AWS SDKs, refer to the See Also link at the end of each section that describes an API action or data type. The following sections list AWS HealthImaging API actions categorized according to functionality. Links are provided to actions within this Reference, along with links back to corresponding sections in the AWS HealthImaging Developer Guide where you can view console procedures and CLI/SDK code examples. Data store actions
///
/// * [CreateDatastore](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_CreateDatastore.html) – See [Creating a data store](https://docs.aws.amazon.com/healthimaging/latest/devguide/create-data-store.html).
///
/// * [GetDatastore](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetDatastore.html) – See [Getting data store properties](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-data-store.html).
///
/// * [ListDatastores](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListDatastores.html) – See [Listing data stores](https://docs.aws.amazon.com/healthimaging/latest/devguide/list-data-stores.html).
///
/// * [DeleteDatastore](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_DeleteDatastore.html) – See [Deleting a data store](https://docs.aws.amazon.com/healthimaging/latest/devguide/delete-data-store.html).
///
///
/// Import job actions
///
/// * [StartDICOMImportJob](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_StartDICOMImportJob.html) – See [Starting an import job](https://docs.aws.amazon.com/healthimaging/latest/devguide/start-dicom-import-job.html).
///
/// * [GetDICOMImportJob](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetDICOMImportJob.html) – See [Getting import job properties](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-dicom-import-job.html).
///
/// * [ListDICOMImportJobs](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListDICOMImportJobs.html) – See [Listing import jobs](https://docs.aws.amazon.com/healthimaging/latest/devguide/list-dicom-import-jobs.html).
///
///
/// Image set access actions
///
/// * [SearchImageSets](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_SearchImageSets.html) – See [Searching image sets](https://docs.aws.amazon.com/healthimaging/latest/devguide/search-image-sets.html).
///
/// * [GetImageSet](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageSet.html) – See [Getting image set properties](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-set-properties.html).
///
/// * [GetImageSetMetadata](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageSetMetadata.html) – See [Getting image set metadata](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-set-metadata.html).
///
/// * [GetImageFrame](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageFrame.html) – See [Getting image set pixel data](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-frame.html).
///
///
/// Image set modification actions
///
/// * [ListImageSetVersions](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListImageSetVersions.html) – See [Listing image set versions](https://docs.aws.amazon.com/healthimaging/latest/devguide/list-image-set-versions.html).
///
/// * [UpdateImageSetMetadata](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_UpdateImageSetMetadata.html) – See [Updating image set metadata](https://docs.aws.amazon.com/healthimaging/latest/devguide/update-image-set-metadata.html).
///
/// * [CopyImageSet](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_CopyImageSet.html) – See [Copying an image set](https://docs.aws.amazon.com/healthimaging/latest/devguide/copy-image-set.html).
///
/// * [DeleteImageSet](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_DeleteImageSet.html) – See [Deleting an image set](https://docs.aws.amazon.com/healthimaging/latest/devguide/delete-image-set.html).
///
///
/// Tagging actions
///
/// * [TagResource](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_TagResource.html) – See [Tagging a data store](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-data-store.html) and [Tagging an image set](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-image-set.html).
///
/// * [ListTagsForResource](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListTagsForResource.html) – See [Tagging a data store](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-data-store.html) and [Tagging an image set](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-image-set.html).
///
/// * [UntagResource](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_UntagResource.html) – See [Tagging a data store](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-data-store.html) and [Tagging an image set](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-image-set.html).
public protocol MedicalImagingClientProtocol {
    /// Copy an image set.
    ///
    /// - Parameter CopyImageSetInput : [no documentation found]
    ///
    /// - Returns: `CopyImageSetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ServiceQuotaExceededException` : The request caused a service quota to be exceeded.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func copyImageSet(input: CopyImageSetInput) async throws -> CopyImageSetOutput
    /// Create a data store.
    ///
    /// - Parameter CreateDatastoreInput : [no documentation found]
    ///
    /// - Returns: `CreateDatastoreOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ServiceQuotaExceededException` : The request caused a service quota to be exceeded.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func createDatastore(input: CreateDatastoreInput) async throws -> CreateDatastoreOutput
    /// Delete a data store. Before a data store can be deleted, you must first delete all image sets within it.
    ///
    /// - Parameter DeleteDatastoreInput : [no documentation found]
    ///
    /// - Returns: `DeleteDatastoreOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func deleteDatastore(input: DeleteDatastoreInput) async throws -> DeleteDatastoreOutput
    /// Delete an image set.
    ///
    /// - Parameter DeleteImageSetInput : [no documentation found]
    ///
    /// - Returns: `DeleteImageSetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func deleteImageSet(input: DeleteImageSetInput) async throws -> DeleteImageSetOutput
    /// Get data store properties.
    ///
    /// - Parameter GetDatastoreInput : [no documentation found]
    ///
    /// - Returns: `GetDatastoreOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func getDatastore(input: GetDatastoreInput) async throws -> GetDatastoreOutput
    /// Get the import job properties to learn more about the job or job progress.
    ///
    /// - Parameter GetDICOMImportJobInput : [no documentation found]
    ///
    /// - Returns: `GetDICOMImportJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func getDICOMImportJob(input: GetDICOMImportJobInput) async throws -> GetDICOMImportJobOutput
    /// Get an image frame (pixel data) for an image set.
    ///
    /// - Parameter GetImageFrameInput : [no documentation found]
    ///
    /// - Returns: `GetImageFrameOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func getImageFrame(input: GetImageFrameInput) async throws -> GetImageFrameOutput
    /// Get image set properties.
    ///
    /// - Parameter GetImageSetInput : [no documentation found]
    ///
    /// - Returns: `GetImageSetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func getImageSet(input: GetImageSetInput) async throws -> GetImageSetOutput
    /// Get metadata attributes for an image set.
    ///
    /// - Parameter GetImageSetMetadataInput : [no documentation found]
    ///
    /// - Returns: `GetImageSetMetadataOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func getImageSetMetadata(input: GetImageSetMetadataInput) async throws -> GetImageSetMetadataOutput
    /// List data stores.
    ///
    /// - Parameter ListDatastoresInput : [no documentation found]
    ///
    /// - Returns: `ListDatastoresOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func listDatastores(input: ListDatastoresInput) async throws -> ListDatastoresOutput
    /// List import jobs created for a specific data store.
    ///
    /// - Parameter ListDICOMImportJobsInput : [no documentation found]
    ///
    /// - Returns: `ListDICOMImportJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func listDICOMImportJobs(input: ListDICOMImportJobsInput) async throws -> ListDICOMImportJobsOutput
    /// List image set versions.
    ///
    /// - Parameter ListImageSetVersionsInput : [no documentation found]
    ///
    /// - Returns: `ListImageSetVersionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func listImageSetVersions(input: ListImageSetVersionsInput) async throws -> ListImageSetVersionsOutput
    /// Lists all tags associated with a medical imaging resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Search image sets based on defined input attributes. SearchImageSets accepts a single search query parameter and returns a paginated response of all image sets that have the matching criteria. All range queries must be input as (lowerBound, upperBound). SearchImageSets uses the updatedAt field for sorting in decreasing order from latest to oldest.
    ///
    /// - Parameter SearchImageSetsInput : [no documentation found]
    ///
    /// - Returns: `SearchImageSetsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func searchImageSets(input: SearchImageSetsInput) async throws -> SearchImageSetsOutput
    /// Start importing bulk data into an ACTIVE data store. The import job imports DICOM P10 files found in the S3 prefix specified by the inputS3Uri parameter. The import job stores processing results in the file specified by the outputS3Uri parameter.
    ///
    /// - Parameter StartDICOMImportJobInput : [no documentation found]
    ///
    /// - Returns: `StartDICOMImportJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ServiceQuotaExceededException` : The request caused a service quota to be exceeded.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func startDICOMImportJob(input: StartDICOMImportJobInput) async throws -> StartDICOMImportJobOutput
    /// Adds a user-specifed key and value tag to a medical imaging resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes tags from a medical imaging resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Update image set metadata attributes.
    ///
    /// - Parameter UpdateImageSetMetadataInput : [no documentation found]
    ///
    /// - Returns: `UpdateImageSetMetadataOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred during processing of the request.
    /// - `ResourceNotFoundException` : The request references a resource which does not exist.
    /// - `ServiceQuotaExceededException` : The request caused a service quota to be exceeded.
    /// - `ThrottlingException` : The request was denied due to throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints set by the service.
    func updateImageSetMetadata(input: UpdateImageSetMetadataInput) async throws -> UpdateImageSetMetadataOutput
}

public enum MedicalImagingClientTypes {}
