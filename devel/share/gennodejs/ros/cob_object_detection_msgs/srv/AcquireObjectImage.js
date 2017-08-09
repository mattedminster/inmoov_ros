// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AcquireObjectImageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_name = null;
      this.reset_image_counter = null;
      this.pose = null;
      this.sdh_joints = null;
    }
    else {
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
      if (initObj.hasOwnProperty('reset_image_counter')) {
        this.reset_image_counter = initObj.reset_image_counter
      }
      else {
        this.reset_image_counter = false;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('sdh_joints')) {
        this.sdh_joints = initObj.sdh_joints
      }
      else {
        this.sdh_joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AcquireObjectImageRequest
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    // Serialize message field [reset_image_counter]
    bufferOffset = _serializer.bool(obj.reset_image_counter, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [sdh_joints]
    // Serialize the length for message field [sdh_joints]
    bufferOffset = _serializer.uint32(obj.sdh_joints.length, buffer, bufferOffset);
    obj.sdh_joints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AcquireObjectImageRequest
    let len;
    let data = new AcquireObjectImageRequest(null);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reset_image_counter]
    data.reset_image_counter = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [sdh_joints]
    // Deserialize array length for message field [sdh_joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sdh_joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sdh_joints[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_name.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    object.sdh_joints.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/AcquireObjectImageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a834da64b488488418ecf10d2737befd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_name
    bool reset_image_counter
    geometry_msgs/PoseStamped pose
    geometry_msgs/PoseStamped[] sdh_joints
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AcquireObjectImageRequest(null);
    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    if (msg.reset_image_counter !== undefined) {
      resolved.reset_image_counter = msg.reset_image_counter;
    }
    else {
      resolved.reset_image_counter = false
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.sdh_joints !== undefined) {
      resolved.sdh_joints = new Array(msg.sdh_joints.length);
      for (let i = 0; i < resolved.sdh_joints.length; ++i) {
        resolved.sdh_joints[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.sdh_joints[i]);
      }
    }
    else {
      resolved.sdh_joints = []
    }

    return resolved;
    }
};

class AcquireObjectImageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AcquireObjectImageResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AcquireObjectImageResponse
    let len;
    let data = new AcquireObjectImageResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/AcquireObjectImageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AcquireObjectImageResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AcquireObjectImageRequest,
  Response: AcquireObjectImageResponse,
  md5sum() { return 'a834da64b488488418ecf10d2737befd'; },
  datatype() { return 'cob_object_detection_msgs/AcquireObjectImage'; }
};
