#include <EEPROM.h>
#include <Servo.h>
#include <Arduino.h>
#include "configuration.h"
#include "rosServo.h"
#include <ros.h>


rosServo::rosServo(int pin, int sensor, float minAngle, float maxAngle, float rest, int minPulse, int maxPulse, int minSensor, int maxSensor,int smoothing, int maxSpeed) {
  //configure ID
  //this->servoID = id;

  this->aTestlog = "";
  
  //configure Pins for Servo
  this->servoPin = pin;
  pinMode(servoPin, OUTPUT);

  if (sensor == -1){
    hasSensorFeedback = false;
  }
  else{
    hasSensorFeedback = true;
    this->sensorPin = sensor;
    pinMode(sensorPin, INPUT);
    if (minSensor == -1 || maxSensor == -1){
      //feedback is not configured properly don't use it
      hasSensorFeedback = false;
    }
  }

   //Set provided servo values
  this->servoMinAngle = minAngle;
  this->servoMaxAngle = maxAngle;
  this->servoMinPulse = minPulse;
  this->servoMaxPulse = maxPulse;
  this->servoMinSensor = minSensor;
  this->servoMaxSensor = maxSensor;
  this->servoSmoothing = smoothing;
  this->servoMaxSpeed = maxSpeed;
  this->servoRest = rest;

  if (minAngle == -1 || maxAngle == -1 || minPulse == -1 || maxPulse == -1){
    //servo is not ready - were not going to move it
    //calibrated = false;
  } 
  
 if (hasSensorFeedback == true){
  setGoal(readPositionAngle());
 }else{
  
  setGoal(this->servoRest);
  this->noFeedbackPulse = map((this->servoRest* 1000), (int)(this->servoMinAngle * 1000.0), (int)(this->servoMaxAngle * 1000.0), this->servoMinPulse, this->servoMaxPulse);
  
 }
  this->moving = false;
  this->enabled = 0;


  //this->setEnabled(true);
  //delay(1000);
  sampleStartMillis = millis();

  //set default vel - aka full speed
  this->servoMaxSpeed = 0;
  this->lastUpdate = millis();
}


void rosServo::setGoal(float a) {
 
  receivedCommand = true;   //mark that we've received a position command

  // no guarantees the min max angles are mapped backwards
  this->goalAngle = a;
  if (this->servoMinAngle < this->servoMaxAngle) {
    this->goalAngle = constrain(a, this->servoMinAngle, this->servoMaxAngle);
  }
  else {
    this->goalAngle = constrain(a, this->servoMaxAngle, this->servoMinAngle);
  }

  this->moveToMicroseconds((map(this->goalAngle, (int)this->servoMinAngle, (int)this->servoMaxAngle, this->servoMinPulse, this->servoMaxPulse)));
}

float rosServo::getGoal() {
  return this->goalAngle;
}


void rosServo::moveToMicroseconds(int microseconds) {
  this->startMillis = millis();
  
  if (hasSensorFeedback == true){
  this->startPulse = this->readPositionPulse();
  }
  else{
    //if we dont have feedback we need to begin
    this->startPulse = this->noFeedbackPulse;
 }

  if(this->servoMinPulse < this->servoMaxPulse) {
    microseconds = constrain(microseconds,this->servoMinPulse,this->servoMaxPulse);
  }
  else {
    microseconds = constrain(microseconds,this->servoMaxPulse,this->servoMinPulse);
  }

  
  this->commandPulse = microseconds;

  this->deltaPulse = ((this->commandPulse - this->startPulse)); 
  this->moveDuration = abs((this->deltaPulse * 1000) / ticksPerSecond);

  if (this->deltaPulse > 0) {
    this->velocityArc = 0;
  }
  else {
    this->velocityArc = 180;
  }

  moving = true;
}

int rosServo::getCommandPulse() {
  return this->commandPulse;
}




short rosServo::readPositionRaw() {
  return this->goalAngle;
}

#define NUM_SAMPLES 350
void rosServo::updatePosition() {
  if (hasSensorFeedback == true){
    for (int i = 0; i < 50; i++) {
      sampleBucket += analogRead(this->sensorPin);
    }
    sampleCount += 50;
    
    if (sampleCount == NUM_SAMPLES) {
      sampleCount = 0;
      this->position = sampleBucket /= NUM_SAMPLES;
      this->sampleDuration = millis() - this->sampleStartMillis;
      this->sampleStartMillis = millis();
    }
  }
}


