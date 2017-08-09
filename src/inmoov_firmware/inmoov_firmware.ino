#include <Servo.h>
#include <ros.h>
#include "configuration.h"
#include "inmoov_firmware.h"

#include <inmoov_msgs/MotorCommand.h>
#include <inmoov_msgs/MotorParameter.h>
#include <inmoov_msgs/MotorStatus.h>
#include <inmoov_msgs/ServoSetup.h>
#include <std_srvs/Empty.h>


//#define LED 13
int i;
int timeout = 0;

int commandAngle;
int startMillis;
int updateMillis;
LinkedList<rosServo*> servoList;
bool motorStatusEnabled = true;
bool loggingEnabled = false;
int UPDATEPERIOD = 250;


ros::NodeHandle  nh;

inmoov_msgs::MotorCommand command_msg;
inmoov_msgs::ServoSetup servoSetup_msg;
inmoov_msgs::MotorParameter parameter_msg;
inmoov_msgs::MotorStatus status_msg;

const bool heartbeats[] = {1, 0, 1, 0, 0, 0, 0, 0};

void rosLog(String toLog){
  if (loggingEnabled == true) {
     nh.loginfo(toLog.c_str());
  }
}

rosServo* getDevice(int pin){
  ListNode<rosServo*>* node = servoList.getRoot();

  while (node != NULL) {

    if (node->data->servoPin == pin) {
      return node->data;
    }
    node = node->next;
  }
  return NULL; 
}


void addDevice(rosServo* servo) {

  servoList.add(servo);
}


void getParameter(const inmoov_msgs::MotorParameter::Request & req, inmoov_msgs::MotorParameter::Response & res) {
  byte pin = req.pin;
  byte parameter = req.parameter;
  float value = 0.0;
  rosLog(String("Get Pin: " + String(pin)));
  rosLog(String("Get Parameter: " + String(parameter)));
  rosLog(String("Get Value: " + String(value)));

  switch (parameter) {

    case P_GOALPOSITION:
      value = getDevice(pin)->getGoal();
      break;

    case P_MINANGLE:
      value = getDevice(pin)->getMinAngle();
      break;

    case P_MAXANGLE:
      value = getDevice(pin)->getMaxAngle();
      break;

    case P_MINPULSE:
      value = (float)getDevice(pin)->getMinPulse();
      break;

    case P_MAXPULSE:
      value = (float)getDevice(pin)->getMaxPulse();
      break;

    case P_MINSENSOR:
      value = (float)getDevice(pin)->getMinSensor();
      break;

    case P_MAXSENSOR:
      value = (float)getDevice(pin)->getMaxSensor();
      break;

    case P_PRESENTPOSITION:
      value = getDevice(pin)->readPositionAngle();
      break;

    case P_SENSORRAW:
      value = (float)getDevice(pin)->readPositionRaw();
      break;

    case P_MOVING:
      value = (float)getDevice(pin)->getMoving();
      break;

    case P_PRESENTSPEED:
      value = getDevice(pin)->readPresentSpeed();
      break;

    case P_SMOOTH:
      value = (float)getDevice(pin)->getSmooth();
      break;

    case P_GOALSPEED:
      value = getDevice(pin)->getMaxSpeed();
      break;

    case P_ENABLE:
      value = (float)getDevice(pin)->getEnabled();
      break;

    case P_POWER:
      value = (float)getDevice(pin)->getPower();
      break;

    case P_GOALPULSE:
      value = (float)getDevice(pin)->getGoalPulse();
      break;

    case P_MAXSPEED:
      value = (float)getDevice(pin)->getMaxSpeed();
      break;

    case P_SERVOPIN:
      value = (float)getDevice(pin)->getServoPin();
      break;

    case P_SENSORPIN:
      value = (float)getDevice(pin)->getSensorPin();
      break;
      
    case P_REST:
      value = (float)getDevice(pin)->getRest();
      break;
  }

  res.data = float(value);

}

