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

class NeoPixelSetBrightnessRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bright = null;
    }
    else {
      if (initObj.hasOwnProperty('bright')) {
        this.bright = initObj.bright
      }
      else {
        this.bright = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeoPixelSetBrightnessRequest
    // Serialize message field [bright]
    bufferOffset = _serializer.uint32(obj.bright, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeoPixelSetBrightnessRequest
    let len;
    let data = new NeoPixelSetBrightnessRequest(null);
    // Deserialize message field [bright]
    data.bright = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/NeoPixelSetBrightnessRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e52370b2357c85993e6ee817a57e455';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32   bright
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NeoPixelSetBrightnessRequest(null);
    if (msg.bright !== undefined) {
      resolved.bright = msg.bright;
    }
    else {
      resolved.bright = 0
    }

    return resolved;
    }
};

class NeoPixelSetBrightnessResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NeoPixelSetBrightnessResponse
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NeoPixelSetBrightnessResponse
    let len;
    let data = new NeoPixelSetBrightnessResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/NeoPixelSetBrightnessResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '003b81baa95ab323fc1ddf3c7d0bee81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NeoPixelSetBrightnessResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = false
    }

    return resolved;
    }
};

module.exports = {
  Request: NeoPixelSetBrightnessRequest,
  Response: NeoPixelSetBrightnessResponse,
  md5sum() { return '6dac20c177c42b22ca026285392803c8'; },
  datatype() { return 'inmoov_msgs/NeoPixelSetBrightness'; }
};
