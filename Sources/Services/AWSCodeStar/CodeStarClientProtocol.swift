// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// AWS CodeStar This is the API reference for AWS CodeStar. This reference provides descriptions of the operations and data types for the AWS CodeStar API along with usage examples. You can use the AWS CodeStar API to work with: Projects and their resources, by calling the following:
///
/// * DeleteProject, which deletes a project.
///
/// * DescribeProject, which lists the attributes of a project.
///
/// * ListProjects, which lists all projects associated with your AWS account.
///
/// * ListResources, which lists the resources associated with a project.
///
/// * ListTagsForProject, which lists the tags associated with a project.
///
/// * TagProject, which adds tags to a project.
///
/// * UntagProject, which removes tags from a project.
///
/// * UpdateProject, which updates the attributes of a project.
///
///
/// Teams and team members, by calling the following:
///
/// * AssociateTeamMember, which adds an IAM user to the team for a project.
///
/// * DisassociateTeamMember, which removes an IAM user from the team for a project.
///
/// * ListTeamMembers, which lists all the IAM users in the team for a project, including their roles and attributes.
///
/// * UpdateTeamMember, which updates a team member's attributes in a project.
///
///
/// Users, by calling the following:
///
/// * CreateUserProfile, which creates a user profile that contains data associated with the user across all projects.
///
/// * DeleteUserProfile, which deletes all user profile information across all projects.
///
/// * DescribeUserProfile, which describes the profile of a user.
///
/// * ListUserProfiles, which lists all user profiles.
///
/// * UpdateUserProfile, which updates the profile for a user.
public protocol CodeStarClientProtocol {
    /// Adds an IAM user to the team for an AWS CodeStar project.
    func associateTeamMember(input: AssociateTeamMemberInput) async throws -> AssociateTeamMemberOutputResponse
    /// Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.
    func createProject(input: CreateProjectInput) async throws -> CreateProjectOutputResponse
    /// Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
    func createUserProfile(input: CreateUserProfileInput) async throws -> CreateUserProfileOutputResponse
    /// Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.
    func deleteProject(input: DeleteProjectInput) async throws -> DeleteProjectOutputResponse
    /// Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.
    func deleteUserProfile(input: DeleteUserProfileInput) async throws -> DeleteUserProfileOutputResponse
    /// Describes a project and its resources.
    func describeProject(input: DescribeProjectInput) async throws -> DescribeProjectOutputResponse
    /// Describes a user in AWS CodeStar and the user attributes across all projects.
    func describeUserProfile(input: DescribeUserProfileInput) async throws -> DescribeUserProfileOutputResponse
    /// Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.
    func disassociateTeamMember(input: DisassociateTeamMemberInput) async throws -> DisassociateTeamMemberOutputResponse
    /// Lists all projects in AWS CodeStar associated with your AWS account.
    func listProjects(input: ListProjectsInput) async throws -> ListProjectsOutputResponse
    /// Lists resources associated with a project in AWS CodeStar.
    func listResources(input: ListResourcesInput) async throws -> ListResourcesOutputResponse
    /// Gets the tags for a project.
    func listTagsForProject(input: ListTagsForProjectInput) async throws -> ListTagsForProjectOutputResponse
    /// Lists all team members associated with a project.
    func listTeamMembers(input: ListTeamMembersInput) async throws -> ListTeamMembersOutputResponse
    /// Lists all the user profiles configured for your AWS account in AWS CodeStar.
    func listUserProfiles(input: ListUserProfilesInput) async throws -> ListUserProfilesOutputResponse
    /// Adds tags to a project.
    func tagProject(input: TagProjectInput) async throws -> TagProjectOutputResponse
    /// Removes tags from a project.
    func untagProject(input: UntagProjectInput) async throws -> UntagProjectOutputResponse
    /// Updates a project in AWS CodeStar.
    func updateProject(input: UpdateProjectInput) async throws -> UpdateProjectOutputResponse
    /// Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.
    func updateTeamMember(input: UpdateTeamMemberInput) async throws -> UpdateTeamMemberOutputResponse
    /// Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
    func updateUserProfile(input: UpdateUserProfileInput) async throws -> UpdateUserProfileOutputResponse
}

public protocol CodeStarClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum CodeStarClientTypes {}
