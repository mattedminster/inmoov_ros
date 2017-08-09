
"use strict";

let PlaceActionFeedback = require('./PlaceActionFeedback.js');
let MoveGroupFeedback = require('./MoveGroupFeedback.js');
let ExecuteTrajectoryActionResult = require('./ExecuteTrajectoryActionResult.js');
let MoveGroupGoal = require('./MoveGroupGoal.js');
let PickupActionResult = require('./PickupActionResult.js');
let PickupResult = require('./PickupResult.js');
let PlaceResult = require('./PlaceResult.js');
let PlaceFeedback = require('./PlaceFeedback.js');
let MoveGroupActionFeedback = require('./MoveGroupActionFeedback.js');
let MoveGroupAction = require('./MoveGroupAction.js');
let PickupAction = require('./PickupAction.js');
let MoveGroupActionGoal = require('./MoveGroupActionGoal.js');
let ExecuteTrajectoryActionGoal = require('./ExecuteTrajectoryActionGoal.js');
let ExecuteTrajectoryResult = require('./ExecuteTrajectoryResult.js');
let PickupActionGoal = require('./PickupActionGoal.js');
let PickupGoal = require('./PickupGoal.js');
let PickupActionFeedback = require('./PickupActionFeedback.js');
let ExecuteTrajectoryFeedback = require('./ExecuteTrajectoryFeedback.js');
let PlaceAction = require('./PlaceAction.js');
let PlaceGoal = require('./PlaceGoal.js');
let PlaceActionGoal = require('./PlaceActionGoal.js');
let PickupFeedback = require('./PickupFeedback.js');
let ExecuteTrajectoryGoal = require('./ExecuteTrajectoryGoal.js');
let ExecuteTrajectoryAction = require('./ExecuteTrajectoryAction.js');
let PlaceActionResult = require('./PlaceActionResult.js');
let MoveGroupResult = require('./MoveGroupResult.js');
let ExecuteTrajectoryActionFeedback = require('./ExecuteTrajectoryActionFeedback.js');
let MoveGroupActionResult = require('./MoveGroupActionResult.js');
let JointLimits = require('./JointLimits.js');
let ConstraintEvalResult = require('./ConstraintEvalResult.js');
let PlannerParams = require('./PlannerParams.js');
let MotionPlanDetailedResponse = require('./MotionPlanDetailedResponse.js');
let TrajectoryConstraints = require('./TrajectoryConstraints.js');
let PlanningScene = require('./PlanningScene.js');
let DisplayRobotState = require('./DisplayRobotState.js');
let LinkPadding = require('./LinkPadding.js');
let PlanningOptions = require('./PlanningOptions.js');
let RobotTrajectory = require('./RobotTrajectory.js');
let PlaceLocation = require('./PlaceLocation.js');
let MotionPlanResponse = require('./MotionPlanResponse.js');
let Constraints = require('./Constraints.js');
let OrientationConstraint = require('./OrientationConstraint.js');
let OrientedBoundingBox = require('./OrientedBoundingBox.js');
let VisibilityConstraint = require('./VisibilityConstraint.js');
let AttachedCollisionObject = require('./AttachedCollisionObject.js');
let PlannerInterfaceDescription = require('./PlannerInterfaceDescription.js');
let AllowedCollisionEntry = require('./AllowedCollisionEntry.js');
let CostSource = require('./CostSource.js');
let ContactInformation = require('./ContactInformation.js');
let PositionConstraint = require('./PositionConstraint.js');
let PlanningSceneWorld = require('./PlanningSceneWorld.js');
let PositionIKRequest = require('./PositionIKRequest.js');
let BoundingVolume = require('./BoundingVolume.js');
let DisplayTrajectory = require('./DisplayTrajectory.js');
let MotionPlanRequest = require('./MotionPlanRequest.js');
let RobotState = require('./RobotState.js');
let CollisionObject = require('./CollisionObject.js');
let PlanningSceneComponents = require('./PlanningSceneComponents.js');
let AllowedCollisionMatrix = require('./AllowedCollisionMatrix.js');
let JointConstraint = require('./JointConstraint.js');
let KinematicSolverInfo = require('./KinematicSolverInfo.js');
let MoveItErrorCodes = require('./MoveItErrorCodes.js');
let GripperTranslation = require('./GripperTranslation.js');
let WorkspaceParameters = require('./WorkspaceParameters.js');
let LinkScale = require('./LinkScale.js');
let ObjectColor = require('./ObjectColor.js');
let Grasp = require('./Grasp.js');

