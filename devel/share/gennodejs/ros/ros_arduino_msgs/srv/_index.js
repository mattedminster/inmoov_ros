
"use strict";

let AnalogWrite = require('./AnalogWrite.js')
let DigitalWrite = require('./DigitalWrite.js')
let DigitalRead = require('./DigitalRead.js')
let ServoWrite = require('./ServoWrite.js')
let ServoRead = require('./ServoRead.js')
let DigitalSetDirection = require('./DigitalSetDirection.js')
let AnalogRead = require('./AnalogRead.js')

module.exports = {
  AnalogWrite: AnalogWrite,
  DigitalWrite: DigitalWrite,
  DigitalRead: DigitalRead,
  ServoWrite: ServoWrite,
  ServoRead: ServoRead,
  DigitalSetDirection: DigitalSetDirection,
  AnalogRead: AnalogRead,
};
