// Auto-generated. Do not edit!

// (in-package pckg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class move_pos_singleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name_motor = null;
      this.pos = null;
    }
    else {
      if (initObj.hasOwnProperty('name_motor')) {
        this.name_motor = initObj.name_motor
      }
      else {
        this.name_motor = '';
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type move_pos_singleRequest
    // Serialize message field [name_motor]
    bufferOffset = _serializer.string(obj.name_motor, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _serializer.float32(obj.pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type move_pos_singleRequest
    let len;
    let data = new move_pos_singleRequest(null);
    // Deserialize message field [name_motor]
    data.name_motor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name_motor);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pckg/move_pos_singleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '150379f0226f3135206872b0c794909d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name_motor
    float32 pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new move_pos_singleRequest(null);
    if (msg.name_motor !== undefined) {
      resolved.name_motor = msg.name_motor;
    }
    else {
      resolved.name_motor = ''
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = 0.0
    }

    return resolved;
    }
};

class move_pos_singleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type move_pos_singleResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.bool(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type move_pos_singleResponse
    let len;
    let data = new move_pos_singleResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pckg/move_pos_singleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2cc9e9d8c464550830df49c160979ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ret
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new move_pos_singleResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = false
    }

    return resolved;
    }
};

module.exports = {
  Request: move_pos_singleRequest,
  Response: move_pos_singleResponse,
  md5sum() { return '0c0bf682ee407d9ffa1c8714b3dcfa29'; },
  datatype() { return 'pckg/move_pos_single'; }
};
