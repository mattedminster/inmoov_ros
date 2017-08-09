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

class updateDataGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.update_mode = null;
      this.update_index = null;
      this.old_label = null;
      this.new_label = null;
    }
    else {
      if (initObj.hasOwnProperty('update_mode')) {
        this.update_mode = initObj.update_mode
      }
      else {
        this.update_mode = 0;
      }
      if (initObj.hasOwnProperty('update_index')) {
        this.update_index = initObj.update_index
      }
      else {
        this.update_index = 0;
      }
      if (initObj.hasOwnProperty('old_label')) {
        this.old_label = initObj.old_label
      }
      else {
        this.old_label = '';
      }
      if (initObj.hasOwnProperty('new_label')) {
        this.new_label = initObj.new_label
      }
      else {
        this.new_label = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type updateDataGoal
    // Serialize message field [update_mode]
    bufferOffset = _serializer.int32(obj.update_mode, buffer, bufferOffset);
    // Serialize message field [update_index]
    bufferOffset = _serializer.int32(obj.update_index, buffer, bufferOffset);
    // Serialize message field [old_label]
    bufferOffset = _serializer.string(obj.old_label, buffer, bufferOffset);
    // Serialize message field [new_label]
    bufferOffset = _serializer.string(obj.new_label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type updateDataGoal
    let len;
    let data = new updateDataGoal(null);
    // Deserialize message field [update_mode]
    data.update_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [update_index]
    data.update_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [old_label]
    data.old_label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [new_label]
    data.new_label = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.old_label.length;
    length += object.new_label.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_people_detection/updateDataGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd34a17444815de8f9d0fe51faa3bd9da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Updates data in the training database
    #
    # goal message
    int32 update_mode			# update the label with new_label either for 1=one image given the update_index, 2=all entries labeled with old_label
    int32 update_index			# the database entry with this index number shall be updated with a new label
    string old_label			# all database entries carrying this label are to be updated with new_label
    string new_label			# the new label that is supposed to replace the old one
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new updateDataGoal(null);
    if (msg.update_mode !== undefined) {
      resolved.update_mode = msg.update_mode;
    }
    else {
      resolved.update_mode = 0
    }

    if (msg.update_index !== undefined) {
      resolved.update_index = msg.update_index;
    }
    else {
      resolved.update_index = 0
    }

    if (msg.old_label !== undefined) {
      resolved.old_label = msg.old_label;
    }
    else {
      resolved.old_label = ''
    }

    if (msg.new_label !== undefined) {
      resolved.new_label = msg.new_label;
    }
    else {
      resolved.new_label = ''
    }

    return resolved;
    }
};

module.exports = updateDataGoal;