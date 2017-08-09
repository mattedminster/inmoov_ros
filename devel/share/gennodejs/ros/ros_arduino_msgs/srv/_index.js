
"use strict";

let ServoRead = require('./ServoRead.js')
let ServoWrite = require('./ServoWrite.js')
let DigitalSetDirection = require('./DigitalSetDirection.js')
let DigitalWrite = require('./DigitalWrite.js')
let DigitalRead = require('./DigitalRead.js')
let AnalogWrite = require('./AnalogWrite.js')
let AnalogRead = require('./AnalogRead.js')

module.exports = {
  ServoRead: ServoRead,
  ServoWrite: ServoWrite,
  DigitalSetDirection: DigitalSetDirection,
  DigitalWrite: DigitalWrite,
  DigitalRead: DigitalRead,
  AnalogWrite: AnalogWrite,
  AnalogRead: AnalogRead,
};
