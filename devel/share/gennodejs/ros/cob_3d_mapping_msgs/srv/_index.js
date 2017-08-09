
"use strict";

let GetTables = require('./GetTables.js')
let MoveToTable = require('./MoveToTable.js')
let GetObjectsOfClass = require('./GetObjectsOfClass.js')
let SetBoundingBoxes = require('./SetBoundingBoxes.js')
let SetPointMap = require('./SetPointMap.js')
let GetBoundingBoxes = require('./GetBoundingBoxes.js')
let GetGeometryMap = require('./GetGeometryMap.js')
let UpdateMap = require('./UpdateMap.js')
let GetPointMap = require('./GetPointMap.js')
let SetGeometryMap = require('./SetGeometryMap.js')
let ModifyMap = require('./ModifyMap.js')
let GetPlane = require('./GetPlane.js')
let GetApproachPoseForPolygon = require('./GetApproachPoseForPolygon.js')

module.exports = {
  GetTables: GetTables,
  MoveToTable: MoveToTable,
  GetObjectsOfClass: GetObjectsOfClass,
  SetBoundingBoxes: SetBoundingBoxes,
  SetPointMap: SetPointMap,
  GetBoundingBoxes: GetBoundingBoxes,
  GetGeometryMap: GetGeometryMap,
  UpdateMap: UpdateMap,
  GetPointMap: GetPointMap,
  SetGeometryMap: SetGeometryMap,
  ModifyMap: ModifyMap,
  GetPlane: GetPlane,
  GetApproachPoseForPolygon: GetApproachPoseForPolygon,
};
