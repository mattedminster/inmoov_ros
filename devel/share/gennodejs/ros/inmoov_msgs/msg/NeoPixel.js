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

class NeoPixel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pixelNum = null;
      this.pixel_red = null;
      this.pixel_green = null;
      this.pixel_blue = null;
      this.show = null;
    }
    else {
      if (initObj.hasOwnProperty('pixelNum')) {
        this.pixelNum = initObj.pixelNum
      }
      else {
        this.pixelNum = 0;
      }
      if (initObj.hasOwnProperty('pixel_red')) {
        this.pixel_red = initObj.pixel_red
      }
      else {
        this.pixel_red = 0;
      }
      if (initObj.hasOwnProperty('pixel_green')) {
        this.pixel_green = initObj.pixel_green
      }
      else {
        this.pixel_green = 0;
      }
      if (initObj.hasOwnProperty('pixel_blue')) {
        this.pixel_blue = initObj.pixel_blue
      }
      else {
        this.pixel_blue = 0;
      }
      if (initObj.hasOwnProperty('show')) {
        this.show = initObj.show
      }
      else {
        this.show = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeoPixel
    // Serialize message field [pixelNum]
    bufferOffset = _serializer.int32(obj.pixelNum, buffer, bufferOffset);
    // Serialize message field [pixel_red]
    bufferOffset = _serializer.int32(obj.pixel_red, buffer, bufferOffset);
    // Serialize message field [pixel_green]
    bufferOffset = _serializer.int32(obj.pixel_green, buffer, bufferOffset);
    // Serialize message field [pixel_blue]
    bufferOffset = _serializer.int32(obj.pixel_blue, buffer, bufferOffset);
    // Serialize message field [show]
    bufferOffset = _serializer.int32(obj.show, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeoPixel
    let len;
    let data = new NeoPixel(null);
    // Deserialize message field [pixelNum]
    data.pixelNum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pixel_red]
    data.pixel_red = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pixel_green]
    data.pixel_green = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pixel_blue]
    data.pixel_blue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [show]
    data.show = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/NeoPixel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4a1ce762728c83a5b2027e8e116f9ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pixelNum
    int32 pixel_red
    int32 pixel_green
    int32 pixel_blue
    int32 show
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NeoPixel(null);
    if (msg.pixelNum !== undefined) {
      resolved.pixelNum = msg.pixelNum;
    }
    else {
      resolved.pixelNum = 0
    }

    if (msg.pixel_red !== undefined) {
      resolved.pixel_red = msg.pixel_red;
    }
    else {
      resolved.pixel_red = 0
    }

    if (msg.pixel_green !== undefined) {
      resolved.pixel_green = msg.pixel_green;
    }
    else {
      resolved.pixel_green = 0
    }

    if (msg.pixel_blue !== undefined) {
      resolved.pixel_blue = msg.pixel_blue;
    }
    else {
      resolved.pixel_blue = 0
    }

    if (msg.show !== undefined) {
      resolved.show = msg.show;
    }
    else {
      resolved.show = 0
    }

    return resolved;
    }
};

module.exports = NeoPixel;
