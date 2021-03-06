// Auto-generated. Do not edit!

// (in-package cob_people_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class getDetectionsGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maximum_message_age = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('maximum_message_age')) {
        this.maximum_message_age = initObj.maximum_message_age
      }
      else {
        this.maximum_message_age = 0.0;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getDetectionsGoal
    // Serialize message field [maximum_message_age]
    bufferOffset = _serializer.float32(obj.maximum_message_age, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float32(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getDetectionsGoal
    let len;
    let data = new getDetectionsGoal(null);
    // Deserialize message field [maximum_message_age]
    data.maximum_message_age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_people_detection/getDetectionsGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd64e18e045dc05a5cb38c8f05510e32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal
    float32 maximum_message_age		# maximal allowed age of response message (in s), 0 means we do not care
    float32 timeout				# maximal waiting time (in s) for receiving a detection, 0 is infinitely. If the detection pipeline was not running before, it will start upon receiving this message and collect messages for the full timeout period.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getDetectionsGoal(null);
    if (msg.maximum_message_age !== undefined) {
      resolved.maximum_message_age = msg.maximum_message_age;
    }
    else {
      resolved.maximum_message_age = 0.0
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    return resolved;
    }
};

module.exports = getDetectionsGoal;
