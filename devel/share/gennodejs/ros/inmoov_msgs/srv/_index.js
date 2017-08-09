
"use strict";

let RPS = require('./RPS.js')
let inmoov_voice = require('./inmoov_voice.js')
let inmoov_sound_play = require('./inmoov_sound_play.js')
let RequestStatus = require('./RequestStatus.js')
let NeoPixelSetBrightness = require('./NeoPixelSetBrightness.js')
let MotorParameter = require('./MotorParameter.js')

module.exports = {
  RPS: RPS,
  inmoov_voice: inmoov_voice,
  inmoov_sound_play: inmoov_sound_play,
  RequestStatus: RequestStatus,
  NeoPixelSetBrightness: NeoPixelSetBrightness,
  MotorParameter: MotorParameter,
};
