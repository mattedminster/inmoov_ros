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

class inmoov_voiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.toSpeak = null;
    }
    else {
      if (initObj.hasOwnProperty('toSpeak')) {
        this.toSpeak = initObj.toSpeak
      }
      else {
        this.toSpeak = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type inmoov_voiceRequest
    // Serialize message field [toSpeak]
    bufferOffset = _serializer.string(obj.toSpeak, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inmoov_voiceRequest
    let len;
    let data = new inmoov_voiceRequest(null);
    // Deserialize message field [toSpeak]
    data.toSpeak = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.toSpeak.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/inmoov_voiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ba4097947dc3268535058396d9ee182';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string   toSpeak
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new inmoov_voiceRequest(null);
    if (msg.toSpeak !== undefined) {
      resolved.toSpeak = msg.toSpeak;
    }
    else {
      resolved.toSpeak = ''
    }

    return resolved;
    }
};

class inmoov_voiceResponse {
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
    // Serializes a message object of type inmoov_voiceResponse
    // Serialize message field [data]
    bufferOffset = _serializer.float32(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inmoov_voiceResponse
    let len;
    let data = new inmoov_voiceResponse(null);
    // Deserialize message field [data]
    data.data = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/inmoov_voiceResponse';
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
    const resolved = new inmoov_voiceResponse(null);
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
  Request: inmoov_voiceRequest,
  Response: inmoov_voiceResponse,
  md5sum() { return '9c774e72535a80436c5470ca70b0364d'; },
  datatype() { return 'inmoov_msgs/inmoov_voice'; }
};
