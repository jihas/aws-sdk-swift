// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// These interfaces allow you to apply the AWS library of pre-defined controls to your organizational units, programmatically. In AWS Control Tower, the terms "control" and "guardrail" are synonyms. . To call these APIs, you'll need to know:
///
/// * the controlIdentifier for the control--or guardrail--you are targeting.
///
/// * the ARN associated with the target organizational unit (OU), which we call the targetIdentifier.
///
///
/// To get the controlIdentifier for your AWS Control Tower control: The controlIdentifier is an ARN that is specified for each control. You can view the controlIdentifier in the console on the Control details page, as well as in the documentation. The controlIdentifier is unique in each AWS Region for each control. You can find the controlIdentifier for each Region and control in the [Tables of control metadata](https://docs.aws.amazon.com/controltower/latest/userguide/control-metadata-tables.html) in the AWS Control Tower User Guide. A quick-reference list of control identifers for the AWS Control Tower legacy Strongly recommended and Elective controls is given in [Resource identifiers for APIs and guardrails](https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html.html) in the [Controls reference guide section](https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html) of the AWS Control Tower User Guide. Remember that Mandatory controls cannot be added or removed. ARN format: arn:aws:controltower:{REGION}::control/{CONTROL_NAME} Example: arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED To get the targetIdentifier: The targetIdentifier is the ARN for an OU. In the AWS Organizations console, you can find the ARN for the OU on the Organizational unit details page associated with that OU. OU ARN format: arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId} Details and examples
///
/// * [Control API input and output examples with CLI](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html)
///
/// * [Enable controls with CloudFormation](https://docs.aws.amazon.com/controltower/latest/userguide/enable-controls.html)
///
/// * [Control metadata tables](https://docs.aws.amazon.com/controltower/latest/userguide/control-metadata-tables.html)
///
/// * [List of identifiers for legacy controls](https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html)
///
/// * [Controls reference guide](https://docs.aws.amazon.com/controltower/latest/userguide/controls.html)
///
/// * [Controls library groupings](https://docs.aws.amazon.com/controltower/latest/userguide/controls-reference.html)
///
/// * [Creating AWS Control Tower resources with AWS CloudFormation](https://docs.aws.amazon.com/controltower/latest/userguide/creating-resources-with-cloudformation.html)
///
///
/// To view the open source resource repository on GitHub, see [aws-cloudformation/aws-cloudformation-resource-providers-controltower](https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-controltower) Recording API Requests AWS Control Tower supports AWS CloudTrail, a service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. By using information collected by CloudTrail, you can determine which requests the AWS Control Tower service received, who made the request and when, and so on. For more about AWS Control Tower and its support for CloudTrail, see [Logging AWS Control Tower Actions with AWS CloudTrail](https://docs.aws.amazon.com/controltower/latest/userguide/logging-using-cloudtrail.html) in the AWS Control Tower User Guide. To learn more about CloudTrail, including how to turn it on and find your log files, see the AWS CloudTrail User Guide.
public protocol ControlTowerClientProtocol {
    /// This API call turns off a control. It starts an asynchronous operation that deletes AWS resources on the specified organizational unit and the accounts it contains. The resources will vary according to the control that you specify. For usage examples, see [ the AWS Control Tower User Guide ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
    ///
    /// - Parameter DisableControlInput : [no documentation found]
    ///
    /// - Returns: `DisableControlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ServiceQuotaExceededException` : Request would cause a service quota to be exceeded. The limit is 10 concurrent operations.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func disableControl(input: DisableControlInput) async throws -> DisableControlOutput
    /// This API call activates a control. It starts an asynchronous operation that creates AWS resources on the specified organizational unit and the accounts it contains. The resources created will vary according to the control that you specify. For usage examples, see [ the AWS Control Tower User Guide ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html)
    ///
    /// - Parameter EnableControlInput : [no documentation found]
    ///
    /// - Returns: `EnableControlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ServiceQuotaExceededException` : Request would cause a service quota to be exceeded. The limit is 10 concurrent operations.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func enableControl(input: EnableControlInput) async throws -> EnableControlOutput
    /// Returns the status of a particular EnableControl or DisableControl operation. Displays a message in case of error. Details for an operation are available for 90 days. For usage examples, see [ the AWS Control Tower User Guide ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html)
    ///
    /// - Parameter GetControlOperationInput : [no documentation found]
    ///
    /// - Returns: `GetControlOperationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getControlOperation(input: GetControlOperationInput) async throws -> GetControlOperationOutput
    /// Provides details about the enabled control. For usage examples, see [ the AWS Control Tower User Guide ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html). Returned values
    ///
    /// * TargetRegions: Shows target AWS Regions where the enabled control is available to be deployed.
    ///
    /// * StatusSummary: Provides a detailed summary of the deployment status.
    ///
    /// * DriftSummary: Provides a detailed summary of the drifted status.
    ///
    /// - Parameter GetEnabledControlInput : [no documentation found]
    ///
    /// - Returns: `GetEnabledControlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getEnabledControl(input: GetEnabledControlInput) async throws -> GetEnabledControlOutput
    /// Lists the controls enabled by AWS Control Tower on the specified organizational unit and the accounts it contains. For usage examples, see [ the AWS Control Tower User Guide ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html)
    ///
    /// - Parameter ListEnabledControlsInput : [no documentation found]
    ///
    /// - Returns: `ListEnabledControlsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listEnabledControls(input: ListEnabledControlsInput) async throws -> ListEnabledControlsOutput
}

public enum ControlTowerClientTypes {}
