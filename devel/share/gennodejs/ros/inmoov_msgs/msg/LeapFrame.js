// Auto-generated. Do not edit!

// (in-package inmoov_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LeapGesture = require('./LeapGesture.js');
let LeapHand = require('./LeapHand.js');
let LeapPointable = require('./LeapPointable.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LeapFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.currentFrameRate = null;
      this.ID = null;
      this.r = null;
      this.s = null;
      this.t = null;
      this.timestamp = null;
      this.gestures = null;
      this.hands = null;
      this.pointables = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('currentFrameRate')) {
        this.currentFrameRate = initObj.currentFrameRate
      }
      else {
        this.currentFrameRate = 0.0;
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = [];
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('gestures')) {
        this.gestures = initObj.gestures
      }
      else {
        this.gestures = [];
      }
      if (initObj.hasOwnProperty('hands')) {
        this.hands = initObj.hands
      }
      else {
        this.hands = [];
      }
      if (initObj.hasOwnProperty('pointables')) {
        this.pointables = initObj.pointables
      }
      else {
        this.pointables = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeapFrame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [currentFrameRate]
    bufferOffset = _serializer.float64(obj.currentFrameRate, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [r]
    // Serialize the length for message field [r]
    bufferOffset = _serializer.uint32(obj.r.length, buffer, bufferOffset);
    obj.r.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.t, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [gestures]
    // Serialize the length for message field [gestures]
    bufferOffset = _serializer.uint32(obj.gestures.length, buffer, bufferOffset);
    obj.gestures.forEach((val) => {
      bufferOffset = LeapGesture.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [hands]
    // Serialize the length for message field [hands]
    bufferOffset = _serializer.uint32(obj.hands.length, buffer, bufferOffset);
    obj.hands.forEach((val) => {
      bufferOffset = LeapHand.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pointables]
    // Serialize the length for message field [pointables]
    bufferOffset = _serializer.uint32(obj.pointables.length, buffer, bufferOffset);
    obj.pointables.forEach((val) => {
      bufferOffset = LeapPointable.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeapFrame
    let len;
    let data = new LeapFrame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [currentFrameRate]
    data.currentFrameRate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r]
    // Deserialize array length for message field [r]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.r = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.r[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [gestures]
    // Deserialize array length for message field [gestures]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gestures = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gestures[i] = LeapGesture.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [hands]
    // Deserialize array length for message field [hands]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.hands = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.hands[i] = LeapHand.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pointables]
    // Deserialize array length for message field [pointables]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointables = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointables[i] = LeapPointable.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.r.length;
    object.gestures.forEach((val) => {
      length += LeapGesture.getMessageSize(val);
    });
    object.hands.forEach((val) => {
      length += LeapHand.getMessageSize(val);
    });
    object.pointables.forEach((val) => {
      length += LeapPointable.getMessageSize(val);
    });
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/LeapFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1be96930b5a5f7da0ae5f4ae85fd4442';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Leap Motion v6 Frame JSON-based message
    # https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
    #
    #
    Header header
    float64 currentFrameRate
    uint32 ID                       # Leap Motion documents this as a float, but that's not right
    geometry_msgs/Vector3[] r      # Leap Motion documentation as Matrix (ambigous)
    float64 s
    geometry_msgs/Vector3 t
    time timestamp
    LeapGesture[] gestures
    LeapHand[] hands
    # interaction box not included
    LeapPointable[] pointables
    
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
    MSG: inmoov_msgs/LeapGesture
    # Leap Motion v6 Gesture JSON-based submessage
    # https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
    #
    #
    geometry_msgs/Point center          # array of floats (vector) -- circle only
    geometry_msgs/Vector3 direction     # array of floats (vector) -- swipe, keyTap, screenTap only
    uint32 duration                     # integer microseconds
    uint32[] handIds                    # array of integers
    uint32 ID                           # integer
    geometry_msgs/Vector3 normal        # array of floats -- circle only
    uint32[] pointableIds               # array
    geometry_msgs/Point position        # array of floats (vector) -- swipe, keyTap, screenTap only
    float64 progress                    # float -- circle, keyTap, screenTap only
    float64 radius                      # float -- circle only
    float64 speed                       # float -- swipe only
    geometry_msgs/Point startPosition   # array of float (vector) -- swipe only
    string state                        # string - one of "start", "update", "stop"
    string gestureType                  # string - one of "circle", "swipe", "keyTap", "screenTap"
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: inmoov_msgs/LeapHand
    # Leap Motion v6 Hand JSON-based submessage
    # https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
    #
    #
    geometry_msgs/Vector3[3] armBasis           # the 3 basis vectors of the arm (array of vectors)
    float64 armWidth
    float64 confidence
    geometry_msgs/Vector3 direction             # array of floats (vector)
    geometry_msgs/Point elbow
    float64 grabStrength
    uint32 ID
    geometry_msgs/Vector3 palmNormal
    geometry_msgs/Point palmPosition
    geometry_msgs/Vector3 palmVelocity
    float64 pinchStrength
    geometry_msgs/Vector3[3] r                  # Leap Motion documentation as Matrix (ambigous)
    float64 s
    geometry_msgs/Point sphereCenter
    float64 sphereRadius
    geometry_msgs/Point stabilizedPalmPosition
    geometry_msgs/Vector3 t
    float64 timeVisible
    string handType                                 # string - one of "right", "left"
    geometry_msgs/Point wrist
    
    ================================================================================
    MSG: inmoov_msgs/LeapPointable
    # Leap Motion v6 Pointable JSON-based submessage
    # https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
    #
    #
    
    # Leap uses a two dimensional array for the bases but ROS messages only support one dimension
    # Unroll the Leap bases into individual bone basis instead
    # geometry_msgs/Vector3[3][] bases          # the 3 basis vectors for each bone, in index order, wrist to tip, metacarpal, proximal, intermediate, and distal.
    geometry_msgs/Vector3[3] metacarpalBasis
    geometry_msgs/Vector3[3] proximalBasis
    geometry_msgs/Vector3[3] intermediateBasis
    geometry_msgs/Vector3[3] distalBasis
    geometry_msgs/Point btipPosition            # the position of the tip of the distal phalanx as an array of 3 floats.
    geometry_msgs/Point carpPosition            # the position of the base of metacarpal bone as an array of 3 floats.
    geometry_msgs/Point dipPosition             # the position of the base of the distal phalanx as an array of 3 floats.
    geometry_msgs/Vector3 direction
    bool extended
    uint32 handId
    uint32 ID
    float64 length
    geometry_msgs/Point mcpPosition             # a position vector as an array of 3 floating point numbers
    geometry_msgs/Point pipPosition             # a position vector as an array of 3 floating point numbers
    geometry_msgs/Point stabilizedTipPosition   # array of floats (vector)
    float64 timeVisible
    geometry_msgs/Point tipPosition             #  array of floats (vector)
    geometry_msgs/Vector3 tipVelocity           #  array of floats (vector)
    bool tool
    float64 touchDistance
    string touchZone                            # string - one of "none", "hovering", "touching"
    uint32 pointableType                        # integer - 0 is thumb; 4 is pinky
    float64 width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeapFrame(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.currentFrameRate !== undefined) {
      resolved.currentFrameRate = msg.currentFrameRate;
    }
    else {
      resolved.currentFrameRate = 0.0
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.r !== undefined) {
      resolved.r = new Array(msg.r.length);
      for (let i = 0; i < resolved.r.length; ++i) {
        resolved.r[i] = geometry_msgs.msg.Vector3.Resolve(msg.r[i]);
      }
    }
    else {
      resolved.r = []
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.t !== undefined) {
      resolved.t = geometry_msgs.msg.Vector3.Resolve(msg.t)
    }
    else {
      resolved.t = new geometry_msgs.msg.Vector3()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.gestures !== undefined) {
      resolved.gestures = new Array(msg.gestures.length);
      for (let i = 0; i < resolved.gestures.length; ++i) {
        resolved.gestures[i] = LeapGesture.Resolve(msg.gestures[i]);
      }
    }
    else {
      resolved.gestures = []
    }

    if (msg.hands !== undefined) {
      resolved.hands = new Array(msg.hands.length);
      for (let i = 0; i < resolved.hands.length; ++i) {
        resolved.hands[i] = LeapHand.Resolve(msg.hands[i]);
      }
    }
    else {
      resolved.hands = []
    }

    if (msg.pointables !== undefined) {
      resolved.pointables = new Array(msg.pointables.length);
      for (let i = 0; i < resolved.pointables.length; ++i) {
        resolved.pointables[i] = LeapPointable.Resolve(msg.pointables[i]);
      }
    }
    else {
      resolved.pointables = []
    }

    return resolved;
    }
};

module.exports = LeapFrame;
