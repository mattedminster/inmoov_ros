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

class RequestStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.caller = null;
    }
    else {
      if (initObj.hasOwnProperty('caller')) {
        this.caller = initObj.caller
      }
      else {
        this.caller = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestStatusRequest
    // Serialize message field [caller]
    bufferOffset = _serializer.string(obj.caller, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestStatusRequest
    let len;
    let data = new RequestStatusRequest(null);
    // Deserialize message field [caller]
    data.caller = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.caller.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/RequestStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfc9c838aa293f95bd59d8e7ba2b073d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string caller
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestStatusRequest(null);
    if (msg.caller !== undefined) {
      resolved.caller = msg.caller;
    }
    else {
      resolved.caller = ''
    }

    return resolved;
    }
};

class RequestStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestStatusResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestStatusResponse
    let len;
    let data = new RequestStatusResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inmoov_msgs/RequestStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '284aa12dd9e9e760802ac9f38036ea5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestStatusResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestStatusRequest,
  Response: RequestStatusResponse,
  md5sum() { return '1ba6f49c4dbbcc62a030b0539b05a793'; },
  datatype() { return 'inmoov_msgs/RequestStatus'; }
};
