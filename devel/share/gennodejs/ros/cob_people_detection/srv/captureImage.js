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

class captureImageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type captureImageRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type captureImageRequest
    let len;
    let data = new captureImageRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_people_detection/captureImageRequest';
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
    const resolved = new captureImageRequest(null);
    return resolved;
    }
};

class captureImageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number_captured_images = null;
    }
    else {
      if (initObj.hasOwnProperty('number_captured_images')) {
        this.number_captured_images = initObj.number_captured_images
      }
      else {
        this.number_captured_images = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type captureImageResponse
    // Serialize message field [number_captured_images]
    bufferOffset = _serializer.int32(obj.number_captured_images, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type captureImageResponse
    let len;
    let data = new captureImageResponse(null);
    // Deserialize message field [number_captured_images]
    data.number_captured_images = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_people_detection/captureImageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86d49773917fcd20b952a821d3a9e019';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 number_captured_images
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new captureImageResponse(null);
    if (msg.number_captured_images !== undefined) {
      resolved.number_captured_images = msg.number_captured_images;
    }
    else {
      resolved.number_captured_images = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: captureImageRequest,
  Response: captureImageResponse,
  md5sum() { return '86d49773917fcd20b952a821d3a9e019'; },
  datatype() { return 'cob_people_detection/captureImage'; }
};
