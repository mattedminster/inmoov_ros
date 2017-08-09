// Auto-generated. Do not edit!

// (in-package moveit_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CollisionObject = require('../msg/CollisionObject.js');
let Grasp = require('../msg/Grasp.js');

//-----------------------------------------------------------

let MoveItErrorCodes = require('../msg/MoveItErrorCodes.js');

//-----------------------------------------------------------

class GraspPlanningRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group_name = null;
      this.target = null;
      this.support_surfaces = null;
      this.candidate_grasps = null;
      this.movable_obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = '';
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new CollisionObject();
      }
      if (initObj.hasOwnProperty('support_surfaces')) {
        this.support_surfaces = initObj.support_surfaces
      }
      else {
        this.support_surfaces = [];
      }
      if (initObj.hasOwnProperty('candidate_grasps')) {
        this.candidate_grasps = initObj.candidate_grasps
      }
      else {
        this.candidate_grasps = [];
      }
      if (initObj.hasOwnProperty('movable_obstacles')) {
        this.movable_obstacles = initObj.movable_obstacles
      }
      else {
        this.movable_obstacles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspPlanningRequest
    // Serialize message field [group_name]
    bufferOffset = _serializer.string(obj.group_name, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = CollisionObject.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [support_surfaces]
    bufferOffset = _arraySerializer.string(obj.support_surfaces, buffer, bufferOffset, null);
    // Serialize message field [candidate_grasps]
    // Serialize the length for message field [candidate_grasps]
    bufferOffset = _serializer.uint32(obj.candidate_grasps.length, buffer, bufferOffset);
    obj.candidate_grasps.forEach((val) => {
      bufferOffset = Grasp.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [movable_obstacles]
    // Serialize the length for message field [movable_obstacles]
    bufferOffset = _serializer.uint32(obj.movable_obstacles.length, buffer, bufferOffset);
    obj.movable_obstacles.forEach((val) => {
      bufferOffset = CollisionObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspPlanningRequest
    let len;
    let data = new GraspPlanningRequest(null);
    // Deserialize message field [group_name]
    data.group_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = CollisionObject.deserialize(buffer, bufferOffset);
    // Deserialize message field [support_surfaces]
    data.support_surfaces = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [candidate_grasps]
    // Deserialize array length for message field [candidate_grasps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.candidate_grasps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.candidate_grasps[i] = Grasp.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [movable_obstacles]
    // Deserialize array length for message field [movable_obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.movable_obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.movable_obstacles[i] = CollisionObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.group_name.length;
    length += CollisionObject.getMessageSize(object.target);
    object.support_surfaces.forEach((val) => {
      length += 4 + val.length;
    });
    object.candidate_grasps.forEach((val) => {
      length += Grasp.getMessageSize(val);
    });
    object.movable_obstacles.forEach((val) => {
      length += CollisionObject.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveit_msgs/GraspPlanningRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c234e9a645708cc86b57a43999746ae6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string group_name
    
    
    CollisionObject target
    
    
    
    string[] support_surfaces
    
    
    Grasp[] candidate_grasps
    
    
    
    CollisionObject[] movable_obstacles
    
    
    ================================================================================
    MSG: moveit_msgs/CollisionObject
    # a header, used for interpreting the poses
    Header header
    
    # the id of the object (name used in MoveIt)
    string id
    
    # The object type in a database of known objects
    object_recognition_msgs/ObjectType type
    
    # the the collision geometries associated with the object;
    # their poses are with respect to the specified header
    
    # solid geometric primitives
    shape_msgs/SolidPrimitive[] primitives
    geometry_msgs/Pose[] primitive_poses
    
    # meshes
    shape_msgs/Mesh[] meshes
    geometry_msgs/Pose[] mesh_poses
    
    # bounding planes (equation is specified, but the plane can be oriented using an additional pose)
    shape_msgs/Plane[] planes
    geometry_msgs/Pose[] plane_poses
    
    # Adds the object to the planning scene. If the object previously existed, it is replaced.
    byte ADD=0
    
    # Removes the object from the environment entirely (everything that matches the specified id)
    byte REMOVE=1
    
    # Append to an object that already exists in the planning scene. If the does not exist, it is added.
    byte APPEND=2
    
    # If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)
    # if solely moving the object is desired
    byte MOVE=3
    
    # Operation to be performed
    byte operation
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: object_recognition_msgs/ObjectType
    ################################################## OBJECT ID #########################################################
    
    # Contains information about the type of a found object. Those two sets of parameters together uniquely define an
    # object
    
    # The key of the found object: the unique identifier in the given db
    string key
    
    # The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
    # database. E.g., in object_recognition, it can look like: "{'type':'CouchDB', 'root':'http://localhost'}"
    # There is no conventional format for those parameters and it's nice to keep that flexibility.
    # The object_recognition_core as a generic DB type that can read those fields
    # Current examples:
    # For CouchDB:
    #   type: 'CouchDB'
    #   root: 'http://localhost:5984'
    #   collection: 'object_recognition'
    # For SQL household database:
    #   type: 'SqlHousehold'
    #   host: 'wgs36'
    #   port: 5432
    #   user: 'willow'
    #   password: 'willow'
    #   name: 'household_objects'
    #   module: 'tabletop'
    string db
    
    ================================================================================
    MSG: shape_msgs/SolidPrimitive
    # Define box, sphere, cylinder, cone 
    # All shapes are defined to have their bounding boxes centered around 0,0,0.
    
    uint8 BOX=1
    uint8 SPHERE=2
    uint8 CYLINDER=3
    uint8 CONE=4
    
    # The type of the shape
    uint8 type
    
    
    # The dimensions of the shape
    float64[] dimensions
    
    # The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array
    
    # For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
    # sides of the box.
    uint8 BOX_X=0
    uint8 BOX_Y=1
    uint8 BOX_Z=2
    
    
    # For the SPHERE type, only one component is used, and it gives the radius of
    # the sphere.
    uint8 SPHERE_RADIUS=0
    
    
    # For the CYLINDER and CONE types, the center line is oriented along
    # the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
    # of dimensions gives the height of the cylinder (cone).  The
    # CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
    # radius of the base of the cylinder (cone).  Cone and cylinder
    # primitives are defined to be circular. The tip of the cone is
    # pointing up, along +Z axis.
    
    uint8 CYLINDER_HEIGHT=0
    uint8 CYLINDER_RADIUS=1
    
    uint8 CONE_HEIGHT=0
    uint8 CONE_RADIUS=1
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: shape_msgs/Mesh
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    ================================================================================
    MSG: shape_msgs/Plane
    # Representation of a plane, using the plane equation ax + by + cz + d = 0
    
    # a := coef[0]
    # b := coef[1]
    # c := coef[2]
    # d := coef[3]
    
    float64[4] coef
    
    ================================================================================
    MSG: moveit_msgs/Grasp
    # This message contains a description of a grasp that would be used
    # with a particular end-effector to grasp an object, including how to
    # approach it, grip it, etc.  This message does not contain any
    # information about a "grasp point" (a position ON the object).
    # Whatever generates this message should have already combined
    # information about grasp points with information about the geometry
    # of the end-effector to compute the grasp_pose in this message.
    
    # A name for this grasp
    string id
    
    # The internal posture of the hand for the pre-grasp
    # only positions are used
    trajectory_msgs/JointTrajectory pre_grasp_posture
    
    # The internal posture of the hand for the grasp
    # positions and efforts are used
    trajectory_msgs/JointTrajectory grasp_posture
    
    # The position of the end-effector for the grasp.  This is the pose of
    # the "parent_link" of the end-effector, not actually the pose of any
    # link *in* the end-effector.  Typically this would be the pose of the
    # most distal wrist link before the hand (end-effector) links began.
    geometry_msgs/PoseStamped grasp_pose
    
    # The estimated probability of success for this grasp, or some other
    # measure of how "good" it is.
    float64 grasp_quality
    
    # The approach direction to take before picking an object
    GripperTranslation pre_grasp_approach
    
    # The retreat direction to take after a grasp has been completed (object is attached)
    GripperTranslation post_grasp_retreat
    
    # The retreat motion to perform when releasing the object; this information
    # is not necessary for the grasp itself, but when releasing the object,
    # the information will be necessary. The grasp used to perform a pickup
    # is returned as part of the result, so this information is available for 
    # later use.
    GripperTranslation post_place_retreat
    
    # the maximum contact force to use while grasping (<=0 to disable)
    float32 max_contact_force
    
    # an optional list of obstacles that we have semantic information about
    # and that can be touched/pushed/moved in the course of grasping
    string[] allowed_touch_objects
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: moveit_msgs/GripperTranslation
    # defines a translation for the gripper, used in pickup or place tasks
    # for example for lifting an object off a table or approaching the table for placing
    
    # the direction of the translation
    geometry_msgs/Vector3Stamped direction
    
    # the desired translation distance
    float32 desired_distance
    
    # the min distance that must be considered feasible before the
    # grasp is even attempted
    float32 min_distance
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspPlanningRequest(null);
    if (msg.group_name !== undefined) {
      resolved.group_name = msg.group_name;
    }
    else {
      resolved.group_name = ''
    }

    if (msg.target !== undefined) {
      resolved.target = CollisionObject.Resolve(msg.target)
    }
    else {
      resolved.target = new CollisionObject()
    }

    if (msg.support_surfaces !== undefined) {
      resolved.support_surfaces = msg.support_surfaces;
    }
    else {
      resolved.support_surfaces = []
    }

    if (msg.candidate_grasps !== undefined) {
      resolved.candidate_grasps = new Array(msg.candidate_grasps.length);
      for (let i = 0; i < resolved.candidate_grasps.length; ++i) {
        resolved.candidate_grasps[i] = Grasp.Resolve(msg.candidate_grasps[i]);
      }
    }
    else {
      resolved.candidate_grasps = []
    }

    if (msg.movable_obstacles !== undefined) {
      resolved.movable_obstacles = new Array(msg.movable_obstacles.length);
      for (let i = 0; i < resolved.movable_obstacles.length; ++i) {
        resolved.movable_obstacles[i] = CollisionObject.Resolve(msg.movable_obstacles[i]);
      }
    }
    else {
      resolved.movable_obstacles = []
    }

    return resolved;
    }
};

class GraspPlanningResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grasps = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('grasps')) {
        this.grasps = initObj.grasps
      }
      else {
        this.grasps = [];
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new MoveItErrorCodes();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspPlanningResponse
    // Serialize message field [grasps]
    // Serialize the length for message field [grasps]
    bufferOffset = _serializer.uint32(obj.grasps.length, buffer, bufferOffset);
    obj.grasps.forEach((val) => {
      bufferOffset = Grasp.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [error_code]
    bufferOffset = MoveItErrorCodes.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspPlanningResponse
    let len;
    let data = new GraspPlanningResponse(null);
    // Deserialize message field [grasps]
    // Deserialize array length for message field [grasps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.grasps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.grasps[i] = Grasp.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [error_code]
    data.error_code = MoveItErrorCodes.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.grasps.forEach((val) => {
      length += Grasp.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'moveit_msgs/GraspPlanningResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb8169d403b6e9f96bf61e22a50d13ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    Grasp[] grasps
    
    
    MoveItErrorCodes error_code
    
    
    ================================================================================
    MSG: moveit_msgs/Grasp
    # This message contains a description of a grasp that would be used
    # with a particular end-effector to grasp an object, including how to
    # approach it, grip it, etc.  This message does not contain any
    # information about a "grasp point" (a position ON the object).
    # Whatever generates this message should have already combined
    # information about grasp points with information about the geometry
    # of the end-effector to compute the grasp_pose in this message.
    
    # A name for this grasp
    string id
    
    # The internal posture of the hand for the pre-grasp
    # only positions are used
    trajectory_msgs/JointTrajectory pre_grasp_posture
    
    # The internal posture of the hand for the grasp
    # positions and efforts are used
    trajectory_msgs/JointTrajectory grasp_posture
    
    # The position of the end-effector for the grasp.  This is the pose of
    # the "parent_link" of the end-effector, not actually the pose of any
    # link *in* the end-effector.  Typically this would be the pose of the
    # most distal wrist link before the hand (end-effector) links began.
    geometry_msgs/PoseStamped grasp_pose
    
    # The estimated probability of success for this grasp, or some other
    # measure of how "good" it is.
    float64 grasp_quality
    
    # The approach direction to take before picking an object
    GripperTranslation pre_grasp_approach
    
    # The retreat direction to take after a grasp has been completed (object is attached)
    GripperTranslation post_grasp_retreat
    
    # The retreat motion to perform when releasing the object; this information
    # is not necessary for the grasp itself, but when releasing the object,
    # the information will be necessary. The grasp used to perform a pickup
    # is returned as part of the result, so this information is available for 
    # later use.
    GripperTranslation post_place_retreat
    
    # the maximum contact force to use while grasping (<=0 to disable)
    float32 max_contact_force
    
    # an optional list of obstacles that we have semantic information about
    # and that can be touched/pushed/moved in the course of grasping
    string[] allowed_touch_objects
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: moveit_msgs/GripperTranslation
    # defines a translation for the gripper, used in pickup or place tasks
    # for example for lifting an object off a table or approaching the table for placing
    
    # the direction of the translation
    geometry_msgs/Vector3Stamped direction
    
    # the desired translation distance
    float32 desired_distance
    
    # the min distance that must be considered feasible before the
    # grasp is even attempted
    float32 min_distance
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: moveit_msgs/MoveItErrorCodes
    int32 val
    
    # overall behavior
    int32 SUCCESS=1
    int32 FAILURE=99999
    
    int32 PLANNING_FAILED=-1
    int32 INVALID_MOTION_PLAN=-2
    int32 MOTION_PLAN_INVALIDATED_BY_ENVIRONMENT_CHANGE=-3
    int32 CONTROL_FAILED=-4
    int32 UNABLE_TO_AQUIRE_SENSOR_DATA=-5
    int32 TIMED_OUT=-6
    int32 PREEMPTED=-7
    
    # planning & kinematics request errors
    int32 START_STATE_IN_COLLISION=-10
    int32 START_STATE_VIOLATES_PATH_CONSTRAINTS=-11
    
    int32 GOAL_IN_COLLISION=-12
    int32 GOAL_VIOLATES_PATH_CONSTRAINTS=-13
    int32 GOAL_CONSTRAINTS_VIOLATED=-14
    
    int32 INVALID_GROUP_NAME=-15
    int32 INVALID_GOAL_CONSTRAINTS=-16
    int32 INVALID_ROBOT_STATE=-17
    int32 INVALID_LINK_NAME=-18
    int32 INVALID_OBJECT_NAME=-19
    
    # system errors
    int32 FRAME_TRANSFORM_FAILURE=-21
    int32 COLLISION_CHECKING_UNAVAILABLE=-22
    int32 ROBOT_STATE_STALE=-23
    int32 SENSOR_INFO_STALE=-24
    
    # kinematics errors
    int32 NO_IK_SOLUTION=-31
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspPlanningResponse(null);
    if (msg.grasps !== undefined) {
      resolved.grasps = new Array(msg.grasps.length);
      for (let i = 0; i < resolved.grasps.length; ++i) {
        resolved.grasps[i] = Grasp.Resolve(msg.grasps[i]);
      }
    }
    else {
      resolved.grasps = []
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = MoveItErrorCodes.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new MoveItErrorCodes()
    }

    return resolved;
    }
};

module.exports = {
  Request: GraspPlanningRequest,
  Response: GraspPlanningResponse,
  md5sum() { return '6c1eec2555db251f88e13e06d2a82f0f'; },
  datatype() { return 'moveit_msgs/GraspPlanning'; }
};
