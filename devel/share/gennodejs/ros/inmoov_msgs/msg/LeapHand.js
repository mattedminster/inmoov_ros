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

class LeapHand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.armBasis = null;
      this.armWidth = null;
      this.confidence = null;
      this.direction = null;
      this.elbow = null;
      this.grabStrength = null;
      this.ID = null;
      this.palmNormal = null;
      this.palmPosition = null;
      this.palmVelocity = null;
      this.pinchStrength = null;
      this.r = null;
      this.s = null;
      this.sphereCenter = null;
      this.sphereRadius = null;
      this.stabilizedPalmPosition = null;
      this.t = null;
      this.timeVisible = null;
      this.handType = null;
      this.wrist = null;
    }
    else {
      if (initObj.hasOwnProperty('armBasis')) {
        this.armBasis = initObj.armBasis
      }
      else {
        this.armBasis = new Array(3).fill(new geometry_msgs.msg.Vector3());
      }
      if (initObj.hasOwnProperty('armWidth')) {
        this.armWidth = initObj.armWidth
      }
      else {
        this.armWidth = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('elbow')) {
        this.elbow = initObj.elbow
      }
      else {
        this.elbow = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('grabStrength')) {
        this.grabStrength = initObj.grabStrength
      }
      else {
        this.grabStrength = 0.0;
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('palmNormal')) {
        this.palmNormal = initObj.palmNormal
      }
      else {
        this.palmNormal = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('palmPosition')) {
        this.palmPosition = initObj.palmPosition
      }
      else {
        this.palmPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('palmVelocity')) {
        this.palmVelocity = initObj.palmVelocity
      }
      else {
        this.palmVelocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pinchStrength')) {
        this.pinchStrength = initObj.pinchStrength
      }
      else {
        this.pinchStrength = 0.0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = new Array(3).fill(new geometry_msgs.msg.Vector3());
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('sphereCenter')) {
        this.sphereCenter = initObj.sphereCenter
      }
      else {
        this.sphereCenter = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('sphereRadius')) {
        this.sphereRadius = initObj.sphereRadius
      }
      else {
        this.sphereRadius = 0.0;
      }
      if (initObj.hasOwnProperty('stabilizedPalmPosition')) {
        this.stabilizedPalmPosition = initObj.stabilizedPalmPosition
      }
      else {
        this.stabilizedPalmPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('timeVisible')) {
        this.timeVisible = initObj.timeVisible
      }
      else {
        this.timeVisible = 0.0;
      }
      if (initObj.hasOwnProperty('handType')) {
        this.handType = initObj.handType
      }
      else {
        this.handType = '';
      }
      if (initObj.hasOwnProperty('wrist')) {
        this.wrist = initObj.wrist
      }
      else {
        this.wrist = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeapHand
    // Check that the constant length array field [armBasis] has the right length
    if (obj.armBasis.length !== 3) {
      throw new Error('Unable to serialize array field armBasis - length must be 3')
    }
    // Serialize message field [armBasis]
    obj.armBasis.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [armWidth]
    bufferOffset = _serializer.float64(obj.armWidth, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [elbow]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.elbow, buffer, bufferOffset);
    // Serialize message field [grabStrength]
    bufferOffset = _serializer.float64(obj.grabStrength, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [palmNormal]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.palmNormal, buffer, bufferOffset);
    // Serialize message field [palmPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.palmPosition, buffer, bufferOffset);
    // Serialize message field [palmVelocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.palmVelocity, buffer, bufferOffset);
    // Serialize message field [pinchStrength]
    bufferOffset = _serializer.float64(obj.pinchStrength, buffer, bufferOffset);
    // Check that the constant length array field [r] has the right length
    if (obj.r.length !== 3) {
      throw new Error('Unable to serialize array field r - length must be 3')
    }
    // Serialize message field [r]
    obj.r.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    // Serialize message field [sphereCenter]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.sphereCenter, buffer, bufferOffset);
    // Serialize message field [sphereRadius]
    bufferOffset = _serializer.float64(obj.sphereRadius, buffer, bufferOffset);
    // Serialize message field [stabilizedPalmPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.stabilizedPalmPosition, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.t, buffer, bufferOffset);
    // Serialize message field [timeVisible]
    bufferOffset = _serializer.float64(obj.timeVisible, buffer, bufferOffset);
    // Serialize message field [handType]
    bufferOffset = _serializer.string(obj.handType, buffer, bufferOffset);
    // Serialize message field [wrist]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.wrist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeapHand
    let len;
    let data = new LeapHand(null);
    // Deserialize message field [armBasis]
    len = 3;
    data.armBasis = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.armBasis[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [armWidth]
    data.armWidth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [elbow]
    data.elbow = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [grabStrength]
    data.grabStrength = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [palmNormal]
    data.palmNormal = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [palmPosition]
    data.palmPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [palmVelocity]
    data.palmVelocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pinchStrength]
    data.pinchStrength = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r]
    len = 3;
    data.r = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.r[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sphereCenter]
    data.sphereCenter = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [sphereRadius]
    data.sphereRadius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stabilizedPalmPosition]
    data.stabilizedPalmPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeVisible]
    data.timeVisible = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [handType]
    data.handType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wrist]
    data.wrist = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.handType.length;
    return length + 424;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/LeapHand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1f168193e08481c556346f6b4c70f16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new LeapHand(null);
    if (msg.armBasis !== undefined) {
      resolved.armBasis = new Array(3)
      for (let i = 0; i < resolved.armBasis.length; ++i) {
        if (msg.armBasis.length > i) {
          resolved.armBasis[i] = geometry_msgs.msg.Vector3.Resolve(msg.armBasis[i]);
        }
        else {
          resolved.armBasis[i] = new geometry_msgs.msg.Vector3();
        }
      }
    }
    else {
      resolved.armBasis = new Array(3).fill(new geometry_msgs.msg.Vector3())
    }

    if (msg.armWidth !== undefined) {
      resolved.armWidth = msg.armWidth;
    }
    else {
      resolved.armWidth = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    if (msg.elbow !== undefined) {
      resolved.elbow = geometry_msgs.msg.Point.Resolve(msg.elbow)
    }
    else {
      resolved.elbow = new geometry_msgs.msg.Point()
    }

    if (msg.grabStrength !== undefined) {
      resolved.grabStrength = msg.grabStrength;
    }
    else {
      resolved.grabStrength = 0.0
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.palmNormal !== undefined) {
      resolved.palmNormal = geometry_msgs.msg.Vector3.Resolve(msg.palmNormal)
    }
    else {
      resolved.palmNormal = new geometry_msgs.msg.Vector3()
    }

    if (msg.palmPosition !== undefined) {
      resolved.palmPosition = geometry_msgs.msg.Point.Resolve(msg.palmPosition)
    }
    else {
      resolved.palmPosition = new geometry_msgs.msg.Point()
    }

    if (msg.palmVelocity !== undefined) {
      resolved.palmVelocity = geometry_msgs.msg.Vector3.Resolve(msg.palmVelocity)
    }
    else {
      resolved.palmVelocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.pinchStrength !== undefined) {
      resolved.pinchStrength = msg.pinchStrength;
    }
    else {
      resolved.pinchStrength = 0.0
    }

    if (msg.r !== undefined) {
      resolved.r = new Array(3)
      for (let i = 0; i < resolved.r.length; ++i) {
        if (msg.r.length > i) {
          resolved.r[i] = geometry_msgs.msg.Vector3.Resolve(msg.r[i]);
        }
        else {
          resolved.r[i] = new geometry_msgs.msg.Vector3();
        }
      }
    }
    else {
      resolved.r = new Array(3).fill(new geometry_msgs.msg.Vector3())
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.sphereCenter !== undefined) {
      resolved.sphereCenter = geometry_msgs.msg.Point.Resolve(msg.sphereCenter)
    }
    else {
      resolved.sphereCenter = new geometry_msgs.msg.Point()
    }

    if (msg.sphereRadius !== undefined) {
      resolved.sphereRadius = msg.sphereRadius;
    }
    else {
      resolved.sphereRadius = 0.0
    }

    if (msg.stabilizedPalmPosition !== undefined) {
      resolved.stabilizedPalmPosition = geometry_msgs.msg.Point.Resolve(msg.stabilizedPalmPosition)
    }
    else {
      resolved.stabilizedPalmPosition = new geometry_msgs.msg.Point()
    }

    if (msg.t !== undefined) {
      resolved.t = geometry_msgs.msg.Vector3.Resolve(msg.t)
    }
    else {
      resolved.t = new geometry_msgs.msg.Vector3()
    }

    if (msg.timeVisible !== undefined) {
      resolved.timeVisible = msg.timeVisible;
    }
    else {
      resolved.timeVisible = 0.0
    }

    if (msg.handType !== undefined) {
      resolved.handType = msg.handType;
    }
    else {
      resolved.handType = ''
    }

    if (msg.wrist !== undefined) {
      resolved.wrist = geometry_msgs.msg.Point.Resolve(msg.wrist)
    }
    else {
      resolved.wrist = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = LeapHand;
