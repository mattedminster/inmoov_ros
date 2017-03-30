// Auto-generated. Do not edit!

// (in-package inmoov_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotorParameterRequest {
  constructor() {
    this.id = 0;
    this.parameter = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MotorParameterRequest
    // Serialize message field [id]
    bufferInfo = _serializer.uint8(obj.id, bufferInfo);
    // Serialize message field [parameter]
    bufferInfo = _serializer.uint8(obj.parameter, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MotorParameterRequest
    let tmp;
    let len;
    let data = new MotorParameterRequest();
    // Deserialize message field [id]
    tmp = _deserializer.uint8(buffer);
    data.id = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [parameter]
    tmp = _deserializer.uint8(buffer);
    data.parameter = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/MotorParameterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e50bd98c68b747be3e6ef47cccff3aad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   id
    uint8   parameter
    
    `;
  }

};

class MotorParameterResponse {
  constructor() {
    this.data = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MotorParameterResponse
    // Serialize message field [data]
    bufferInfo = _serializer.float32(obj.data, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MotorParameterResponse
    let tmp;
    let len;
    let data = new MotorParameterResponse();
    // Deserialize message field [data]
    tmp = _deserializer.float32(buffer);
    data.data = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
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

};

module.exports = {
  Request: MotorParameterRequest,
  Response: MotorParameterResponse
};
