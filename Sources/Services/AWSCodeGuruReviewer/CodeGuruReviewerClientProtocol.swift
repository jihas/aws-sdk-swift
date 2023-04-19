// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// This section provides documentation for the Amazon CodeGuru Reviewer API operations. CodeGuru Reviewer is a service that uses program analysis and machine learning to detect potential defects that are difficult for developers to find and recommends fixes in your Java and Python code. By proactively detecting and providing recommendations for addressing code defects and implementing best practices, CodeGuru Reviewer improves the overall quality and maintainability of your code base during the code review stage. For more information about CodeGuru Reviewer, see the [Amazon CodeGuru Reviewer User Guide](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html). To improve the security of your CodeGuru Reviewer API calls, you can establish a private connection between your VPC and CodeGuru Reviewer by creating an interface VPC endpoint. For more information, see [CodeGuru Reviewer and interface VPC endpoints (Amazon Web Services PrivateLink)](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html) in the Amazon CodeGuru Reviewer User Guide.
public protocol CodeGuruReviewerClientProtocol {
    /// Use to associate an Amazon Web Services CodeCommit repository or a repository managed by Amazon Web Services CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru Reviewer reviews source code changes in the repository's pull requests and provides automatic recommendations. You can view recommendations using the CodeGuru Reviewer console. For more information, see [Recommendations in Amazon CodeGuru Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html) in the Amazon CodeGuru Reviewer User Guide. If you associate a CodeCommit or S3 repository, it must be in the same Amazon Web Services Region and Amazon Web Services account where its CodeGuru Reviewer code reviews are configured. Bitbucket and GitHub Enterprise Server repositories are managed by Amazon Web Services CodeStar Connections to connect to CodeGuru Reviewer. For more information, see [Associate a repository](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html) in the Amazon CodeGuru Reviewer User Guide. You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For more information, see [Getting started with CodeGuru Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html) in the CodeGuru Reviewer User Guide.
    func associateRepository(input: AssociateRepositoryInput) async throws -> AssociateRepositoryOutputResponse
    /// Use to create a code review with a [CodeReviewType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html) of RepositoryAnalysis. This type of code review analyzes all code under a specified branch in an associated repository. PullRequest code reviews are automatically triggered by a pull request.
    func createCodeReview(input: CreateCodeReviewInput) async throws -> CreateCodeReviewOutputResponse
    /// Returns the metadata associated with the code review along with its status.
    func describeCodeReview(input: DescribeCodeReviewInput) async throws -> DescribeCodeReviewOutputResponse
    /// Describes the customer feedback for a CodeGuru Reviewer recommendation.
    func describeRecommendationFeedback(input: DescribeRecommendationFeedbackInput) async throws -> DescribeRecommendationFeedbackOutputResponse
    /// Returns a [RepositoryAssociation](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html) object that contains information about the requested repository association.
    func describeRepositoryAssociation(input: DescribeRepositoryAssociationInput) async throws -> DescribeRepositoryAssociationOutputResponse
    /// Removes the association between Amazon CodeGuru Reviewer and a repository.
    func disassociateRepository(input: DisassociateRepositoryInput) async throws -> DisassociateRepositoryOutputResponse
    /// Lists all the code reviews that the customer has created in the past 90 days.
    func listCodeReviews(input: ListCodeReviewsInput) async throws -> ListCodeReviewsOutputResponse
    /// Returns a list of [RecommendationFeedbackSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html) objects that contain customer recommendation feedback for all CodeGuru Reviewer users.
    func listRecommendationFeedback(input: ListRecommendationFeedbackInput) async throws -> ListRecommendationFeedbackOutputResponse
    /// Returns the list of all recommendations for a completed code review.
    func listRecommendations(input: ListRecommendationsInput) async throws -> ListRecommendationsOutputResponse
    /// Returns a list of [RepositoryAssociationSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html) objects that contain summary information about a repository association. You can filter the returned list by [ProviderType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType), [Name](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name), [State](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State), and [Owner](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner).
    func listRepositoryAssociations(input: ListRepositoryAssociationsInput) async throws -> ListRepositoryAssociationsOutputResponse
    /// Returns the list of tags associated with an associated repository resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten.
    func putRecommendationFeedback(input: PutRecommendationFeedbackInput) async throws -> PutRecommendationFeedbackOutputResponse
    /// Adds one or more tags to an associated repository.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag from an associated repository.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public protocol CodeGuruReviewerClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum CodeGuruReviewerClientTypes {}
