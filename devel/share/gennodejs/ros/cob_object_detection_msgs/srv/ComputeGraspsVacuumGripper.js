// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Detection = require('../msg/Detection.js');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ComputeGraspsVacuumGripperRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object = null;
      this.external_reference_frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = new Detection();
      }
      if (initObj.hasOwnProperty('external_reference_frame_id')) {
        this.external_reference_frame_id = initObj.external_reference_frame_id
      }
      else {
        this.external_reference_frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeGraspsVacuumGripperRequest
    // Serialize message field [object]
    bufferOffset = Detection.serialize(obj.object, buffer, bufferOffset);
    // Serialize message field [external_reference_frame_id]
    bufferOffset = _serializer.string(obj.external_reference_frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeGraspsVacuumGripperRequest
    let len;
    let data = new ComputeGraspsVacuumGripperRequest(null);
    // Deserialize message field [object]
    data.object = Detection.deserialize(buffer, bufferOffset);
    // Deserialize message field [external_reference_frame_id]
    data.external_reference_frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Detection.getMessageSize(object.object);
    length += object.external_reference_frame_id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/ComputeGraspsVacuumGripperRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf22e5a7f83f0b75d5ad474571594809';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    cob_object_detection_msgs/Detection object
    
    
    string external_reference_frame_id
    
    ================================================================================
    MSG: cob_object_detection_msgs/Detection
    Header header
    string label
    int32 id
    string detector
    float32 score
    Mask mask
    geometry_msgs/PoseStamped pose
    geometry_msgs/Point bounding_box_lwh
    
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
    MSG: cob_object_detection_msgs/Mask
    # this message is used to mark where an object is present in an image
    # this can be done either by a roi region on the image (less precise) or a mask (more precise)
    
    Rect roi
    
    # in the case when mask is used, 'roi' specifies the image region and 'mask'
    # (which should be of the same size) a binary mask in that region
    sensor_msgs/Image mask
    
    # in the case there is 3D data available, 'indices' are used to index the 
    # part of the point cloud representing the object
    #pcl/PointIndices indices
    
    ================================================================================
    MSG: cob_object_detection_msgs/Rect
    int32 x
    int32 y
    int32 width
    int32 height
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of cameara
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeGraspsVacuumGripperRequest(null);
    if (msg.object !== undefined) {
      resolved.object = Detection.Resolve(msg.object)
    }
    else {
      resolved.object = new Detection()
    }

    if (msg.external_reference_frame_id !== undefined) {
      resolved.external_reference_frame_id = msg.external_reference_frame_id;
    }
    else {
      resolved.external_reference_frame_id = ''
    }

    return resolved;
    }
};

class ComputeGraspsVacuumGripperResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grasp_points = null;
    }
    else {
      if (initObj.hasOwnProperty('grasp_points')) {
        this.grasp_points = initObj.grasp_points
      }
      else {
        this.grasp_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeGraspsVacuumGripperResponse
    // Serialize message field [grasp_points]
    // Serialize the length for message field [grasp_points]
    bufferOffset = _serializer.uint32(obj.grasp_points.length, buffer, bufferOffset);
    obj.grasp_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeGraspsVacuumGripperResponse
    let len;
    let data = new ComputeGraspsVacuumGripperResponse(null);
    // Deserialize message field [grasp_points]
    // Deserialize array length for message field [grasp_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.grasp_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.grasp_points[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.grasp_points.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/ComputeGraspsVacuumGripperResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08f27c2314d089ff20a5f4b1c7ef7c00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/PoseStamped[] grasp_points
    
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
    const resolved = new ComputeGraspsVacuumGripperResponse(null);
    if (msg.grasp_points !== undefined) {
      resolved.grasp_points = new Array(msg.grasp_points.length);
      for (let i = 0; i < resolved.grasp_points.length; ++i) {
        resolved.grasp_points[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.grasp_points[i]);
      }
    }
    else {
      resolved.grasp_points = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ComputeGraspsVacuumGripperRequest,
  Response: ComputeGraspsVacuumGripperResponse,
  md5sum() { return '5fd579d4198961aee43fea3a6b180c4e'; },
  datatype() { return 'cob_object_detection_msgs/ComputeGraspsVacuumGripper'; }
};
