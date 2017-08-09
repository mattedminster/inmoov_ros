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

class RPSRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numOfSamples = null;
    }
    else {
      if (initObj.hasOwnProperty('numOfSamples')) {
        this.numOfSamples = initObj.numOfSamples
      }
      else {
        this.numOfSamples = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RPSRequest
    // Serialize message field [numOfSamples]
    bufferOffset = _serializer.uint8(obj.numOfSamples, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RPSRequest
    let len;
    let data = new RPSRequest(null);
    // Deserialize message field [numOfSamples]
    data.numOfSamples = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/RPSRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '954cb705434c03e209b08b5f31fb6958';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8  numOfSamples
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RPSRequest(null);
    if (msg.numOfSamples !== undefined) {
      resolved.numOfSamples = msg.numOfSamples;
    }
    else {
      resolved.numOfSamples = 0
    }

    return resolved;
    }
};

class RPSResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.optMove = null;
    }
    else {
      if (initObj.hasOwnProperty('optMove')) {
        this.optMove = initObj.optMove
      }
      else {
        this.optMove = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RPSResponse
    // Serialize message field [optMove]
    bufferOffset = _serializer.string(obj.optMove, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RPSResponse
    let len;
    let data = new RPSResponse(null);
    // Deserialize message field [optMove]
    data.optMove = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.optMove.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/RPSResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73519a69546e2ed985b74e6b16e44adb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string optMove
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RPSResponse(null);
    if (msg.optMove !== undefined) {
      resolved.optMove = msg.optMove;
    }
    else {
      resolved.optMove = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RPSRequest,
  Response: RPSResponse,
  md5sum() { return '9acda9860bc8c37eb184a52b3d4300b0'; },
  datatype() { return 'inmoov_msgs/RPS'; }
};
