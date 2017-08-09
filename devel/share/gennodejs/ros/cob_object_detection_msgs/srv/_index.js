
"use strict";

let AcquireObjectImage = require('./AcquireObjectImage.js')
let ComputeGraspsVacuumGripper = require('./ComputeGraspsVacuumGripper.js')
let BaTestEnvironment = require('./BaTestEnvironment.js')
let SaveRecordedObject = require('./SaveRecordedObject.js')
let StopObjectRecording = require('./StopObjectRecording.js')
let StartObjectRecording = require('./StartObjectRecording.js')
let DetectObjects = require('./DetectObjects.js')
let BagTrainObject = require('./BagTrainObject.js')
let TrainObject = require('./TrainObject.js')

module.exports = {
  AcquireObjectImage: AcquireObjectImage,
  ComputeGraspsVacuumGripper: ComputeGraspsVacuumGripper,
  BaTestEnvironment: BaTestEnvironment,
  SaveRecordedObject: SaveRecordedObject,
  StopObjectRecording: StopObjectRecording,
  StartObjectRecording: StartObjectRecording,
  DetectObjects: DetectObjects,
  BagTrainObject: BagTrainObject,
  TrainObject: TrainObject,
};
