
"use strict";

let Analog = require('./Analog.js');
let AnalogFloat = require('./AnalogFloat.js');
let SensorState = require('./SensorState.js');
let ArduinoConstants = require('./ArduinoConstants.js');
let Digital = require('./Digital.js');

module.exports = {
  Analog: Analog,
  AnalogFloat: AnalogFloat,
  SensorState: SensorState,
  ArduinoConstants: ArduinoConstants,
  Digital: Digital,
};
