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

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.component = null;
      this.status = null;
      this.severity = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('component')) {
        this.component = initObj.component
      }
      else {
        this.component = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
      if (initObj.hasOwnProperty('severity')) {
        this.severity = initObj.severity
      }
      else {
        this.severity = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [component]
    bufferOffset = _serializer.string(obj.component, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    // Serialize message field [severity]
    bufferOffset = _serializer.uint8(obj.severity, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [component]
    data.component = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [severity]
    data.severity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.component.length;
    length += object.message.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'inmoov_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '148ef940c96440f91ff132cdf07570ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Status reporting message
    #
    #
    uint8 SEVERITY_INFO=0
    uint8 SEVERITY_WARNING=1
    uint8 SEVERITY_ERROR=2
    uint8 SEVERITY_FATAL=3
    string  component
    bool    status
    uint8   severity
    string  message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
    if (msg.component !== undefined) {
      resolved.component = msg.component;
    }
    else {
      resolved.component = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    if (msg.severity !== undefined) {
      resolved.severity = msg.severity;
    }
    else {
      resolved.severity = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  SEVERITY_INFO: 0,
  SEVERITY_WARNING: 1,
  SEVERITY_ERROR: 2,
  SEVERITY_FATAL: 3,
}

module.exports = Status;