module.exports = {
  PlaceActionFeedback: PlaceActionFeedback,
  MoveGroupFeedback: MoveGroupFeedback,
  ExecuteTrajectoryActionResult: ExecuteTrajectoryActionResult,
  MoveGroupGoal: MoveGroupGoal,
  PickupActionResult: PickupActionResult,
  PickupResult: PickupResult,
  PlaceResult: PlaceResult,
  PlaceFeedback: PlaceFeedback,
  MoveGroupActionFeedback: MoveGroupActionFeedback,
  MoveGroupAction: MoveGroupAction,
  PickupAction: PickupAction,
  MoveGroupActionGoal: MoveGroupActionGoal,
  ExecuteTrajectoryActionGoal: ExecuteTrajectoryActionGoal,
  ExecuteTrajectoryResult: ExecuteTrajectoryResult,
  PickupActionGoal: PickupActionGoal,
  PickupGoal: PickupGoal,
  PickupActionFeedback: PickupActionFeedback,
  ExecuteTrajectoryFeedback: ExecuteTrajectoryFeedback,
  PlaceAction: PlaceAction,
  PlaceGoal: PlaceGoal,
  PlaceActionGoal: PlaceActionGoal,
  PickupFeedback: PickupFeedback,
  ExecuteTrajectoryGoal: ExecuteTrajectoryGoal,
  ExecuteTrajectoryAction: ExecuteTrajectoryAction,
  PlaceActionResult: PlaceActionResult,
  MoveGroupResult: MoveGroupResult,
  ExecuteTrajectoryActionFeedback: ExecuteTrajectoryActionFeedback,
  MoveGroupActionResult: MoveGroupActionResult,
  JointLimits: JointLimits,
  ConstraintEvalResult: ConstraintEvalResult,
  PlannerParams: PlannerParams,
  MotionPlanDetailedResponse: MotionPlanDetailedResponse,
  TrajectoryConstraints: TrajectoryConstraints,
  PlanningScene: PlanningScene,
  DisplayRobotState: DisplayRobotState,
  LinkPadding: LinkPadding,
  PlanningOptions: PlanningOptions,
  RobotTrajectory: RobotTrajectory,
  PlaceLocation: PlaceLocation,
  MotionPlanResponse: MotionPlanResponse,
  Constraints: Constraints,
  OrientationConstraint: OrientationConstraint,
  OrientedBoundingBox: OrientedBoundingBox,
  VisibilityConstraint: VisibilityConstraint,
  AttachedCollisionObject: AttachedCollisionObject,
  PlannerInterfaceDescription: PlannerInterfaceDescription,
  AllowedCollisionEntry: AllowedCollisionEntry,
  CostSource: CostSource,
  ContactInformation: ContactInformation,
  PositionConstraint: PositionConstraint,
  PlanningSceneWorld: PlanningSceneWorld,
  PositionIKRequest: PositionIKRequest,
  BoundingVolume: BoundingVolume,
  DisplayTrajectory: DisplayTrajectory,
  MotionPlanRequest: MotionPlanRequest,
  RobotState: RobotState,
  CollisionObject: CollisionObject,
  PlanningSceneComponents: PlanningSceneComponents,
  AllowedCollisionMatrix: AllowedCollisionMatrix,
  JointConstraint: JointConstraint,
  KinematicSolverInfo: KinematicSolverInfo,
  MoveItErrorCodes: MoveItErrorCodes,
  GripperTranslation: GripperTranslation,
  WorkspaceParameters: WorkspaceParameters,
  LinkScale: LinkScale,
  ObjectColor: ObjectColor,
  Grasp: Grasp,
};
