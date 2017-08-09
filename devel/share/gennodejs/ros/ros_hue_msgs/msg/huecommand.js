// Auto-generated. Do not edit!

// (in-package ros_hue_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class huecommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.modevalue = null;
      this.on = null;
      this.bri = null;
      this.hue = null;
      this.sat = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('modevalue')) {
        this.modevalue = initObj.modevalue
      }
      else {
        this.modevalue = '';
      }
      if (initObj.hasOwnProperty('on')) {
        this.on = initObj.on
      }
      else {
        this.on = false;
      }
      if (initObj.hasOwnProperty('bri')) {
        this.bri = initObj.bri
      }
      else {
        this.bri = 0;
      }
      if (initObj.hasOwnProperty('hue')) {
        this.hue = initObj.hue
      }
      else {
        this.hue = 0;
      }
      if (initObj.hasOwnProperty('sat')) {
        this.sat = initObj.sat
      }
      else {
        this.sat = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type huecommand
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [modevalue]
    bufferOffset = _serializer.string(obj.modevalue, buffer, bufferOffset);
    // Serialize message field [on]
    bufferOffset = _serializer.bool(obj.on, buffer, bufferOffset);
    // Serialize message field [bri]
    bufferOffset = _serializer.uint32(obj.bri, buffer, bufferOffset);
    // Serialize message field [hue]
    bufferOffset = _serializer.uint32(obj.hue, buffer, bufferOffset);
    // Serialize message field [sat]
    bufferOffset = _serializer.uint32(obj.sat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type huecommand
    let len;
    let data = new huecommand(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [modevalue]
    data.modevalue = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [on]
    data.on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bri]
    data.bri = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [hue]
    data.hue = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sat]
    data.sat = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    length += object.modevalue.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_hue_msgs/huecommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ac66e96124ba30aaff7d6cdedaa1ac6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string   mode                  
    string   modevalue
    bool on
    uint32 bri
    uint32 hue
    uint32 sat             
    	
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new huecommand(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.modevalue !== undefined) {
      resolved.modevalue = msg.modevalue;
    }
    else {
      resolved.modevalue = ''
    }

    if (msg.on !== undefined) {
      resolved.on = msg.on;
    }
    else {
      resolved.on = false
    }

    if (msg.bri !== undefined) {
      resolved.bri = msg.bri;
    }
    else {
      resolved.bri = 0
    }

    if (msg.hue !== undefined) {
      resolved.hue = msg.hue;
    }
    else {
      resolved.hue = 0
    }

    if (msg.sat !== undefined) {
      resolved.sat = msg.sat;
    }
    else {
      resolved.sat = 0
    }

    return resolved;
    }
};

module.exports = huecommand;
