// Auto-generated. Do not edit!

// (in-package cob_people_detection.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class recognitionTriggerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_frame_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('target_frame_rate')) {
        this.target_frame_rate = initObj.target_frame_rate
      }
      else {
        this.target_frame_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recognitionTriggerRequest
    // Serialize message field [target_frame_rate]
    bufferOffset = _serializer.float32(obj.target_frame_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recognitionTriggerRequest
    let len;
    let data = new recognitionTriggerRequest(null);
    // Deserialize message field [target_frame_rate]
    data.target_frame_rate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_people_detection/recognitionTriggerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fb2bbc7af64ffad2d27794be36bc198';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 target_frame_rate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new recognitionTriggerRequest(null);
    if (msg.target_frame_rate !== undefined) {
      resolved.target_frame_rate = msg.target_frame_rate;
    }
    else {
      resolved.target_frame_rate = 0.0
    }

    return resolved;
    }
};

class recognitionTriggerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recognitionTriggerResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recognitionTriggerResponse
    let len;
    let data = new recognitionTriggerResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_people_detection/recognitionTriggerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new recognitionTriggerResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: recognitionTriggerRequest,
  Response: recognitionTriggerResponse,
  md5sum() { return '0fb2bbc7af64ffad2d27794be36bc198'; },
  datatype() { return 'cob_people_detection/recognitionTrigger'; }
};
