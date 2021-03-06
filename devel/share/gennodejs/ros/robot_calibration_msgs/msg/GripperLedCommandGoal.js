// Auto-generated. Do not edit!

// (in-package robot_calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GripperLedCommandGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.led_code = null;
    }
    else {
      if (initObj.hasOwnProperty('led_code')) {
        this.led_code = initObj.led_code
      }
      else {
        this.led_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperLedCommandGoal
    // Serialize message field [led_code]
    bufferOffset = _serializer.uint8(obj.led_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperLedCommandGoal
    let len;
    let data = new GripperLedCommandGoal(null);
    // Deserialize message field [led_code]
    data.led_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_calibration_msgs/GripperLedCommandGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11513917910062a2ca72ae2699b68556';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # This action is used to flash a sequence with LEDs, which can then be detected by calibration
    
    uint8 led_code
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperLedCommandGoal(null);
    if (msg.led_code !== undefined) {
      resolved.led_code = msg.led_code;
    }
    else {
      resolved.led_code = 0
    }

    return resolved;
    }
};

module.exports = GripperLedCommandGoal;