float rosServo::readPositionAngle() {
  if (hasSensorFeedback == true){
  short p = readPositionRaw();
  if (p < 100)
    return 0;
  else
    return ((map(p, this->servoMinSensor, this->servoMaxSensor, (int)(this->servoMinAngle * 1000.0), (int)(this->servoMaxAngle * 1000.0))) / 1000.0);

  } else{
    //no active feedback
    //return -1;
    return this->goalAngle;
  }
}

short rosServo::readPositionPulse() {
  if (hasSensorFeedback == true){
  return map(this->readPositionRaw(), this->servoMinSensor, this->servoMaxSensor, this->servoMinPulse, this->servoMaxPulse);
  } else {
    //no active feedback
    return -1;
  }
}

void rosServo::update() {
  //Serial.println("update");

  this->updatePosition();


  deltaMillis = millis() - startMillis;

  switch (this->servoSmoothing) {

    case 0:  // full speed
       this->servo.writeMicroseconds(this->commandPulse);
      this->noFeedbackPulse = commandPulse;
      break;
      
    case 1:   // speedControlled
       int currentPos;
        if (hasSensorFeedback == true){
          currentPos = readPositionPulse();
        }else{
          currentPos = abs(this->noFeedbackPulse);
        }
       
        
        
         if (moving) {
            deltaTime = millis() - lastUpdate;
            
            if (currentPos != commandPulse) {
              float step = this->servoMaxSpeed * deltaTime;
              step /= 1000; 
              
              //if (isSweeping) {
               // step = sweepStep;
             // }
             
              if (this->servoMaxSpeed == 0) { // when maxSpeed== 0, it mean full speed ahead
                step = commandPulse - currentPos;
              }
              else if ((int)currentPos > commandPulse) {
                step *=-1;
              }  
  
              //step = (step * 1000);
              currentPos += step;
          
             // if ((step > 0.0 && (int)currentPos > commandPulse) || (step < 0.0 && (int)currentPos < commandPulse)) {
               // currentPos = commandPulse;
                //curPos3 = currentPos;
             // }
            
              //this->aTestlog ="curPos1: " + String(curPos1) + "curPos2: " + String(curPos2) + "curPos3: " + String(curPos3) + " Step: " + String(step) + " currentPos: " + String(currentPos) + " command pulse: " + String(commandPulse) + " comPulse1: " + String(comPulse1); 
              this->aTestlog = "current position: " + String(currentPos) + " step: " + String(step);
              //this->aTestlog ="curPos1: " + String(curPos1) + "curPos2: " + String(curPos2) + "curPos3: " + String(curPos3) + " Step: " + String(step) + " currentPos: " + String(currentPos) + " command pulse: " + String(commandPulse) + " comPulse1: " + String(comPulse1); 
              this->servo.writeMicroseconds((int)currentPos);
              this->noFeedbackPulse = currentPos;
            }
            else {
              moving = false;
            }
         }
        break;

    case 2: // linear
      if (commandPulse > startPulse) {
        currentPulse = startPulse + (ticksPerSecond * this->deltaMillis) / 1000;

        if (currentPulse > commandPulse)
          currentPulse = commandPulse;
      }
      if (commandPulse < startPulse) {
        currentPulse = startPulse - (ticksPerSecond * this->deltaMillis) / 1000;

        if (this->currentPulse < this->commandPulse)
          this->currentPulse = this->commandPulse;
      }
      this->servo.writeMicroseconds(currentPulse);
      this->noFeedbackPulse = currentPulse;
      break;

    case 3: // calcCos1
      if (deltaPulse > 0) {
        velocityArc = 0 + map(millis() - startMillis, 0, moveDuration, 0, 180);
        if (velocityArc >= 180) {
          velocityArc = 180;
          moving = false;
        }

        r = (cos(radians(velocityArc)) * 100);
        currentPulse = map(r, 100, -100, startPulse, commandPulse);
      }
      if (deltaPulse < 0) {
        velocityArc = 180 - map(millis() - startMillis, 0, moveDuration, 0, 180);
        if (velocityArc <= 0) {
          velocityArc = 0;
          moving = false;
        }
        r = (cos(radians(velocityArc)) * 100);
        currentPulse = map(r, -100, 100, startPulse, commandPulse);
      }
      if (deltaPulse == 0) {
        moving = false;
      }
      this->servo.writeMicroseconds(currentPulse);
      this->noFeedbackPulse = currentPulse;
      break;

    case 4:
      if (deltaPulse > 0) {
        velocityArc = 0 + map(millis() - startMillis, 0, moveDuration, 0, 180);
        if (velocityArc >= 180) {
          velocityArc = 180;
          moving = false;
        }
        if (velocityArc <= 90) {
          r = sqrt(cos(radians(velocityArc))) * 100;
          currentPulse = map(r, 100, -100, startPulse, commandPulse);
        }
        else {
          r = -sqrt(cos(radians(180 - velocityArc))) * 100;
          currentPulse = map(r, 100, -100, startPulse, commandPulse);
        }
      }
      if (deltaPulse < 0) {
        velocityArc = 180 - map(millis() - startMillis, 0, moveDuration, 0, 180);
        if (velocityArc <= 0) {
          velocityArc = 0;
          moving = false;
        }
        if (velocityArc <= 90) {
          r = sqrt(cos(radians(velocityArc))) * 100;
          currentPulse = map(r, -100, 100, startPulse, commandPulse);
        }
        else {
          r = -sqrt(cos(radians(180 - velocityArc))) * 100;
          currentPulse = map(r, -100, 100, startPulse, commandPulse);
        }
      }
      if (deltaPulse == 0) {
        moving = false;
      }
      
      this->servo.writeMicroseconds(currentPulse);
      this->noFeedbackPulse = currentPulse;
      moving = false;
     break;
      
  }

  this->lastUpdate = millis();

}

