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

class LeapPointable {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.metacarpalBasis = null;
      this.proximalBasis = null;
      this.intermediateBasis = null;
      this.distalBasis = null;
      this.btipPosition = null;
      this.carpPosition = null;
      this.dipPosition = null;
      this.direction = null;
      this.extended = null;
      this.handId = null;
      this.ID = null;
      this.length = null;
      this.mcpPosition = null;
      this.pipPosition = null;
      this.stabilizedTipPosition = null;
      this.timeVisible = null;
      this.tipPosition = null;
      this.tipVelocity = null;
      this.tool = null;
      this.touchDistance = null;
      this.touchZone = null;
      this.pointableType = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('metacarpalBasis')) {
        this.metacarpalBasis = initObj.metacarpalBasis
      }
      else {
        this.metacarpalBasis = new Array(3).fill(new geometry_msgs.msg.Vector3());
      }
      if (initObj.hasOwnProperty('proximalBasis')) {
        this.proximalBasis = initObj.proximalBasis
      }
      else {
        this.proximalBasis = new Array(3).fill(new geometry_msgs.msg.Vector3());
      }
      if (initObj.hasOwnProperty('intermediateBasis')) {
        this.intermediateBasis = initObj.intermediateBasis
      }
      else {
        this.intermediateBasis = new Array(3).fill(new geometry_msgs.msg.Vector3());
      }
      if (initObj.hasOwnProperty('distalBasis')) {
        this.distalBasis = initObj.distalBasis
      }
      else {
        this.distalBasis = new Array(3).fill(new geometry_msgs.msg.Vector3());
      }
      if (initObj.hasOwnProperty('btipPosition')) {
        this.btipPosition = initObj.btipPosition
      }
      else {
        this.btipPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('carpPosition')) {
        this.carpPosition = initObj.carpPosition
      }
      else {
        this.carpPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('dipPosition')) {
        this.dipPosition = initObj.dipPosition
      }
      else {
        this.dipPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('extended')) {
        this.extended = initObj.extended
      }
      else {
        this.extended = false;
      }
      if (initObj.hasOwnProperty('handId')) {
        this.handId = initObj.handId
      }
      else {
        this.handId = 0;
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('mcpPosition')) {
        this.mcpPosition = initObj.mcpPosition
      }
      else {
        this.mcpPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pipPosition')) {
        this.pipPosition = initObj.pipPosition
      }
      else {
        this.pipPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('stabilizedTipPosition')) {
        this.stabilizedTipPosition = initObj.stabilizedTipPosition
      }
      else {
        this.stabilizedTipPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('timeVisible')) {
        this.timeVisible = initObj.timeVisible
      }
      else {
        this.timeVisible = 0.0;
      }
      if (initObj.hasOwnProperty('tipPosition')) {
        this.tipPosition = initObj.tipPosition
      }
      else {
        this.tipPosition = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('tipVelocity')) {
        this.tipVelocity = initObj.tipVelocity
      }
      else {
        this.tipVelocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('tool')) {
        this.tool = initObj.tool
      }
      else {
        this.tool = false;
      }
      if (initObj.hasOwnProperty('touchDistance')) {
        this.touchDistance = initObj.touchDistance
      }
      else {
        this.touchDistance = 0.0;
      }
      if (initObj.hasOwnProperty('touchZone')) {
        this.touchZone = initObj.touchZone
      }
      else {
        this.touchZone = '';
      }
      if (initObj.hasOwnProperty('pointableType')) {
        this.pointableType = initObj.pointableType
      }
      else {
        this.pointableType = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeapPointable
    // Check that the constant length array field [metacarpalBasis] has the right length
    if (obj.metacarpalBasis.length !== 3) {
      throw new Error('Unable to serialize array field metacarpalBasis - length must be 3')
    }
    // Serialize message field [metacarpalBasis]
    obj.metacarpalBasis.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [proximalBasis] has the right length
    if (obj.proximalBasis.length !== 3) {
      throw new Error('Unable to serialize array field proximalBasis - length must be 3')
    }
    // Serialize message field [proximalBasis]
    obj.proximalBasis.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [intermediateBasis] has the right length
    if (obj.intermediateBasis.length !== 3) {
      throw new Error('Unable to serialize array field intermediateBasis - length must be 3')
    }
    // Serialize message field [intermediateBasis]
    obj.intermediateBasis.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [distalBasis] has the right length
    if (obj.distalBasis.length !== 3) {
      throw new Error('Unable to serialize array field distalBasis - length must be 3')
    }
    // Serialize message field [distalBasis]
    obj.distalBasis.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [btipPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.btipPosition, buffer, bufferOffset);
    // Serialize message field [carpPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.carpPosition, buffer, bufferOffset);
    // Serialize message field [dipPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.dipPosition, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [extended]
    bufferOffset = _serializer.bool(obj.extended, buffer, bufferOffset);
    // Serialize message field [handId]
    bufferOffset = _serializer.uint32(obj.handId, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [mcpPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.mcpPosition, buffer, bufferOffset);
    // Serialize message field [pipPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pipPosition, buffer, bufferOffset);
    // Serialize message field [stabilizedTipPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.stabilizedTipPosition, buffer, bufferOffset);
    // Serialize message field [timeVisible]
    bufferOffset = _serializer.float64(obj.timeVisible, buffer, bufferOffset);
    // Serialize message field [tipPosition]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.tipPosition, buffer, bufferOffset);
    // Serialize message field [tipVelocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.tipVelocity, buffer, bufferOffset);
    // Serialize message field [tool]
    bufferOffset = _serializer.bool(obj.tool, buffer, bufferOffset);
    // Serialize message field [touchDistance]
    bufferOffset = _serializer.float64(obj.touchDistance, buffer, bufferOffset);
    // Serialize message field [touchZone]
    bufferOffset = _serializer.string(obj.touchZone, buffer, bufferOffset);
    // Serialize message field [pointableType]
    bufferOffset = _serializer.uint32(obj.pointableType, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeapPointable
    let len;
    let data = new LeapPointable(null);
    // Deserialize message field [metacarpalBasis]
    len = 3;
    data.metacarpalBasis = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.metacarpalBasis[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [proximalBasis]
    len = 3;
    data.proximalBasis = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.proximalBasis[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [intermediateBasis]
    len = 3;
    data.intermediateBasis = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.intermediateBasis[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [distalBasis]
    len = 3;
    data.distalBasis = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.distalBasis[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [btipPosition]
    data.btipPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [carpPosition]
    data.carpPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [dipPosition]
    data.dipPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [extended]
    data.extended = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [handId]
    data.handId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mcpPosition]
    data.mcpPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pipPosition]
    data.pipPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [stabilizedTipPosition]
    data.stabilizedTipPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeVisible]
    data.timeVisible = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tipPosition]
    data.tipPosition = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [tipVelocity]
    data.tipVelocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [tool]
    data.tool = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [touchDistance]
    data.touchDistance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [touchZone]
    data.touchZone = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pointableType]
    data.pointableType = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.touchZone.length;
    return length + 554;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/LeapPointable';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17349b2abd8a7a1f31586b0c52c91cb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LeapPointable(null);
    if (msg.metacarpalBasis !== undefined) {
      resolved.metacarpalBasis = new Array(3)
      for (let i = 0; i < resolved.metacarpalBasis.length; ++i) {
        if (msg.metacarpalBasis.length > i) {
          resolved.metacarpalBasis[i] = geometry_msgs.msg.Vector3.Resolve(msg.metacarpalBasis[i]);
        }
        else {
          resolved.metacarpalBasis[i] = new geometry_msgs.msg.Vector3();
        }
      }
    }
    else {
      resolved.metacarpalBasis = new Array(3).fill(new geometry_msgs.msg.Vector3())
    }

    if (msg.proximalBasis !== undefined) {
      resolved.proximalBasis = new Array(3)
      for (let i = 0; i < resolved.proximalBasis.length; ++i) {
        if (msg.proximalBasis.length > i) {
          resolved.proximalBasis[i] = geometry_msgs.msg.Vector3.Resolve(msg.proximalBasis[i]);
        }
        else {
          resolved.proximalBasis[i] = new geometry_msgs.msg.Vector3();
        }
      }
    }
    else {
      resolved.proximalBasis = new Array(3).fill(new geometry_msgs.msg.Vector3())
    }

    if (msg.intermediateBasis !== undefined) {
      resolved.intermediateBasis = new Array(3)
      for (let i = 0; i < resolved.intermediateBasis.length; ++i) {
        if (msg.intermediateBasis.length > i) {
          resolved.intermediateBasis[i] = geometry_msgs.msg.Vector3.Resolve(msg.intermediateBasis[i]);
        }
        else {
          resolved.intermediateBasis[i] = new geometry_msgs.msg.Vector3();
        }
      }
    }
    else {
      resolved.intermediateBasis = new Array(3).fill(new geometry_msgs.msg.Vector3())
    }

    if (msg.distalBasis !== undefined) {
      resolved.distalBasis = new Array(3)
      for (let i = 0; i < resolved.distalBasis.length; ++i) {
        if (msg.distalBasis.length > i) {
          resolved.distalBasis[i] = geometry_msgs.msg.Vector3.Resolve(msg.distalBasis[i]);
        }
        else {
          resolved.distalBasis[i] = new geometry_msgs.msg.Vector3();
        }
      }
    }
    else {
      resolved.distalBasis = new Array(3).fill(new geometry_msgs.msg.Vector3())
    }

    if (msg.btipPosition !== undefined) {
      resolved.btipPosition = geometry_msgs.msg.Point.Resolve(msg.btipPosition)
    }
    else {
      resolved.btipPosition = new geometry_msgs.msg.Point()
    }

    if (msg.carpPosition !== undefined) {
      resolved.carpPosition = geometry_msgs.msg.Point.Resolve(msg.carpPosition)
    }
    else {
      resolved.carpPosition = new geometry_msgs.msg.Point()
    }

    if (msg.dipPosition !== undefined) {
      resolved.dipPosition = geometry_msgs.msg.Point.Resolve(msg.dipPosition)
    }
    else {
      resolved.dipPosition = new geometry_msgs.msg.Point()
    }

    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    if (msg.extended !== undefined) {
      resolved.extended = msg.extended;
    }
    else {
      resolved.extended = false
    }

    if (msg.handId !== undefined) {
      resolved.handId = msg.handId;
    }
    else {
      resolved.handId = 0
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.mcpPosition !== undefined) {
      resolved.mcpPosition = geometry_msgs.msg.Point.Resolve(msg.mcpPosition)
    }
    else {
      resolved.mcpPosition = new geometry_msgs.msg.Point()
    }

    if (msg.pipPosition !== undefined) {
      resolved.pipPosition = geometry_msgs.msg.Point.Resolve(msg.pipPosition)
    }
    else {
      resolved.pipPosition = new geometry_msgs.msg.Point()
    }

    if (msg.stabilizedTipPosition !== undefined) {
      resolved.stabilizedTipPosition = geometry_msgs.msg.Point.Resolve(msg.stabilizedTipPosition)
    }
    else {
      resolved.stabilizedTipPosition = new geometry_msgs.msg.Point()
    }

    if (msg.timeVisible !== undefined) {
      resolved.timeVisible = msg.timeVisible;
    }
    else {
      resolved.timeVisible = 0.0
    }

    if (msg.tipPosition !== undefined) {
      resolved.tipPosition = geometry_msgs.msg.Point.Resolve(msg.tipPosition)
    }
    else {
      resolved.tipPosition = new geometry_msgs.msg.Point()
    }

    if (msg.tipVelocity !== undefined) {
      resolved.tipVelocity = geometry_msgs.msg.Vector3.Resolve(msg.tipVelocity)
    }
    else {
      resolved.tipVelocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.tool !== undefined) {
      resolved.tool = msg.tool;
    }
    else {
      resolved.tool = false
    }

    if (msg.touchDistance !== undefined) {
      resolved.touchDistance = msg.touchDistance;
    }
    else {
      resolved.touchDistance = 0.0
    }

    if (msg.touchZone !== undefined) {
      resolved.touchZone = msg.touchZone;
    }
    else {
      resolved.touchZone = ''
    }

    if (msg.pointableType !== undefined) {
      resolved.pointableType = msg.pointableType;
    }
    else {
      resolved.pointableType = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    return resolved;
    }
};

module.exports = LeapPointable;
