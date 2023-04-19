// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Provides APIs for creating and managing SageMaker geospatial resources.
public protocol SageMakerGeospatialClientProtocol {
    /// Use this operation to delete an Earth Observation job.
    func deleteEarthObservationJob(input: DeleteEarthObservationJobInput) async throws -> DeleteEarthObservationJobOutputResponse
    /// Use this operation to delete a Vector Enrichment job.
    func deleteVectorEnrichmentJob(input: DeleteVectorEnrichmentJobInput) async throws -> DeleteVectorEnrichmentJobOutputResponse
    /// Use this operation to export results of an Earth Observation job and optionally source images used as input to the EOJ to an Amazon S3 location.
    func exportEarthObservationJob(input: ExportEarthObservationJobInput) async throws -> ExportEarthObservationJobOutputResponse
    /// Use this operation to copy results of a Vector Enrichment job to an Amazon S3 location.
    func exportVectorEnrichmentJob(input: ExportVectorEnrichmentJobInput) async throws -> ExportVectorEnrichmentJobOutputResponse
    /// Get the details for a previously initiated Earth Observation job.
    func getEarthObservationJob(input: GetEarthObservationJobInput) async throws -> GetEarthObservationJobOutputResponse
    /// Use this operation to get details of a specific raster data collection.
    func getRasterDataCollection(input: GetRasterDataCollectionInput) async throws -> GetRasterDataCollectionOutputResponse
    /// Gets a web mercator tile for the given Earth Observation job.
    func getTile(input: GetTileInput) async throws -> GetTileOutputResponse
    /// Retrieves details of a Vector Enrichment Job for a given job Amazon Resource Name (ARN).
    func getVectorEnrichmentJob(input: GetVectorEnrichmentJobInput) async throws -> GetVectorEnrichmentJobOutputResponse
    /// Use this operation to get a list of the Earth Observation jobs associated with the calling Amazon Web Services account.
    func listEarthObservationJobs(input: ListEarthObservationJobsInput) async throws -> ListEarthObservationJobsOutputResponse
    /// Use this operation to get raster data collections.
    func listRasterDataCollections(input: ListRasterDataCollectionsInput) async throws -> ListRasterDataCollectionsOutputResponse
    /// Lists the tags attached to the resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Retrieves a list of vector enrichment jobs.
    func listVectorEnrichmentJobs(input: ListVectorEnrichmentJobsInput) async throws -> ListVectorEnrichmentJobsOutputResponse
    /// Allows you run image query on a specific raster data collection to get a list of the satellite imagery matching the selected filters.
    func searchRasterDataCollection(input: SearchRasterDataCollectionInput) async throws -> SearchRasterDataCollectionOutputResponse
    /// Use this operation to create an Earth observation job.
    func startEarthObservationJob(input: StartEarthObservationJobInput) async throws -> StartEarthObservationJobOutputResponse
    /// Creates a Vector Enrichment job for the supplied job type. Currently, there are two supported job types: reverse geocoding and map matching.
    func startVectorEnrichmentJob(input: StartVectorEnrichmentJobInput) async throws -> StartVectorEnrichmentJobOutputResponse
    /// Use this operation to stop an existing earth observation job.
    func stopEarthObservationJob(input: StopEarthObservationJobInput) async throws -> StopEarthObservationJobOutputResponse
    /// Stops the Vector Enrichment job for a given job ARN.
    func stopVectorEnrichmentJob(input: StopVectorEnrichmentJobInput) async throws -> StopVectorEnrichmentJobOutputResponse
    /// The resource you want to tag.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// The resource you want to untag.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public protocol SageMakerGeospatialClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SageMakerGeospatialClientTypes {}
