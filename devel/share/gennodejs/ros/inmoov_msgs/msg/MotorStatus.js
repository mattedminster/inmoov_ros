// Auto-generated. Do not edit!

// (in-package inmoov_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
      this.bus = null;
      this.servoPin = null;
      this.goal = null;
      this.position = null;
      this.smooth = null;
      this.maxSpeed = null;
      this.presentspeed = null;
      this.moving = null;
      this.posraw = null;
      this.enabled = null;
      this.power = null;
      this.Debug1 = null;
      this.Debug2 = null;
      this.Debug3 = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = '';
      }
      if (initObj.hasOwnProperty('bus')) {
        this.bus = initObj.bus
      }
      else {
        this.bus = 0;
      }
      if (initObj.hasOwnProperty('servoPin')) {
        this.servoPin = initObj.servoPin
      }
      else {
        this.servoPin = 0;
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('smooth')) {
        this.smooth = initObj.smooth
      }
      else {
        this.smooth = 0;
      }
      if (initObj.hasOwnProperty('maxSpeed')) {
        this.maxSpeed = initObj.maxSpeed
      }
      else {
        this.maxSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('presentspeed')) {
        this.presentspeed = initObj.presentspeed
      }
      else {
        this.presentspeed = 0.0;
      }
      if (initObj.hasOwnProperty('moving')) {
        this.moving = initObj.moving
      }
      else {
        this.moving = false;
      }
      if (initObj.hasOwnProperty('posraw')) {
        this.posraw = initObj.posraw
      }
      else {
        this.posraw = 0;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = false;
      }
      if (initObj.hasOwnProperty('Debug1')) {
        this.Debug1 = initObj.Debug1
      }
      else {
        this.Debug1 = 0.0;
      }
      if (initObj.hasOwnProperty('Debug2')) {
        this.Debug2 = initObj.Debug2
      }
      else {
        this.Debug2 = 0.0;
      }
      if (initObj.hasOwnProperty('Debug3')) {
        this.Debug3 = initObj.Debug3
      }
      else {
        this.Debug3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStatus
    // Serialize message field [joint]
    bufferOffset = _serializer.string(obj.joint, buffer, bufferOffset);
    // Serialize message field [bus]
    bufferOffset = _serializer.uint8(obj.bus, buffer, bufferOffset);
    // Serialize message field [servoPin]
    bufferOffset = _serializer.uint8(obj.servoPin, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = _serializer.float32(obj.goal, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [smooth]
    bufferOffset = _serializer.uint8(obj.smooth, buffer, bufferOffset);
    // Serialize message field [maxSpeed]
    bufferOffset = _serializer.float32(obj.maxSpeed, buffer, bufferOffset);
    // Serialize message field [presentspeed]
    bufferOffset = _serializer.float32(obj.presentspeed, buffer, bufferOffset);
    // Serialize message field [moving]
    bufferOffset = _serializer.bool(obj.moving, buffer, bufferOffset);
    // Serialize message field [posraw]
    bufferOffset = _serializer.uint16(obj.posraw, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.bool(obj.power, buffer, bufferOffset);
    // Serialize message field [Debug1]
    bufferOffset = _serializer.float32(obj.Debug1, buffer, bufferOffset);
    // Serialize message field [Debug2]
    bufferOffset = _serializer.float32(obj.Debug2, buffer, bufferOffset);
    // Serialize message field [Debug3]
    bufferOffset = _serializer.float32(obj.Debug3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStatus
    let len;
    let data = new MotorStatus(null);
    // Deserialize message field [joint]
    data.joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bus]
    data.bus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [servoPin]
    data.servoPin = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [smooth]
    data.smooth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maxSpeed]
    data.maxSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [presentspeed]
    data.presentspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [moving]
    data.moving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [posraw]
    data.posraw = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Debug1]
    data.Debug1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Debug2]
    data.Debug2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Debug3]
    data.Debug3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joint.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/MotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9168929a0bdbdd12367c31a81e54ef98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string   joint          # joint name for status frame (populated in motor_status_dispatcher)
    uint8    bus            # bus source for status frame (populated in motor_status_dispatcher)
    uint8    servoPin       # motor id 0-11
    float32  goal           # command position
    float32  position       # current sensed position
    uint8    smooth         #smooth setting servo is set to
    float32  maxSpeed	#max speed setting
    float32  presentspeed   # calculated rotational speed
    bool     moving         # is servo moving?
    uint16   posraw         # raw position sensor value
    bool     enabled        # is servo enabled?
    bool     power          # does servo have power?
    float32  Debug1		#Debug 1
    float32  Debug2		#Debug 2
    float32  Debug3		#Debug 3
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStatus(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = ''
    }

    if (msg.bus !== undefined) {
      resolved.bus = msg.bus;
    }
    else {
      resolved.bus = 0
    }

    if (msg.servoPin !== undefined) {
      resolved.servoPin = msg.servoPin;
    }
    else {
      resolved.servoPin = 0
    }

    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.smooth !== undefined) {
      resolved.smooth = msg.smooth;
    }
    else {
      resolved.smooth = 0
    }

    if (msg.maxSpeed !== undefined) {
      resolved.maxSpeed = msg.maxSpeed;
    }
    else {
      resolved.maxSpeed = 0.0
    }

    if (msg.presentspeed !== undefined) {
      resolved.presentspeed = msg.presentspeed;
    }
    else {
      resolved.presentspeed = 0.0
    }

    if (msg.moving !== undefined) {
      resolved.moving = msg.moving;
    }
    else {
      resolved.moving = false
    }

    if (msg.posraw !== undefined) {
      resolved.posraw = msg.posraw;
    }
    else {
      resolved.posraw = 0
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = false
    }

    if (msg.Debug1 !== undefined) {
      resolved.Debug1 = msg.Debug1;
    }
    else {
      resolved.Debug1 = 0.0
    }

    if (msg.Debug2 !== undefined) {
      resolved.Debug2 = msg.Debug2;
    }
    else {
      resolved.Debug2 = 0.0
    }

    if (msg.Debug3 !== undefined) {
      resolved.Debug3 = msg.Debug3;
    }
    else {
      resolved.Debug3 = 0.0
    }

    return resolved;
    }
};

module.exports = MotorStatus;
