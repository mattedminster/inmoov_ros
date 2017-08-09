
"use strict";

let FaceProperties = require('./FaceProperties.js');
let Annotation = require('./Annotation.js');
let CategoryProbability = require('./CategoryProbability.js');
let PersonDetection = require('./PersonDetection.js');
let BodypartDetection = require('./BodypartDetection.js');
let Recognition = require('./Recognition.js');
let CategoricalDistribution = require('./CategoricalDistribution.js');

module.exports = {
  FaceProperties: FaceProperties,
  Annotation: Annotation,
  CategoryProbability: CategoryProbability,
  PersonDetection: PersonDetection,
  BodypartDetection: BodypartDetection,
  Recognition: Recognition,
  CategoricalDistribution: CategoricalDistribution,
};
