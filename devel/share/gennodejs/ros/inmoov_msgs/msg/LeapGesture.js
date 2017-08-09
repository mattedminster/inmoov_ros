// Auto-generated. Do not edit!

// (in-package inmoov_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LeapGesture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center = null;
      this.direction = null;
      this.duration = null;
      this.handIds = null;
      this.ID = null;
      this.normal = null;
      this.pointableIds = null;
      this.position = null;
      this.progress = null;
      this.radius = null;
      this.speed = null;
      this.startPosition = null;
      this.state = null;
      this.gestureType = null;
    }
    else {
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('handIds')) {
        this.handIds = initObj.handIds
      }
      else {
        this.handIds = [];
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('normal')) {
        this.normal = initObj.normal
      }
      else {
        this.normal = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pointableIds')) {
        this.pointableIds = initObj.pointableIds
      }
      else {
        this.pointableIds = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = 0.0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('startPosition')) {
        this.startPosition = initObj.startPosition
      }
      else {
        this.startPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('gestureType')) {
        this.gestureType = initObj.gestureType
      }
      else {
        this.gestureType = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeapGesture
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.uint32(obj.duration, buffer, bufferOffset);
    // Serialize message field [handIds]
    bufferOffset = _arraySerializer.uint32(obj.handIds, buffer, bufferOffset, null);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [normal]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.normal, buffer, bufferOffset);
    // Serialize message field [pointableIds]
    bufferOffset = _arraySerializer.uint32(obj.pointableIds, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = _serializer.float64(obj.progress, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float64(obj.radius, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [startPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.startPosition, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [gestureType]
    bufferOffset = _serializer.string(obj.gestureType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeapGesture
    let len;
    let data = new LeapGesture(null);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [handIds]
    data.handIds = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [normal]
    data.normal = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointableIds]
    data.pointableIds = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [startPosition]
    data.startPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gestureType]
    data.gestureType = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.handIds.length;
    length += 4 * object.pointableIds.length;
    length += object.state.length;
    length += object.gestureType.length;
    return length + 168;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/LeapGesture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '967e671f82992095ab401d46b1c41311';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LeapGesture(null);
    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point()
    }

    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.handIds !== undefined) {
      resolved.handIds = msg.handIds;
    }
    else {
      resolved.handIds = []
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.normal !== undefined) {
      resolved.normal = geometry_msgs.msg.Vector3.Resolve(msg.normal)
    }
    else {
      resolved.normal = new geometry_msgs.msg.Vector3()
    }

    if (msg.pointableIds !== undefined) {
      resolved.pointableIds = msg.pointableIds;
    }
    else {
      resolved.pointableIds = []
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = 0.0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.startPosition !== undefined) {
      resolved.startPosition = geometry_msgs.msg.Point.Resolve(msg.startPosition)
    }
    else {
      resolved.startPosition = new geometry_msgs.msg.Point()
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.gestureType !== undefined) {
      resolved.gestureType = msg.gestureType;
    }
    else {
      resolved.gestureType = ''
    }

    return resolved;
    }
};

module.exports = LeapGesture;