String rosServo::test(){
 
  return this->aTestlog;
  
}

void rosServo::setupADC() {
  if (hasSensorFeedback == true){
  //analogReadResolution(12);
 //analogReference(EXTERNAL);
  //analogReadAveraging(8);
  }
}

void rosServo::setMinPulse(short minpulse) {
  this->setEnabled(0);
  this->servoMinPulse = minpulse;
}

short rosServo::getMinPulse() {
  return this->servoMinPulse;
}

void rosServo::setGoalPulse(int pulse) {
  this->commandPulse = pulse;
  this->servo.writeMicroseconds(this->commandPulse);
}

int rosServo::getGoalPulse() {
  return this->commandPulse;
}

int rosServo::getServoPin() {
  //add disable
  return this->servoPin;
}

void rosServo::setServoPin(int pin) {
  //add add disable
  this->setEnabled(0);
  this->servoPin = pin;
}

int rosServo::getSensorPin() {
  return this->sensorPin;
}

void rosServo::setSensorPin(int pin) {
  this->sensorPin = pin;
}


void rosServo::setMaxPulse(short maxpulse) {
  this->setEnabled(0);
  this->servoMaxPulse = maxpulse;
}

short rosServo::getMaxPulse() {
  return this->servoMaxPulse;
}

void rosServo::setMinAngle(float minangle) {
  this->setEnabled(0);
  this->servoMinAngle = minangle;
}

float rosServo::getMinAngle() {
  return this->servoMinAngle;
}

void rosServo::setRest(float r) {
  this->servoRest = r;
}

float rosServo::getRest() {
  return this->servoRest;
}

void rosServo::setMaxAngle(float maxAngle) {
  this->setEnabled(0);
  this->servoMaxAngle = maxAngle;
}

float rosServo::getMaxAngle() {
  return this->servoMaxAngle;
}

void rosServo::setMinSensor(int minsensor) {
  this->servoMinSensor = minsensor;
}

int rosServo::getMinSensor() {
  return this->servoMinSensor;
}

void rosServo::setMaxSensor(int maxsensor) {
  this->servoMaxSensor = maxsensor;
}

int rosServo::getMaxSensor() {
  return this-> servoMaxSensor;
}

void rosServo::setEnabled(int val) {
  
  if (val == 1) {
    servo.attach(this->servoPin, this->servoMinPulse, this->servoMaxPulse); 
    this->enabled = 1;
  }
  else {
    servo.detach();
    this->enabled = 0;
  }
}

bool rosServo::getEnabled() {
  return this->enabled;
}



void rosServo::setSmooth(int s) {
  this->servoSmoothing = s;
  
}

int rosServo::getSmooth() {
  return this->servoSmoothing;
}


float rosServo::getMaxSpeed() {
  return this->servoMaxSpeed;
}

void rosServo::setMaxSpeed(float s) {
  this->servoMaxSpeed = s;
}

float rosServo::readPresentSpeed() {
  if (hasSensorFeedback == true){
    int speed;
    speed = goalAngle - readPositionAngle();
    if (speed > 0) {
      speed = 1;
    }
    if (speed < 0) {
      speed = -1;
    }
    return speed;
  } else {
    return -1;
  }
}

bool rosServo::getMoving() {
   if (hasSensorFeedback == true){
      if (abs(readPositionAngle() - goalAngle) < 2)
        return 0;
      else
        return 1;
   } else{
    if (moving == true){
      return 1;
    } else{
      return 0;
    }
   }

}

bool rosServo::getPower() {
   if (hasSensorFeedback == true){
  if (readPositionRaw() > 100)
    return 1;
  else
    return 0;
   } else{
    return -1;
   }
}


