// Auto-generated. Do not edit!

// (in-package inmoov_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class MotorStatus {
  constructor() {
    this.id = 0;
    this.goal = 0.0;
    this.position = 0.0;
    this.presentspeed = 0.0;
    this.moving = false;
    this.posraw = 0;
    this.enabled = false;
    this.power = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type MotorStatus
    // Serialize message field [id]
    bufferInfo = _serializer.uint8(obj.id, bufferInfo);
    // Serialize message field [goal]
    bufferInfo = _serializer.float32(obj.goal, bufferInfo);
    // Serialize message field [position]
    bufferInfo = _serializer.float32(obj.position, bufferInfo);
    // Serialize message field [presentspeed]
    bufferInfo = _serializer.float32(obj.presentspeed, bufferInfo);
    // Serialize message field [moving]
    bufferInfo = _serializer.bool(obj.moving, bufferInfo);
    // Serialize message field [posraw]
    bufferInfo = _serializer.uint16(obj.posraw, bufferInfo);
    // Serialize message field [enabled]
    bufferInfo = _serializer.bool(obj.enabled, bufferInfo);
    // Serialize message field [power]
    bufferInfo = _serializer.bool(obj.power, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type MotorStatus
    let tmp;
    let len;
    let data = new MotorStatus();
    // Deserialize message field [id]
    tmp = _deserializer.uint8(buffer);
    data.id = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [goal]
    tmp = _deserializer.float32(buffer);
    data.goal = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [position]
    tmp = _deserializer.float32(buffer);
    data.position = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [presentspeed]
    tmp = _deserializer.float32(buffer);
    data.presentspeed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [moving]
    tmp = _deserializer.bool(buffer);
    data.moving = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [posraw]
    tmp = _deserializer.uint16(buffer);
    data.posraw = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [enabled]
    tmp = _deserializer.bool(buffer);
    data.enabled = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [power]
    tmp = _deserializer.bool(buffer);
    data.power = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/MotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4a9e09f5fbe6a9414f80ffc2b3c7dc9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8    id             # motor id 0-11
    float32  goal		# command position
    float32  position	# current sensed position
    float32  presentspeed	# calculated rotational speed
    bool     moving		# is servo moving?
    uint16   posraw		# raw position sensor value
    bool     enabled	# is servo enabled?
    bool     power		# does servo have power?
    
    
    
    `;
  }

};

module.exports = MotorStatus;
