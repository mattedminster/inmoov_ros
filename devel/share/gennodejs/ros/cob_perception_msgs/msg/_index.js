
"use strict";

let Rect = require('./Rect.js');
let ColorDepthImageArray = require('./ColorDepthImageArray.js');
let Mask = require('./Mask.js');
let PositionMeasurement = require('./PositionMeasurement.js');
let Float64ArrayStamped = require('./Float64ArrayStamped.js');
let Skeleton = require('./Skeleton.js');
let PointCloud2Array = require('./PointCloud2Array.js');
let People = require('./People.js');
let DetectionArray = require('./DetectionArray.js');
let Detection = require('./Detection.js');
let PositionMeasurementArray = require('./PositionMeasurementArray.js');
let PersonStamped = require('./PersonStamped.js');
let Person = require('./Person.js');
let ColorDepthImage = require('./ColorDepthImage.js');

module.exports = {
  Rect: Rect,
  ColorDepthImageArray: ColorDepthImageArray,
  Mask: Mask,
  PositionMeasurement: PositionMeasurement,
  Float64ArrayStamped: Float64ArrayStamped,
  Skeleton: Skeleton,
  PointCloud2Array: PointCloud2Array,
  People: People,
  DetectionArray: DetectionArray,
  Detection: Detection,
  PositionMeasurementArray: PositionMeasurementArray,
  PersonStamped: PersonStamped,
  Person: Person,
  ColorDepthImage: ColorDepthImage,
};
