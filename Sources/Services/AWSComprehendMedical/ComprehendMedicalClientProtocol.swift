// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Comprehend Medical extracts structured information from unstructured clinical text. Use these actions to gain insight in your documents. Amazon Comprehend Medical only detects entities in English language texts. Amazon Comprehend Medical places limits on the sizes of files allowed for different API operations. To learn more, see [Guidelines and quotas](https://docs.aws.amazon.com/comprehend-medical/latest/dev/comprehendmedical-quotas.html) in the Amazon Comprehend Medical Developer Guide.
public protocol ComprehendMedicalClientProtocol {
    /// Gets the properties associated with a medical entities detection job. Use this operation to get the status of a detection job.
    func describeEntitiesDetectionV2Job(input: DescribeEntitiesDetectionV2JobInput) async throws -> DescribeEntitiesDetectionV2JobOutputResponse
    /// Gets the properties associated with an InferICD10CM job. Use this operation to get the status of an inference job.
    func describeICD10CMInferenceJob(input: DescribeICD10CMInferenceJobInput) async throws -> DescribeICD10CMInferenceJobOutputResponse
    /// Gets the properties associated with a protected health information (PHI) detection job. Use this operation to get the status of a detection job.
    func describePHIDetectionJob(input: DescribePHIDetectionJobInput) async throws -> DescribePHIDetectionJobOutputResponse
    /// Gets the properties associated with an InferRxNorm job. Use this operation to get the status of an inference job.
    func describeRxNormInferenceJob(input: DescribeRxNormInferenceJobInput) async throws -> DescribeRxNormInferenceJobOutputResponse
    /// Gets the properties associated with an InferSNOMEDCT job. Use this operation to get the status of an inference job.
    func describeSNOMEDCTInferenceJob(input: DescribeSNOMEDCTInferenceJobInput) async throws -> DescribeSNOMEDCTInferenceJobOutputResponse
    /// The DetectEntities operation is deprecated. You should use the [DetectEntitiesV2] operation instead. Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information.
    @available(*, deprecated, message: "This operation is deprecated, use DetectEntitiesV2 instead.")
    func detectEntities(input: DetectEntitiesInput) async throws -> DetectEntitiesOutputResponse
    /// Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information. Amazon Comprehend Medical only detects medical entities in English language texts. The DetectEntitiesV2 operation replaces the [DetectEntities] operation. This new action uses a different model for determining the entities in your medical text and changes the way that some entities are returned in the output. You should use the DetectEntitiesV2 operation in all new applications. The DetectEntitiesV2 operation returns the Acuity and Direction entities as attributes instead of types.
    func detectEntitiesV2(input: DetectEntitiesV2Input) async throws -> DetectEntitiesV2OutputResponse
    /// Inspects the clinical text for protected health information (PHI) entities and returns the entity category, location, and confidence score for each entity. Amazon Comprehend Medical only detects entities in English language texts.
    func detectPHI(input: DetectPHIInput) async throws -> DetectPHIOutputResponse
    /// InferICD10CM detects medical conditions as entities listed in a patient record and links those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the Centers for Disease Control. Amazon Comprehend Medical only detects medical entities in English language texts.
    func inferICD10CM(input: InferICD10CMInput) async throws -> InferICD10CMOutputResponse
    /// InferRxNorm detects medications as entities listed in a patient record and links to the normalized concept identifiers in the RxNorm database from the National Library of Medicine. Amazon Comprehend Medical only detects medical entities in English language texts.
    func inferRxNorm(input: InferRxNormInput) async throws -> InferRxNormOutputResponse
    /// InferSNOMEDCT detects possible medical concepts as entities and links them to codes from the Systematized Nomenclature of Medicine, Clinical Terms (SNOMED-CT) ontology
    func inferSNOMEDCT(input: InferSNOMEDCTInput) async throws -> InferSNOMEDCTOutputResponse
    /// Gets a list of medical entity detection jobs that you have submitted.
    func listEntitiesDetectionV2Jobs(input: ListEntitiesDetectionV2JobsInput) async throws -> ListEntitiesDetectionV2JobsOutputResponse
    /// Gets a list of InferICD10CM jobs that you have submitted.
    func listICD10CMInferenceJobs(input: ListICD10CMInferenceJobsInput) async throws -> ListICD10CMInferenceJobsOutputResponse
    /// Gets a list of protected health information (PHI) detection jobs you have submitted.
    func listPHIDetectionJobs(input: ListPHIDetectionJobsInput) async throws -> ListPHIDetectionJobsOutputResponse
    /// Gets a list of InferRxNorm jobs that you have submitted.
    func listRxNormInferenceJobs(input: ListRxNormInferenceJobsInput) async throws -> ListRxNormInferenceJobsOutputResponse
    /// Gets a list of InferSNOMEDCT jobs a user has submitted.
    func listSNOMEDCTInferenceJobs(input: ListSNOMEDCTInferenceJobsInput) async throws -> ListSNOMEDCTInferenceJobsOutputResponse
    /// Starts an asynchronous medical entity detection job for a collection of documents. Use the DescribeEntitiesDetectionV2Job operation to track the status of a job.
    func startEntitiesDetectionV2Job(input: StartEntitiesDetectionV2JobInput) async throws -> StartEntitiesDetectionV2JobOutputResponse
    /// Starts an asynchronous job to detect medical conditions and link them to the ICD-10-CM ontology. Use the DescribeICD10CMInferenceJob operation to track the status of a job.
    func startICD10CMInferenceJob(input: StartICD10CMInferenceJobInput) async throws -> StartICD10CMInferenceJobOutputResponse
    /// Starts an asynchronous job to detect protected health information (PHI). Use the DescribePHIDetectionJob operation to track the status of a job.
    func startPHIDetectionJob(input: StartPHIDetectionJobInput) async throws -> StartPHIDetectionJobOutputResponse
    /// Starts an asynchronous job to detect medication entities and link them to the RxNorm ontology. Use the DescribeRxNormInferenceJob operation to track the status of a job.
    func startRxNormInferenceJob(input: StartRxNormInferenceJobInput) async throws -> StartRxNormInferenceJobOutputResponse
    /// Starts an asynchronous job to detect medical concepts and link them to the SNOMED-CT ontology. Use the DescribeSNOMEDCTInferenceJob operation to track the status of a job.
    func startSNOMEDCTInferenceJob(input: StartSNOMEDCTInferenceJobInput) async throws -> StartSNOMEDCTInferenceJobOutputResponse
    /// Stops a medical entities detection job in progress.
    func stopEntitiesDetectionV2Job(input: StopEntitiesDetectionV2JobInput) async throws -> StopEntitiesDetectionV2JobOutputResponse
    /// Stops an InferICD10CM inference job in progress.
    func stopICD10CMInferenceJob(input: StopICD10CMInferenceJobInput) async throws -> StopICD10CMInferenceJobOutputResponse
    /// Stops a protected health information (PHI) detection job in progress.
    func stopPHIDetectionJob(input: StopPHIDetectionJobInput) async throws -> StopPHIDetectionJobOutputResponse
    /// Stops an InferRxNorm inference job in progress.
    func stopRxNormInferenceJob(input: StopRxNormInferenceJobInput) async throws -> StopRxNormInferenceJobOutputResponse
    /// Stops an InferSNOMEDCT inference job in progress.
    func stopSNOMEDCTInferenceJob(input: StopSNOMEDCTInferenceJobInput) async throws -> StopSNOMEDCTInferenceJobOutputResponse
}

public enum ComprehendMedicalClientTypes {}
