// Auto-generated. Do not edit!

// (in-package inmoov_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotorParameterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
      this.parameter = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorParameterRequest
    // Serialize message field [pin]
    bufferOffset = _serializer.uint8(obj.pin, buffer, bufferOffset);
    // Serialize message field [parameter]
    bufferOffset = _serializer.uint8(obj.parameter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorParameterRequest
    let len;
    let data = new MotorParameterRequest(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/MotorParameterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82505794a8745f1d30c991413d22b7eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   pin
    uint8   parameter
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorParameterRequest(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = 0
    }

    return resolved;
    }
};

class MotorParameterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorParameterResponse
    // Serialize message field [data]
    bufferOffset = _serializer.float32(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorParameterResponse
    let len;
    let data = new MotorParameterResponse(null);
    // Deserialize message field [data]
    data.data = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/MotorParameterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73fcbf46b49191e672908e50842a83d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorParameterResponse(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: MotorParameterRequest,
  Response: MotorParameterResponse,
  md5sum() { return '5f77ee216d4d41fb39b36b0a0436a53b'; },
  datatype() { return 'inmoov_msgs/MotorParameter'; }
};
