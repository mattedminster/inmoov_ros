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

class NeoPixel_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.displayType = null;
      this.wait = null;
      this.red = null;
      this.green = null;
      this.blue = null;
      this.red2 = null;
      this.green2 = null;
      this.blue2 = null;
    }
    else {
      if (initObj.hasOwnProperty('displayType')) {
        this.displayType = initObj.displayType
      }
      else {
        this.displayType = '';
      }
      if (initObj.hasOwnProperty('wait')) {
        this.wait = initObj.wait
      }
      else {
        this.wait = 0;
      }
      if (initObj.hasOwnProperty('red')) {
        this.red = initObj.red
      }
      else {
        this.red = 0;
      }
      if (initObj.hasOwnProperty('green')) {
        this.green = initObj.green
      }
      else {
        this.green = 0;
      }
      if (initObj.hasOwnProperty('blue')) {
        this.blue = initObj.blue
      }
      else {
        this.blue = 0;
      }
      if (initObj.hasOwnProperty('red2')) {
        this.red2 = initObj.red2
      }
      else {
        this.red2 = 0;
      }
      if (initObj.hasOwnProperty('green2')) {
        this.green2 = initObj.green2
      }
      else {
        this.green2 = 0;
      }
      if (initObj.hasOwnProperty('blue2')) {
        this.blue2 = initObj.blue2
      }
      else {
        this.blue2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeoPixel_command
    // Serialize message field [displayType]
    bufferOffset = _serializer.string(obj.displayType, buffer, bufferOffset);
    // Serialize message field [wait]
    bufferOffset = _serializer.int32(obj.wait, buffer, bufferOffset);
    // Serialize message field [red]
    bufferOffset = _serializer.int32(obj.red, buffer, bufferOffset);
    // Serialize message field [green]
    bufferOffset = _serializer.int32(obj.green, buffer, bufferOffset);
    // Serialize message field [blue]
    bufferOffset = _serializer.int32(obj.blue, buffer, bufferOffset);
    // Serialize message field [red2]
    bufferOffset = _serializer.int32(obj.red2, buffer, bufferOffset);
    // Serialize message field [green2]
    bufferOffset = _serializer.int32(obj.green2, buffer, bufferOffset);
    // Serialize message field [blue2]
    bufferOffset = _serializer.int32(obj.blue2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeoPixel_command
    let len;
    let data = new NeoPixel_command(null);
    // Deserialize message field [displayType]
    data.displayType = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wait]
    data.wait = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [red]
    data.red = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [green]
    data.green = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [blue]
    data.blue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [red2]
    data.red2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [green2]
    data.green2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [blue2]
    data.blue2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.displayType.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/NeoPixel_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '101f9c07dca2c5b64e40edc6e84d3160';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string displayType
    int32 wait
    int32 red
    int32 green
    int32 blue
    int32 red2
    int32 green2
    int32 blue2
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NeoPixel_command(null);
    if (msg.displayType !== undefined) {
      resolved.displayType = msg.displayType;
    }
    else {
      resolved.displayType = ''
    }

    if (msg.wait !== undefined) {
      resolved.wait = msg.wait;
    }
    else {
      resolved.wait = 0
    }

    if (msg.red !== undefined) {
      resolved.red = msg.red;
    }
    else {
      resolved.red = 0
    }

    if (msg.green !== undefined) {
      resolved.green = msg.green;
    }
    else {
      resolved.green = 0
    }

    if (msg.blue !== undefined) {
      resolved.blue = msg.blue;
    }
    else {
      resolved.blue = 0
    }

    if (msg.red2 !== undefined) {
      resolved.red2 = msg.red2;
    }
    else {
      resolved.red2 = 0
    }

    if (msg.green2 !== undefined) {
      resolved.green2 = msg.green2;
    }
    else {
      resolved.green2 = 0
    }

    if (msg.blue2 !== undefined) {
      resolved.blue2 = msg.blue2;
    }
    else {
      resolved.blue2 = 0
    }

    return resolved;
    }
};

module.exports = NeoPixel_command;
