// Auto-generated. Do not edit!

// (in-package inmoov_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MotorCommand {
  constructor() {
    this.id = 0;
    this.parameter = 0;
    this.value = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MotorCommand
    // Serialize message field [id]
    bufferInfo = _serializer.uint8(obj.id, bufferInfo);
    // Serialize message field [parameter]
    bufferInfo = _serializer.uint8(obj.parameter, bufferInfo);
    // Serialize message field [value]
    bufferInfo = _serializer.float32(obj.value, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MotorCommand
    let tmp;
    let len;
    let data = new MotorCommand();
    // Deserialize message field [id]
    tmp = _deserializer.uint8(buffer);
    data.id = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [parameter]
    tmp = _deserializer.uint8(buffer);
    data.parameter = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [value]
    tmp = _deserializer.float32(buffer);
    data.value = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/MotorCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb0b08dd62a5eaff08551ecb80949ef6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   id                      # motor id
    uint8   parameter               # parameter
    float32 value			# value
    
    
    `;
  }

};

module.exports = MotorCommand;