void commandCb( const inmoov_msgs::MotorCommand& command_msg) {

  int pin = int(command_msg.pin);
  byte parameter = byte(command_msg.parameter);
  float value = float(command_msg.value);
  rosLog(String("Pin: " + String(pin)));
  rosLog(String("Parameter: " + String(parameter)));
  rosLog(String("Value: " + String(value)));

  if (pin == 255) {
    switch (parameter){
      case 1:
        rosLog(String("Resetting Servo List!"));
        servoList.clear();
      break;
      case 2:
        if (value == 1) {
          rosLog(String("Enabling Motor Status"));
          motorStatusEnabled = true;
        }else if (value == 0){
         rosLog(String("Disabling Motor Status"));
          motorStatusEnabled = false;
        }
      break;
      case 3:
      rosLog(String("Updating Update Period to: " + String(value)));
      UPDATEPERIOD = value;
      break;
      case 4:
        if (value == 1) {
            rosLog(String("Enabling Logging"));
            loggingEnabled = true;
          }else if (value == 0){
           rosLog(String("Disabling Motor Status"));
            loggingEnabled = false;
          }
        
    }
  }else{
    if (getDevice(pin) == NULL){
        rosLog(("Null detected on pin: " + String(pin)));
        parameter = -1;
      }
    switch (parameter) {
      
      
  
      case P_GOALPOSITION:
        getDevice(pin)->setGoal(value);
         rosLog(("Setting Goal for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
  
      case P_MINANGLE:
        getDevice(pin)->setMinAngle(value);
        rosLog(("Setting minAngle for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
  
      case P_MAXANGLE:
        getDevice(pin)->setMaxAngle(value);
        rosLog(("Setting maxAngle for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
  
      case P_MINPULSE:
        getDevice(pin)->setMinPulse(value);
        rosLog(("Setting MinPulse for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
  
      case P_MAXPULSE:
        getDevice(pin)->setMaxPulse(value);
        rosLog(("Setting MaxPulse for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
  
      case P_ENABLE:
        if (value == 1){
          getDevice(pin)->setEnabled(1);
          rosLog(("Enabling servo on pin: " + String(pin)));
        } else if (value == 0){
          getDevice(pin)->setEnabled(0);
          rosLog(("Disabling servo on pin: " + String(pin)));
        }
        break;
  
  
      case P_MINSENSOR:
        getDevice(pin)->setMinSensor(value);
        rosLog(("Setting minSensor for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
  
      case P_MAXSENSOR:
        getDevice(pin)->setMaxSensor(value);
        rosLog(("Setting maxSensor for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
  
      case P_SMOOTH:
        getDevice(pin)->setSmooth(value);
        rosLog(("Setting smooth for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
  
      case P_GOALSPEED:
        getDevice(pin)->setMaxSpeed(value);
        rosLog(("Setting Goal Speed for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
        
      case P_GOALPULSE:
        getDevice(pin)->setGoalPulse(value);
        rosLog(("Setting Goal Pulse for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
        
      case P_MAXSPEED:
        getDevice(pin)->setMaxSpeed(value);
        rosLog(("Setting max speed for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
        
      case P_SERVOPIN:
        getDevice(pin)->setServoPin(value);
        rosLog(("Changing servo pin for servo currently set to pin : " + String(pin) + " to: " + String(value)));
        break;
        
      case P_SENSORPIN:
        getDevice(pin)->setSensorPin(value);
        rosLog(("Changing sensor pin for servo on pin: " + String(pin) + " to: " + String(value)));
        break;
        
      case P_REST:
        getDevice(pin)->setRest(value);
        rosLog(("Setting rest for servo on pin: " + String(pin) + " to: " + String(value)));
        break;

        
  
    }
  }

}




void setupServo(const inmoov_msgs::ServoSetup& servoSetup_msg) {
//setup Servo
rosServo* servo = new rosServo(servoSetup_msg.servoPin, servoSetup_msg.sensorPin, servoSetup_msg.minAngle, servoSetup_msg.maxAngle, servoSetup_msg.rest, servoSetup_msg.minPulse, servoSetup_msg.maxPulse, servoSetup_msg.minSensor, servoSetup_msg.maxSensor, servoSetup_msg.smoothing, servoSetup_msg.maxSpeed);
rosLog(String("Setting up servo on pin: " + String(servoSetup_msg.servoPin)));
String logText = "sensor pin: " + String(servoSetup_msg.sensorPin) + " minangle : " + String(servoSetup_msg.minAngle) + " maxangle: " + String(servoSetup_msg.maxAngle) + " rest: " + String(servoSetup_msg.rest) + " minPulse: " + String(servoSetup_msg.minPulse) + " maxPulse: " + String(servoSetup_msg.maxPulse) + " minSensor: " + String(servoSetup_msg.minSensor) + " maxSensor: " + String(servoSetup_msg.maxSensor) + " smoothing: " + String(servoSetup_msg.smoothing) + " maxSpeed: " + String(servoSetup_msg.maxSpeed);
rosLog(logText);
//add to list
addDevice(servo);


}


ros::Publisher motorstatus("motorstatus", &status_msg);

ros::Subscriber<inmoov_msgs::MotorCommand> motorcommand("motorcommand", &commandCb);

ros::Subscriber<inmoov_msgs::ServoSetup> ServoSetup("ServoSetup", &setupServo);

ros::ServiceServer<inmoov_msgs::MotorParameter::Request, inmoov_msgs::MotorParameter::Response> server("motorparameter", &getParameter);


void setupADC() {
  //analogReadResolution(8); TALK TO ALAN
  //analogReference(EXTERNAL); TALK TO ALAN
}


void updateServos() {

  ListNode<rosServo*>* node = servoList.getRoot();

  while (node != NULL) {
    node->data->update();
    node = node->next;
  }

}



void setup() {
  //pinMode(LED, OUTPUT);
  //digitalWrite(LED, 1);
  
  nh.initNode();
  nh.advertise(motorstatus);
  nh.subscribe(ServoSetup);
  nh.subscribe(motorcommand);
  nh.advertiseService(server);
  nh.getHardware()->setBaud(115200);
  
  Serial.begin(115200);
  

  while (!nh.connected() ) {
    //add port check somewhere? add logging
    nh.spinOnce();
  }

 



   setupADC();
  delay(1);


  startMillis = millis();
  updateMillis = millis();
  //commands = 0;



  nh.loginfo("Setup Complete!!!");

}



void loop() {
  
  //nh.spinOnce();
  
  updateServos();

  //digitalWrite(LED, heartbeats[((millis() >> 7) & 7)]);

  if (motorStatusEnabled == true){
    if ((millis() - updateMillis) >= UPDATEPERIOD) {
      ListNode<rosServo*>* node = servoList.getRoot();
    
      while (node != NULL) {
        status_msg.servoPin          = node->data->servoPin;
        status_msg.goal         = node->data->getGoal();
        status_msg.position     = node->data->readPositionAngle();
        //status_msg.position     = -1;
        status_msg.presentspeed = node->data->readPresentSpeed();
        status_msg.maxSpeed     = node->data->getMaxSpeed();
        status_msg.moving       = node->data->getMoving();
        status_msg.smooth       = node->data->getSmooth();
        status_msg.posraw       = node->data->readPositionRaw();
        status_msg.enabled      = node->data->getEnabled();
        status_msg.power        = node->data->getPower();
        status_msg.Debug1       = node->data->getCommandPulse();
        status_msg.Debug2       = -1;
        status_msg.Debug3       = -1;
  
        nh.spinOnce();
  
        motorstatus.publish( &status_msg);
  
        nh.spinOnce();
        
        node = node->next;
      }
  
      updateMillis = millis();
      nh.spinOnce();
  
      //commands = 0;
  
    }
  }
  nh.spinOnce();

}



