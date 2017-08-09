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

class ServoSetup {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servoPin = null;
      this.sensorPin = null;
      this.minAngle = null;
      this.maxAngle = null;
      this.rest = null;
      this.minPulse = null;
      this.maxPulse = null;
      this.minSensor = null;
      this.maxSensor = null;
      this.smoothing = null;
      this.maxSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('servoPin')) {
        this.servoPin = initObj.servoPin
      }
      else {
        this.servoPin = 0;
      }
      if (initObj.hasOwnProperty('sensorPin')) {
        this.sensorPin = initObj.sensorPin
      }
      else {
        this.sensorPin = 0;
      }
      if (initObj.hasOwnProperty('minAngle')) {
        this.minAngle = initObj.minAngle
      }
      else {
        this.minAngle = 0.0;
      }
      if (initObj.hasOwnProperty('maxAngle')) {
        this.maxAngle = initObj.maxAngle
      }
      else {
        this.maxAngle = 0.0;
      }
      if (initObj.hasOwnProperty('rest')) {
        this.rest = initObj.rest
      }
      else {
        this.rest = 0.0;
      }
      if (initObj.hasOwnProperty('minPulse')) {
        this.minPulse = initObj.minPulse
      }
      else {
        this.minPulse = 0.0;
      }
      if (initObj.hasOwnProperty('maxPulse')) {
        this.maxPulse = initObj.maxPulse
      }
      else {
        this.maxPulse = 0.0;
      }
      if (initObj.hasOwnProperty('minSensor')) {
        this.minSensor = initObj.minSensor
      }
      else {
        this.minSensor = 0.0;
      }
      if (initObj.hasOwnProperty('maxSensor')) {
        this.maxSensor = initObj.maxSensor
      }
      else {
        this.maxSensor = 0.0;
      }
      if (initObj.hasOwnProperty('smoothing')) {
        this.smoothing = initObj.smoothing
      }
      else {
        this.smoothing = 0;
      }
      if (initObj.hasOwnProperty('maxSpeed')) {
        this.maxSpeed = initObj.maxSpeed
      }
      else {
        this.maxSpeed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoSetup
    // Serialize message field [servoPin]
    bufferOffset = _serializer.int32(obj.servoPin, buffer, bufferOffset);
    // Serialize message field [sensorPin]
    bufferOffset = _serializer.int32(obj.sensorPin, buffer, bufferOffset);
    // Serialize message field [minAngle]
    bufferOffset = _serializer.float32(obj.minAngle, buffer, bufferOffset);
    // Serialize message field [maxAngle]
    bufferOffset = _serializer.float32(obj.maxAngle, buffer, bufferOffset);
    // Serialize message field [rest]
    bufferOffset = _serializer.float32(obj.rest, buffer, bufferOffset);
    // Serialize message field [minPulse]
    bufferOffset = _serializer.float32(obj.minPulse, buffer, bufferOffset);
    // Serialize message field [maxPulse]
    bufferOffset = _serializer.float32(obj.maxPulse, buffer, bufferOffset);
    // Serialize message field [minSensor]
    bufferOffset = _serializer.float32(obj.minSensor, buffer, bufferOffset);
    // Serialize message field [maxSensor]
    bufferOffset = _serializer.float32(obj.maxSensor, buffer, bufferOffset);
    // Serialize message field [smoothing]
    bufferOffset = _serializer.int32(obj.smoothing, buffer, bufferOffset);
    // Serialize message field [maxSpeed]
    bufferOffset = _serializer.float32(obj.maxSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoSetup
    let len;
    let data = new ServoSetup(null);
    // Deserialize message field [servoPin]
    data.servoPin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sensorPin]
    data.sensorPin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [minAngle]
    data.minAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxAngle]
    data.maxAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rest]
    data.rest = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [minPulse]
    data.minPulse = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxPulse]
    data.maxPulse = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [minSensor]
    data.minSensor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxSensor]
    data.maxSensor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [smoothing]
    data.smoothing = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [maxSpeed]
    data.maxSpeed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/ServoSetup';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9352507e0ae979f797e9e298510545cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 servoPin 		#pin number for Servo
    int32 sensorPin		#pin number for Sensor
    float32 minAngle		#min physical angle of joint
    float32 maxAngle		#max physical angle of joint
    float32 rest			#rest angle
    float32 minPulse		#min Pulse for the servo - physical robot should be at min angle when this is set
    float32 maxPulse		#max Pulse for the servo - physical robot should be at max angle when this is set
    float32 minSensor		#min reading for sensor
    float32 maxSensor		#max reading for sensor
    int32 smoothing		#sets default smoothing pattern for joint
    float32 maxSpeed		#sets maxspeed
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoSetup(null);
    if (msg.servoPin !== undefined) {
      resolved.servoPin = msg.servoPin;
    }
    else {
      resolved.servoPin = 0
    }

    if (msg.sensorPin !== undefined) {
      resolved.sensorPin = msg.sensorPin;
    }
    else {
      resolved.sensorPin = 0
    }

    if (msg.minAngle !== undefined) {
      resolved.minAngle = msg.minAngle;
    }
    else {
      resolved.minAngle = 0.0
    }

    if (msg.maxAngle !== undefined) {
      resolved.maxAngle = msg.maxAngle;
    }
    else {
      resolved.maxAngle = 0.0
    }

    if (msg.rest !== undefined) {
      resolved.rest = msg.rest;
    }
    else {
      resolved.rest = 0.0
    }

    if (msg.minPulse !== undefined) {
      resolved.minPulse = msg.minPulse;
    }
    else {
      resolved.minPulse = 0.0
    }

    if (msg.maxPulse !== undefined) {
      resolved.maxPulse = msg.maxPulse;
    }
    else {
      resolved.maxPulse = 0.0
    }

    if (msg.minSensor !== undefined) {
      resolved.minSensor = msg.minSensor;
    }
    else {
      resolved.minSensor = 0.0
    }

    if (msg.maxSensor !== undefined) {
      resolved.maxSensor = msg.maxSensor;
    }
    else {
      resolved.maxSensor = 0.0
    }

    if (msg.smoothing !== undefined) {
      resolved.smoothing = msg.smoothing;
    }
    else {
      resolved.smoothing = 0
    }

    if (msg.maxSpeed !== undefined) {
      resolved.maxSpeed = msg.maxSpeed;
    }
    else {
      resolved.maxSpeed = 0.0
    }

    return resolved;
    }
};

module.exports = ServoSetup;
