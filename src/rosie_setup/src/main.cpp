#include <iostream>
#include "ros/ros.h"
#include <string>
#include <stdio.h>
#include <pthread.h>
#include "std_msgs/String.h"
#include "main.h"
#include "inmoov_msgs/MotorCommand.h"
#include "inmoov_msgs/voice.h"
ros::Publisher Left_pub;
ros::Publisher Right_pub;
ros::Publisher Mouth_pub;
ros::ServiceClient client;
int thumbServo = 0;
int indexServo = 1;
int middleServo = 2;
int ringServo = 3;
int pinkyServo = 4;
int wristServo = 5;
int bicepServo = 6;
int rotateServo = 7;
int shoulderServo = 8;
int omniplateServo = 9;
int headTiltServo = 12;
int eyesXServo = 13;
int eyesYServo =14;
int jawServo = 15;
int neckRotateServo = 11;
int neckUpDownServo = 10;
int tiltTorsoServo = 16;
int rotateTorsoServo = 17;
double maxVelocity = 0.0;
using namespace std;

void enableAllServos()
{
  
  
  for (int servo = 0; servo < 18; servo++){
      //ROS_INFO("test");
      inmoov_msgs::MotorCommand MotorCommandMsg;
      MotorCommandMsg.id = servo;
      MotorCommandMsg.parameter = 0x18;
      MotorCommandMsg.value = 1;
      Left_pub.publish(MotorCommandMsg);
      //ROS_INFO("After pub");
      //Right_pub.publish(MotorCommandMsg);
      

  }
  sleep(5);
  
}

void moveTorso(int tiltTorsoAngle, int rotateTorsoAngle)
{
  inmoov_msgs::MotorCommand MotorCommandMsg;

  //tiltTorsoServo
  MotorCommandMsg.id = tiltTorsoServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = tiltTorsoAngle;
  Left_pub.publish(MotorCommandMsg);

  //rotateTorsoServo
  MotorCommandMsg.id = rotateTorsoServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = rotateTorsoAngle;
  Left_pub.publish(MotorCommandMsg);

  

  
}

void moveTorso(int tiltTorsoAngle, int rotateTorsoAngle, int notused)
{
  inmoov_msgs::MotorCommand MotorCommandMsg;

  //tiltTorsoServo
  MotorCommandMsg.id = tiltTorsoServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = tiltTorsoAngle;
  Left_pub.publish(MotorCommandMsg);

  //rotateTorsoServo
  MotorCommandMsg.id = rotateTorsoServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = rotateTorsoAngle;
  Left_pub.publish(MotorCommandMsg);

  

  
}

void moveHand(string hand,int thumbAngle, int indexAngle, int middleAngle, int ringAngle, int pinkyAngle, int wristAngle)
{
  inmoov_msgs::MotorCommand MotorCommandMsg;
  if (hand == "left"){


  //thumb
  MotorCommandMsg.id = thumbServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = thumbAngle;
  Left_pub.publish(MotorCommandMsg);

  //index
  MotorCommandMsg.id = indexServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = indexAngle;
  Left_pub.publish(MotorCommandMsg);

  //middle
  MotorCommandMsg.id = middleServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = middleAngle;
  Left_pub.publish(MotorCommandMsg);

  //ring
  MotorCommandMsg.id = ringServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = ringAngle;
  Left_pub.publish(MotorCommandMsg);

  //pinky
  MotorCommandMsg.id = pinkyServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = pinkyAngle;
  Left_pub.publish(MotorCommandMsg);

  //wrist
  MotorCommandMsg.id = wristServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = wristAngle;
  Left_pub.publish(MotorCommandMsg);
}

if (hand == "left"){


  //thumb
  MotorCommandMsg.id = thumbServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = thumbAngle;
  Right_pub.publish(MotorCommandMsg);

  //index
  MotorCommandMsg.id = indexServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = indexAngle;
  Right_pub.publish(MotorCommandMsg);

  //middle
  MotorCommandMsg.id = middleServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = middleAngle;
  Right_pub.publish(MotorCommandMsg);

  //ring
  MotorCommandMsg.id = ringServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = ringAngle;
  Right_pub.publish(MotorCommandMsg);

  //pinky
  MotorCommandMsg.id = pinkyServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = pinkyAngle;
  Right_pub.publish(MotorCommandMsg);

  //wrist
  MotorCommandMsg.id = wristServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = wristAngle;
  Right_pub.publish(MotorCommandMsg);
}


}

void moveHand(string hand,int thumbAngle, int indexAngle, int middleAngle, int ringAngle, int pinkyAngle)
{
  inmoov_msgs::MotorCommand MotorCommandMsg;
  if (hand == "left"){


  //thumb
  MotorCommandMsg.id = thumbServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = thumbAngle;
  Left_pub.publish(MotorCommandMsg);

  //index
  MotorCommandMsg.id = indexServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = indexAngle;
  Left_pub.publish(MotorCommandMsg);

  //middle
  MotorCommandMsg.id = middleServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = middleAngle;
  Left_pub.publish(MotorCommandMsg);

  //ring
  MotorCommandMsg.id = ringServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = ringAngle;
  Left_pub.publish(MotorCommandMsg);

  //pinky
  MotorCommandMsg.id = pinkyServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = pinkyAngle;
  Left_pub.publish(MotorCommandMsg);

 
}

if (hand == "left"){


  //thumb
  MotorCommandMsg.id = thumbServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = thumbAngle;
  Right_pub.publish(MotorCommandMsg);

  //index
  MotorCommandMsg.id = indexServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = indexAngle;
  Right_pub.publish(MotorCommandMsg);

  //middle
  MotorCommandMsg.id = middleServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = middleAngle;
  Right_pub.publish(MotorCommandMsg);

  //ring
  MotorCommandMsg.id = ringServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = ringAngle;
  Right_pub.publish(MotorCommandMsg);

  //pinky
  MotorCommandMsg.id = pinkyServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = pinkyAngle;
  Right_pub.publish(MotorCommandMsg);

 
}


}


double speedToVel(double speed){
  double slope = 3.25;
  double intercept = 1;
        
  double vel = 50*speed;
  if (speed >= 1.0) {
      vel = maxVelocity;
    }
   
   return vel;
}


void moveArm(string arm, int bicepAngle, int rotateAngle, int shoulderAngle, int omniplateAngle)
{
  inmoov_msgs::MotorCommand MotorCommandMsg;
  if (arm == "left"){
  
  //bicepServo
  MotorCommandMsg.id = bicepServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = bicepAngle;
  Left_pub.publish(MotorCommandMsg);

  //rotateServo
  MotorCommandMsg.id = rotateServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = rotateAngle;
  Left_pub.publish(MotorCommandMsg);

  //shoulderServo
  MotorCommandMsg.id = shoulderServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = shoulderAngle;
  Left_pub.publish(MotorCommandMsg);

  //omniplateServo
  MotorCommandMsg.id = omniplateServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = omniplateAngle;
  Left_pub.publish(MotorCommandMsg);
  }
  if (arm == "right"){
 //bicepServo
  MotorCommandMsg.id = bicepServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = bicepAngle;
  Right_pub.publish(MotorCommandMsg);

  //rotateServo
  MotorCommandMsg.id = rotateServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = rotateAngle;
  Right_pub.publish(MotorCommandMsg);

  //shoulderServo
  MotorCommandMsg.id = shoulderServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = shoulderAngle;
  Right_pub.publish(MotorCommandMsg);

  //omniplateServo
  MotorCommandMsg.id = omniplateServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = omniplateAngle;
  Right_pub.publish(MotorCommandMsg);
  }

  

}

void setTorsoSpeed(int leanSpeed,int midSpeed, int notused){
inmoov_msgs::MotorCommand MotorCommandMsg;
//tiltTorsoServo
  MotorCommandMsg.id = tiltTorsoServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(leanSpeed);
  Left_pub.publish(MotorCommandMsg);

  //rotateTorsoServo
  MotorCommandMsg.id = rotateTorsoServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(midSpeed);
  Left_pub.publish(MotorCommandMsg);
}

void setArmSpeed(string arm, int bicepSpeed, int rotateSpeed, int shoulderSpeed, int omniplateSpeed){
inmoov_msgs::MotorCommand MotorCommandMsg;
  if (arm == "left"){
  
  //bicepServo
  MotorCommandMsg.id = bicepServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(bicepSpeed);
  Left_pub.publish(MotorCommandMsg);

  //rotateServo
  MotorCommandMsg.id = rotateServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(rotateSpeed);
  Left_pub.publish(MotorCommandMsg);

  //shoulderServo
  MotorCommandMsg.id = shoulderServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(shoulderSpeed);
  Left_pub.publish(MotorCommandMsg);

  //omniplateServo
  MotorCommandMsg.id = omniplateServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(omniplateSpeed);
  Left_pub.publish(MotorCommandMsg);
  }
  if (arm == "right"){
 //bicepServo
  MotorCommandMsg.id = bicepServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(bicepSpeed);
  Right_pub.publish(MotorCommandMsg);

  //rotateServo
  MotorCommandMsg.id = rotateServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(rotateSpeed);
  Right_pub.publish(MotorCommandMsg);

  //shoulderServo
  MotorCommandMsg.id = shoulderServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(shoulderSpeed);
  Right_pub.publish(MotorCommandMsg);

  //omniplateServo
  MotorCommandMsg.id = omniplateServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(omniplateSpeed);
  Right_pub.publish(MotorCommandMsg);
  }
}

void setHandSpeed(string hand,int thumbSpeed, int indexSpeed, int middleSpeed, int ringSpeed, int pinkySpeed, int wristSpeed){
 inmoov_msgs::MotorCommand MotorCommandMsg;
  if (hand == "left"){


  //thumb
  MotorCommandMsg.id = thumbServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(thumbSpeed);
  Left_pub.publish(MotorCommandMsg);

  //index
  MotorCommandMsg.id = indexServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(indexSpeed);
  Left_pub.publish(MotorCommandMsg);

  //middle
  MotorCommandMsg.id = middleServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(middleSpeed);
  Left_pub.publish(MotorCommandMsg);

  //ring
  MotorCommandMsg.id = ringServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(ringSpeed);
  Left_pub.publish(MotorCommandMsg);

  //pinky
  MotorCommandMsg.id = pinkyServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(pinkySpeed);
  Left_pub.publish(MotorCommandMsg);

  //wrist
  MotorCommandMsg.id = wristServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(wristSpeed);
  Left_pub.publish(MotorCommandMsg);
}

if (hand == "left"){


  //thumb
  MotorCommandMsg.id = thumbServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(thumbSpeed);
  Right_pub.publish(MotorCommandMsg);

  //index
  MotorCommandMsg.id = indexServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(indexSpeed);
  Right_pub.publish(MotorCommandMsg);

  //middle
  MotorCommandMsg.id = middleServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(middleSpeed);
  Right_pub.publish(MotorCommandMsg);

  //ring
  MotorCommandMsg.id = ringServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(ringSpeed);
  Right_pub.publish(MotorCommandMsg);

  //pinky
  MotorCommandMsg.id = pinkyServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(pinkySpeed);
  Right_pub.publish(MotorCommandMsg);

  //wrist
  MotorCommandMsg.id = wristServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(wristSpeed);
  Right_pub.publish(MotorCommandMsg);
}
}

void speak(string toSpeak){
  inmoov_msgs::voice voicesrv;
  voicesrv.request.toSpeak = toSpeak;
  float voiceSleepTime = 0;
  if (client.call(voicesrv))
  {
    voiceSleepTime = voicesrv.response.data;
    sleep(voiceSleepTime);
  }
  else
  {
    ROS_ERROR("Failed to call service voice");
  }


  /*std_msgs::String speak;
  speak.data = toSpeak;
  Mouth_pub.publish(speak);*/
}

void setHeadSpeed(int neckRotateSpeed, int neckUpDownSpeed, int eyeXSpeed, int eyeYSpeed, int jawSpeed){
inmoov_msgs::MotorCommand MotorCommandMsg;
//neckRotateServo
  MotorCommandMsg.id = neckRotateServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(neckRotateSpeed);
  Left_pub.publish(MotorCommandMsg);

  //neckUpDownServo
  MotorCommandMsg.id = neckUpDownServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(neckUpDownSpeed);
  Left_pub.publish(MotorCommandMsg);

  //eyesXServo
  MotorCommandMsg.id = eyesXServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(eyeXSpeed);
  Left_pub.publish(MotorCommandMsg);

  //eyesYServo
  MotorCommandMsg.id = eyesYServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(eyeYSpeed);
  Left_pub.publish(MotorCommandMsg);

  //jawServo
  MotorCommandMsg.id = jawServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(jawSpeed);
  Left_pub.publish(MotorCommandMsg);
}

void setHeadSpeed(int neckRotateSpeed, int neckUpDownSpeed){
inmoov_msgs::MotorCommand MotorCommandMsg;
//neckRotateServo
  MotorCommandMsg.id = neckRotateServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(neckRotateSpeed);
  Left_pub.publish(MotorCommandMsg);

  //neckUpDownServo
  MotorCommandMsg.id = neckUpDownServo;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = speedToVel(neckUpDownSpeed);
  Left_pub.publish(MotorCommandMsg);
}


void moveNeck(int neckUpDownAngle,int neckRotateAngle){
  inmoov_msgs::MotorCommand MotorCommandMsg;

//neckRotateServo
  MotorCommandMsg.id = neckRotateServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = neckRotateAngle;
  Left_pub.publish(MotorCommandMsg);

  
  //neckUpDownServo
  MotorCommandMsg.id = neckUpDownServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = neckUpDownAngle;
  Left_pub.publish(MotorCommandMsg);
}

void moveHead(int neckUpDownAngle,int neckRotateAngle){
  inmoov_msgs::MotorCommand MotorCommandMsg;

//neckRotateServo
  MotorCommandMsg.id = neckRotateServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = neckRotateAngle;
  Left_pub.publish(MotorCommandMsg);

  
  //neckUpDownServo
  MotorCommandMsg.id = neckUpDownServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = neckUpDownAngle;
  Left_pub.publish(MotorCommandMsg);
}

void moveHead(int neckUpDownAngle,int neckRotateAngle,int jawAngle,  int eyesXAngle, int eyesYAngle)
{
  

inmoov_msgs::MotorCommand MotorCommandMsg;

  //eyesXServo
  MotorCommandMsg.id = eyesXServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = eyesXAngle;
  Left_pub.publish(MotorCommandMsg);

  //eyesYServo
  MotorCommandMsg.id = eyesYServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = eyesYAngle;
  Left_pub.publish(MotorCommandMsg);

  //jawServo
  MotorCommandMsg.id = jawServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = jawAngle;
  Left_pub.publish(MotorCommandMsg);

  //neckRotateServo
  MotorCommandMsg.id = neckRotateServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = neckRotateAngle;
  Left_pub.publish(MotorCommandMsg);

  
  //neckUpDownServo
  MotorCommandMsg.id = neckUpDownServo;
  MotorCommandMsg.parameter = 0x1E;
  MotorCommandMsg.value = neckUpDownAngle;
  Left_pub.publish(MotorCommandMsg);
}

void relax(){
  moveArm("left",5,84,33,10);
  moveArm("right",5,82,28,16);
  moveHand("left",92,33,37,71,66,25);
  moveHand("right",81,66,82,60,105,113);
  moveTorso(95,90);
  moveNeck(45,100);
  sleep(1);
}

void defaultPosition(){
  moveArm("left",5,84,33,15);
  moveArm("right",5,82,28,15);
  moveHand("left",92,33,37,71,66,65);
  moveHand("right",81,66,82,60,105,65);
  moveTorso(108,90);
  moveNeck(90,45);
  sleep(1);
}

void fullspeed(){
 setArmSpeed("left",1.0,1.0,1.0,1.0);
 setArmSpeed("right",1.0,1.0,1.0,1.0);
 setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0);
 setHandSpeed("right",1.0,1.0,1.0,1.0,1.0,1.0);
 setHeadSpeed(1.0,1.0,1.0,1.0,1.0);
 setTorsoSpeed(1.0,1.0,1.0);
}

void systemCheck(){

    fullspeed();
    sleep(0.2);
    setHeadSpeed(.75,.75);
    moveHead(85,90);
    sleep(1);
    moveHead(72,64);
 
    sleep(2);
    moveHead(165,94);
    sleep(2);
 
    moveHead(90,160);
    sleep(2);
 
    moveHead(20,95);
    sleep(2);
    moveHead(90,90);
    sleep(1.5);
    speak("Head, neck and mouth,   check");
    sleep(1);
    setHeadSpeed(.9,.9);
    moveHead(25,61);
    moveArm("left",0,90,30,10);
    setArmSpeed("right",.75,.75,.75,.75);
    moveArm("right",24,62,52,45);
    moveHand("left",0,0,0,0,0,90);
    moveHand("right",0,0,0,0,0,90);
    sleep(2);
    moveHead(90,90);
    setHeadSpeed(.9,.9);
    sleep(1);
    speak("right arm and right shoulder,    check");
    sleep(1);
    setHeadSpeed(.9,.9);
    moveHead(20,122);
    setArmSpeed("left",.75,.75,.75,.75);
    moveArm("left",24,62,52,45);
    sleep(2);
    moveHead(90,90);
    setHeadSpeed(.9,.9);
    sleep(1);
    speak("left arm and left shoulder,    check");
    sleep(1);
    setHeadSpeed(.9,.9);
    moveHead(20,120);
 
    moveArm("left",75,123,52,45);
    moveArm("right",75,123,52,45);
    moveHand("left",180,180,180,180,180,30);
    moveHand("right",180,180,180,180,180,170);
    sleep(3);
    setHeadSpeed(.9,.9);
    moveHead(59,67);
 
    moveHand("right",0,0,0,0,0,19);
    moveHand("left",0,0,0,0,0,170);
    sleep(1);
    moveHand("left",180,180,180,180,180,30);
    moveHand("right",180,180,180,180,180,170);
    sleep(1.5);
    moveHead(90,90);
    setHeadSpeed(.9,.9);
    sleep(1);
    speak(" hands and Wrists,    check");
    sleep(1);
 
    moveHead(90,90);
    moveArm("left",0,90,30,10);
    moveArm("right",0,90,30,10);
    moveHand("left",0,0,0,0,0,90);
    moveHand("right",0,0,0,0,0,90);
    speak("all servos are functioning properly");
    sleep(1.5);
    speak("awaiting your commands");
    sleep(0.5);
    relax();

}

void servos(){
    
       
        sleep(2);
        setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setHeadSpeed(0.65, 0.65);
        moveHead(79,100);
        moveArm("left",5,119,28,15);
        moveArm("right",5,111,28,15);
        moveHand("left",42,58,87,55,71,35);
        moveHand("right",81,20,82,60,105,113);
        speak("I currently have twenty five  hobby servos installed in my body to give me life");
        setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85);
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setHeadSpeed(0.65, 0.65);
        moveHead(124,90);
        moveArm("left",89,94,91,35);
        moveArm("right",20,67,31,22);
        moveHand("left",106,41,161,147,138,90);
        moveHand("right",0,0,0,54,91,90);
        speak("there's one servo  for moving my mouth up and down");
        sleep(1);
        setHandSpeed("left", 0.85, 0.85, 1.0, 0.85, 0.85, 0.85);
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setHeadSpeed(0.65, 0.65);
        moveHead(105,76);
        moveArm("left",89,106,103,35);
        moveArm("right",35,67,31,22);
        moveHand("left",106,0,0,147,138,7);
        moveHand("right",0,0,0,54,91,90);
        speak("two for my eyes");
        sleep(0.2);
        setHandSpeed("left", 0.85, 0.85, 1.0, 1.0, 1.0, 0.85);
        moveHand("left",106,0,0,0,0,7);
        speak("and two more for my head");
        sleep(0.5);
        setHandSpeed("left", 0.85, 0.9, 0.9, 0.9, 0.9, 0.85);
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setHeadSpeed(0.65, 0.65);
        moveHead(90,40);
        moveArm("left",89,106,103,35);
        moveArm("right",35,67,31,20);
        moveHand("left",106,140,140,140,140,7);
        moveHand("right",0,0,0,54,91,90);
        speak("so i can look around");
        sleep(0.5);
        setHeadSpeed(0.65, 0.65);
        moveHead(105,125);
        setArmSpeed("left", 0.9, 0.9, 0.9, 0.9);
        moveArm("left",60,100,85,30);
        speak("and see who's there");
        setHeadSpeed(0.65, 0.65);
        moveHead(40,56);
        sleep(0.5);
        setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 0.5, 0.6, 0.5, 0.6);
        moveArm("left",87,41,64,11);
        moveArm("right",5,95,40,11);
        moveHand("left",98,150,160,160,160,104);
        moveHand("right",0,0,50,54,91,90);
        speak("there's three servos  in each shoulder");
        moveHead(40,67);
        sleep(2);
        setHandSpeed("left", 0.8, 0.9, 0.8, 0.8, 0.8, 0.8);
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setHeadSpeed(0.8, 0.8);
        moveHead(43,69);
        moveArm("left",87,41,64,11);
        moveArm("right",5,95,40,42);
        moveHand("left",42,0,100,80,113,35);
        moveHand("left",42,10,160,160,160,35);
        moveHand("right",81,20,82,60,105,113);
        speak("here is the first servo movement");
        sleep(1);
        moveHead(37,60);
        setHandSpeed("left", 1.0, 1.0, 0.9, 0.9, 1.0, 0.8);
        setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
        moveArm("right",5,95,67,42);
        moveHand("left",42,10,10,160,160,30);
        speak("this is the second one");
        sleep(1);
        moveHead(43,69);
        setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
        moveArm("right",5,134,67,42);
        moveHand("left",42,10,10,10,160,35);
        speak("now you see the third");
        sleep(1);
        setArmSpeed("right", 0.8, 0.8, 0.8, 0.8);
        moveArm("right",20,90,45,16);
        speak("they give me a more human like movement");
        sleep(1);
        setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
        moveHead(43,72);
        moveArm("left",90,44,66,11);
        moveArm("right",90,100,67,26);
        moveHand("left",42,80,100,80,113,35);
        moveHand("right",81,0,82,60,105,69);
        speak("but, i have only  one servo, to move each elbow");
        setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85);
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setHeadSpeed(0.8, 0.8);
        moveHead(45,62);
        moveArm("left",72,44,90,11);
        moveArm("right",90,95,68,15);
        moveHand("left",42,0,100,80,113,35);
        moveHand("right",81,0,82,60,105,0);
        speak("that, leaves me, with one servo per wrist");
        moveHead(40,60);
        setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        setHandSpeed("right", 0.9, 0.9, 0.9, 0.9, 0.9, 0.9);
        moveArm("left",72,44,90,9);
        moveArm("right",90,95,68,15);
        moveHand("left",42,0,100,80,113,35);
        moveHand("right", 10, 140,82,60,105,10);
        speak("and one servo for each finger.");
        sleep(0.5);
        moveHand("left",42,0,100,80,113,35);
        moveHand("right", 50, 51, 15,23, 30,140);
        speak("these servos are located in my forearms");
        setHandSpeed("left", 0.8, 0.8, 0.8, 0.8,0.8, 0.8);
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        moveHand("left", 36, 52, 8,22, 20);
        moveHand("right", 120, 147, 130,110, 125);
        //removeleftarm();
        sleep(1);
        speak("they are hooked up, by the use of tendons");
        moveHand("left",10,20,30,40,60,150);
        moveHand("right",110,137,120,100,105,130);
        setHeadSpeed(1,1);
        setArmSpeed("right", 1.0,1.0, 1.0, 1.0);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        relax();
        sleep(2);
        
}

void gestures(){
  //welcome    
    setHandSpeed("left", 0.60, 0.60, 0.60, 0.60, 0.60, 0.60);
    setHandSpeed("right", 0.60, 0.80, 0.60, 0.60, 0.60, 0.60);
    setArmSpeed("left", 0.60, 0.60, 0.60, 0.60);
    setArmSpeed("right", 0.60, 0.60, 0.60, 0.60);
    setHeadSpeed(0.90, 0.90);
    moveHead(0,90,90,50,65);
    moveArm("left",26,105,30,25);
    moveArm("right",37,124,30,27);
    moveHand("left",2,2,2,2,2,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(5);
//welcome close hand
    setHandSpeed("left", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0);
    setHandSpeed("right", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0);
    setArmSpeed("left", 0.60, 0.60, 0.60, 0.60);
    setArmSpeed("right", 0.60, 0.60, 0.60, 0.60);
    setHeadSpeed(0.90, 0.90);
    moveHead(0,40,25,40,65);
    moveArm("left",26,105,30,25);
    moveArm("right",37,124,30,27);
    moveHand("left",180,180,180,180,180,90);
    moveHand("right",180,180,180,180,180,90);
    sleep(3);
//put hands up    
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
    setHeadSpeed(0.9, 0.9);
    setTorsoSpeed(1.0, 1.0, 1.0);
    moveHead(50,120,90,90,65);
    moveArm("left",88,103,70,23);
    moveArm("right",73,97,70,27);
    moveHand("left",2,2,2,2,2,90);
    moveHand("right",2,2,2,2,2,90);
    moveTorso(90,90,90);
    sleep(2);
//look hand right    
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
    setHeadSpeed(0.9, 0.8);
    setTorsoSpeed(1.0, 1.0, 1.0);
    moveHead(50,60,70,90,65);
    moveArm("left",88,104,75,28);
    moveArm("right",80,97,76,21);
    moveHand("left",180,180,180,180,180,90);
    moveHand("right",180,180,180,180,180,90);
    moveTorso(90,90,90);
    sleep(1);
//look stay   
    setHandSpeed("left", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0);
    setHandSpeed("right", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
    setHeadSpeed(0.9, 0.8);
    setTorsoSpeed(1.0, 1.0, 1.0);
    moveHead(40,70,90,90,65);
    moveArm("left",90,102,70,23);
    moveArm("right",80,97,68,27);
    moveHand("left",2,2,2,2,2,90);
    moveHand("right",2,2,2,2,2,90);
    moveTorso(90,90,90);
    sleep(2);
//look left side  turn both wrist 
    moveHead(50,120,140,90,65);
    moveArm("left",88,103,70,28);
    moveArm("right",75,97,76,21);
    moveHand("left",180,180,180,180,180,10);
    moveHand("right",180,180,180,180,180,170);
    moveTorso(90,90,90); 
    sleep(2);
//close hands and turn both wrist 
    moveHead(50,50,60,90,65);
    moveArm("left",88,103,75,28);
    moveArm("right",80,97,76,21);
    moveHand("left",180,180,180,180,180,170);
    moveHand("right",180,180,180,180,180,10);
    moveTorso(90,90,90);   
    sleep(3);
//dab left    
    setHandSpeed("left", 0.9, 0.9, 0.9, 0.9, 0.9, 1.0);
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
    setHeadSpeed(0.9, 0.9);
    setTorsoSpeed(1.0, 1.0, 1.0);
    moveHead(79,160,120,90,65);
    moveArm("left",5,84,32,78);
    moveArm("right",87,82,123,74);
    moveHand("left",0,0,0,0,0,25);
    moveHand("right",0,0,0,0,0,113);
    moveTorso(90,90,90);
    sleep(6);
//regroup right arm    
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
    setHeadSpeed(0.8, 0.8);
    setTorsoSpeed(1.0, 1.0, 1.0);
    moveHead(79,100,120,90,65);
    moveArm("left",18,90,55,71);
    moveArm("right",65,82,118,15);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",81,66,82,60,105,113);
    moveTorso(90,90,90);
    sleep(1);
//look right    
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setArmSpeed("left", 0.9,  0.9,  0.9,  0.9);
    setArmSpeed("right",  0.9,  0.9,  0.9,  0.9);
    setHeadSpeed(0.8, 0.8);
    setTorsoSpeed(1.0, 1.0, 1.0);
    moveHead(60,50,70,90,65);
    moveArm("left",18,90,54,69);
    moveArm("right",65,82,118,13);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",180,180,180,180,180,113);
    moveTorso(90,90,90);
    sleep(2);
    moveHead(79,100);
    moveArm("left",33,90,136,78);
    moveArm("right",34,82,160,13);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",180,180,180,180,180,113);
    moveTorso(90,90,90);
    sleep(2);
//arm right up
    moveHead(100,100);
    moveArm("left",33,90,136,78);
    moveArm("right",34,82,160,20);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",92,33,37,71,66,113);
    moveTorso(90,90,90);
    sleep(3);
    moveHead(110,120);
    moveArm("left",33,140,136,78);
    moveArm("right",34,82,170,30);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",92,33,37,71,66,113);
    moveTorso(90,90,90);
    sleep(2);
    moveHead(125,140);
    moveArm("left",33,90,36,60);
    moveArm("right",34,80,170,40);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",92,33,37,71,66,113);
    moveTorso(90,90,90);
    sleep(2);
//arm left up
    moveHead(120,130,120,30,65);
    moveArm("left",33,90,36,60);
    moveArm("right",34,65,160,40);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",92,33,37,71,66,113);
    moveTorso(90,90,90);
    sleep(2);
    moveHead(79,100,90,90,65);
    moveArm("left",18,84,54,69);
    moveArm("right",65,78,118,13);
    moveHand("left",92,33,37,71,66,30);
    moveHand("right",180,180,180,180,180,113);
    moveTorso(90,90,90);
    sleep(1);
    moveHead(79,100);
    moveArm("left",18,90,55,71);
    moveArm("right",75,80,120,45);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",81,66,82,60,105,113);
    moveTorso(90,90,90);
    sleep(1);
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 1.0, 1.0, 1.0, 0.85);
    setHeadSpeed(0.9, 0.9);
    setTorsoSpeed(1.0, 1.0, 1.0);
    moveHead(79,160);
    moveArm("left",24,90,32,74);
    moveArm("right",87,82,123,74);
    moveHand("left",0,0,0,0,0,25);
    moveHand("right",0,0,0,0,0,113);
    moveTorso(90,90,90);
    sleep(3);
//dab right    
    moveHead(60,20);
    moveArm("left",87,90,123,74);
    moveArm("right",5,84,32,78);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",81,66,82,60,105,113);
    moveTorso(90,90,90);
    sleep(6);
//welcome    
    setHandSpeed("left", 0.80, 0.80, 0.80, 0.80, 0.80, 0.80);
    setHandSpeed("right", 0.80, 0.80, 0.80, 0.80, 0.80, 0.80);
    setArmSpeed("left", 0.80, 0.80, 0.80, 0.80);
    setArmSpeed("right", 0.80, 0.80, 0.80, 0.80);
    setHeadSpeed(0.90, 0.90);
    moveHead(0,90,90,50,65);
    moveArm("left",15,105,30,25);
    moveArm("right",25,124,30,27);
    moveHand("left",2,2,2,2,2,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(5);
    //Davinci
    moveHead(75,79);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
    moveArm("left",9,115,28,60);
    moveArm("right",13,118,26,60);
    moveHand("left",61,49,14,38,15,64);
    moveHand("right",0,24,54,50,82,180);
    sleep(5);
    relax();
}

void balance(){
    setHeadSpeed(0.95,0.95);
    setArmSpeed("left",1.0,0.85,0.95,0.95);
    setArmSpeed("right",0.65,0.85,0.65,0.85);
    setHandSpeed("left",0.85,0.85,0.85,0.85,0.85,0.85);
    setHandSpeed("right",0.85,0.85,0.85,0.85,0.85,0.85);
    setTorsoSpeed(0.95,0.85,1.0);
    moveHead(79,100,82,78,65);
    moveArm("left",5,84,28,15);
    moveArm("right",5,82,28,15);
    moveHand("left",92,33,37,71,66,25);
    moveHand("right",81,66,82,60,105,113);
    moveTorso(90,90,90);
    sleep(4);
    moveHead(80,86,82,78,65);
    moveArm("left",75,123,52,45);
    moveArm("right",75,123,52,45);
    moveHand("left",180,180,180,180,180,30);
    moveHand("right",180,180,180,180,180,170);
    moveTorso(90,90,90);
    sleep(3);
    moveHead(16,86,82,78,65);
    moveArm("left",75,97,52,45);
    moveArm("right",75,76,52,45);
    moveHand("left",180,180,180,180,180,30);
    moveHand("right",180,180,180,180,180,170);
    moveTorso(161,90,90);
    sleep(2.5);
    setArmSpeed("left",1.0,0.85,0.95,0.95);
    setArmSpeed("right",1.0,0.85,0.95,0.95);
    moveHead(70,120,82,78,65);
    moveArm("left",65,119,52,45);
    moveArm("right",75,76,52,45);
    moveHand("left",180,180,180,180,180,30);
    moveHand("right",180,180,180,180,180,170);
    moveTorso(20,90,90);
    sleep(3);
    moveHead(80,151,82,78,65);
    moveArm("left",75,97,52,45);
    moveArm("right",21,76,52,45);
    moveHand("left",180,180,180,180,180,30);
    moveHand("right",180,180,180,180,180,170);
    moveTorso(20,90,90);   
    sleep(0.5);
    moveHead(16,11,85,85,53);
    moveArm("left",60,67,67,40);
    moveArm("right",5,116,10,28);
    moveHand("left",143,69,48,2,2,23);
    moveHand("right",89,60,78,43,68,163);
    moveTorso(161,62,92);
    sleep(6);
    setArmSpeed("left",1.0,0.95,1.0,1.0);
    setArmSpeed("right",1.0,0.85,0.95,0.95);
    setHandSpeed("left",0.85,0.85,0.85,0.85,0.85,0.85);
    setHandSpeed("right",0.85,0.85,0.85,0.85,0.85,0.85);
    setTorsoSpeed(0.95,0.85,1.0);
    moveHead(23,163,85,85,66);
    moveArm("left",5,90,30,18);
    moveArm("right",83,58,50,30);
    moveHand("left",2,2,72,110,140,32);
    moveHand("right",169,0,72,101,119,173);
    moveTorso(31,112,90);
    sleep(6);
    relax();
}

void newyork(){
  //mouth.speak("robot1")
    setHeadSpeed(1.0,1.0,1.0,1.0,1.0);
    setArmSpeed("left",1.0,1.0,1.0,1.0);
    setArmSpeed("right",1.0,1.0,1.0,1.0);
    setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0);
    setHandSpeed("right",1.0,1.0,1.0,1.0,1.0,1.0);
    setTorsoSpeed(1.0,1.0,1.0);
    moveHead(90,90);
    moveArm("left",70,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",49,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",70,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",49,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",70,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(90,90);
    moveArm("left",49,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,140);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",70,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(90,90);
    moveArm("left",49,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,140);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(90,90);
    moveArm("left",70,90,75,10);
    moveArm("right",8,85,28,12);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",49,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",70,90,75,10);
    moveArm("right",7,82,33,13);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",49,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",70,90,75,10);
    moveArm("right",6,85,28,10);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(90,90);
    moveArm("left",49,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,140);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(60,107);
    moveArm("left",70,90,75,10);
    moveArm("right",7,87,33,11);
    moveHand("left",40,171,180,180,180,90);
    moveHand("right",2,2,2,2,2,90);
    sleep(0.45);
    moveHead(90,90);
    moveArm("left",49,90,75,10);
    moveArm("right",5,90,30,10);
    moveHand("left",40,171,180,180,180,140);
    moveHand("right",2,2,2,2,2,90);
    sleep(1.5);
    setHeadSpeed(0.85,0.85);
    setArmSpeed("left",0.90,0.90,0.90,0.90);
    setArmSpeed("right",0.90,0.90,0.90,0.90);
    setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0);
    setHandSpeed("right",1.0,1.0,1.0,1.0,1.0,1.0);
    setTorsoSpeed(1.0,1.0,1.0);
    moveHead(75,97);
    moveArm("left",85,106,25,18);
    moveArm("right",87,107,32,18);
    moveHand("left",110,62,56,88,81,145);
    moveHand("right",78,88,101,95,81,27);
    moveTorso(90,90,90);
    sleep(1);
    speak("Start spreading the news");
    setHeadSpeed(0.85,0.85);
    setArmSpeed("left",0.80,0.80,0.80,0.80);
    setArmSpeed("right",0.80,0.80,0.80,0.80);
    setHandSpeed("left",0.80,0.80,0.80,0.80,0.80,0.80);
    setHandSpeed("right",0.80,0.80,0.80,0.80,0.80,0.80);
    setTorsoSpeed(1.0,1.0,1.0);
    moveHead(160,107);
    moveArm("left",5,86,30,10);
    moveArm("right",86,140,83,80);
    moveHand("left",99,140,173,167,130,26);
    moveHand("right",135,6,170,145,168,180);
    moveTorso(90,90,90);
    sleep(0.8);
    speak("I am leaving today");
    moveHead(160,68);
    moveArm("left",5,86,30,10);
    moveArm("right",86,140,83,80);
    moveHand("left",99,140,173,167,130,26);
    moveHand("right",135,6,170,145,168,180);
    moveTorso(90,90,90);
    sleep(0.4);
    speak("I want to be a part of it");
    moveHead(138,86);
    moveArm("left",80,112,52,34);
    moveArm("right",80,122,59,54);
    moveHand("left",105,76,71,98,76,90);
    moveHand("right",55,0,55,48,142,93);
    moveTorso(90,90,90);
    sleep(0.5);
    speak("New York, New York");
    moveHead(138,86);
    moveArm("left",80,112,52,34);
    moveArm("right",80,122,59,54);
    moveHand("left",105,76,71,98,76,90);
    moveHand("right",55,0,55,48,142,93);
    moveTorso(90,90,90);
    sleep(0.4);
    speak("If I can make it there");
    moveHead(160,86);
    moveArm("left",80,128,71,62);
    moveArm("right",80,132,69,80);
    moveHand("left",45,40,30,25,35,90);
    moveHand("right",55,0,55,48,142,72);
    moveTorso(90,90,90);
    sleep(0.2);
    speak("I'll make it anywhere");
    moveHead(160,86);
    moveArm("left",80,128,71,62);
    moveArm("right",80,132,69,80);
    moveHand("left",45,40,30,25,35,90);
    moveHand("right",55,0,55,48,142,72);
    moveTorso(90,90,90);
    sleep(0.2);
    moveHead(136,66);
    moveArm("left",5,138,30,77);
    moveArm("right",5,134,59,75);
    moveHand("left",127,101,122,129,123,131);
    moveHand("right",55,2,50,48,30,90);
    moveTorso(90,90,90);
    sleep(0.2);
    speak("It's up to you");
    moveHead(160,86);
    moveArm("left",46,131,30,80);
    moveArm("right",71,145,36,80);
    moveHand("left",45,40,30,96,107,90);
    moveHand("right",55,4,50,49,114,90);
    moveTorso(90,90,90);
    sleep(0.2);
    speak("New York, New York");
    sleep(2);
    relax();
}

void madeBy(){
     ROS_INFO("Starting Made By");
     relax();
    sleep(1);
    moveNeck(80,86);
    moveArm("left",5,90,30,10);
    moveArm("right",5,90,30,10);
    moveHand("left",45,40,30,25,35,90);
    moveHand("right",55,2,50,48,30,90);
    moveTorso(90,90);
    sleep(3);
    speak("hello friends");
    moveNeck(80,98);
    moveArm("left",5,90,30,10);
    moveArm("right",5,90,30,10);
    moveHand("left",45,40,30,25,35,90);
    moveHand("right",55,2,50,48,30,90);
    moveTorso(90,90);
    sleep(1);
    moveNeck(90,89);
    moveArm("left",42,104,30,10);
    moveArm("right",33,116,30,10);
    moveHand("left",45,40,30,25,35,120);
    moveHand("right",55,2,50,48,30,40);
    moveTorso(90,90);
    sleep(1);
    moveNeck(80,98);
    moveArm("left",5,99,30,16);
    moveArm("right",5,94,30,16);
    moveHand("left",120,116,110,115,98,73);
    moveHand("right",114,146,125,113,117,109);
    moveTorso(90,90);
    speak("my name is rosie");
    moveNeck(68,90);
    moveArm("left",5,99,30,16);
    moveArm("right",85,102,38,16);
    moveHand("left",120,116,110,115,98,73);
    moveHand("right",114,146,161,132,168,19);
    moveTorso(90,90);
    sleep(0.5);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
    moveNeck(87,94);
    moveArm("left",5,99,36,16);
    moveArm("right",81,105,42,16);
    moveHand("left",120,116,110,115,98,50);
    moveHand("right",114,118,131,132,168,19);
    moveTorso(90,90);
    sleep(1);
    speak("I was built by Matt and Billy");
    setHandSpeed("left", 0.90, 0.90, 0.90, 0.90, 0.90, 0.95);
    setHandSpeed("right", 0.90, 0.90, 0.90, 0.90, 0.90, 0.95);
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
    setArmSpeed("right", 0.90, 1.0, 1.0, 1.0);
    moveNeck(105,94);
    moveArm("left",5,99,36,16);
    moveArm("right",81,105,42,16);
    moveHand("left",120,116,110,115,98,50);
    moveHand("right",114,118,131,132,168,19);
    moveTorso(90,90);
    sleep(2);
    moveNeck(80,86);
    moveArm("left",5,96,25,10);
    moveArm("right",5,94,26,10);
    moveHand("left",110,62,56,88,81,18);
    moveHand("right",78,88,101,95,81,137);
    moveTorso(90,90);
    sleep(2);
    moveNeck(75,97);
    moveArm("left",85,106,25,18);
    moveArm("right",87,107,32,18);
    moveHand("left",110,62,56,88,81,145);
    moveHand("right",78,88,101,95,81,27);
    moveTorso(90,90);
    speak("in their spare time");
    sleep(5);
    moveNeck(80,86);
    moveArm("left",5,96,25,10);
    moveArm("right",5,94,26,10);
    moveHand("left",110,62,56,88,81,18);
    moveHand("right",78,88,101,95,81,137);
    moveTorso(90,90);
    sleep(1);
    moveNeck(75,97);
    moveArm("left",6,91,22,14);
    moveArm("right",87,107,32,18);
    moveHand("left",110,62,56,88,81,0);
    moveHand("right",78,88,101,95,81,27);
    moveTorso(90,90);
    speak("my software is being developped on R O S");
    sleep(1);
    moveNeck(20,69);
    moveArm("left",6,91,22,14);
    moveArm("right",87,107,32,21);
    moveHand("left",110,62,56,88,81,0);
    moveHand("right",78,88,101,95,81,27);
    moveTorso(90,90);
    speak("I am made of 100 percent 3 D printed parts");
    moveNeck(75,97);
    moveArm("left",85,106,25,18);
    moveArm("right",87,107,32,18);
    moveHand("left",110,62,56,88,81,145);
    moveHand("right",78,88,101,95,81,27);
    moveTorso(90,90);
    sleep(1);
    moveNeck(33,110);
    moveArm("left",85,104,25,18);
    moveArm("right",87,41,47,18);
    moveHand("left",110,62,56,88,81,145);
    moveHand("right",111,75,117,125,111,143);
    moveTorso(90,90);
    sleep(1);
    moveNeck(62,102);
    moveArm("left",85,104,25,18);
    moveArm("right",87,41,47,18);
    moveHand("left",110,62,56,88,81,145);
    moveHand("right",111,75,117,125,111,143);
    moveTorso(90,90);
    speak("which means all my parts");
    moveNeck(79,88);
    moveArm("left",85,104,25,18);
    moveArm("right",87,59,46,18);
    moveHand("left",110,62,56,88,81,145);
    moveHand("right",59,75,117,125,111,113);
    moveTorso(90,90);
    speak("are made on a home 3 D printer");
    sleep(1);
    moveNeck(40,84);
    moveArm("left",85,72,38,18);
    moveArm("right",87,64,47,18);
    moveHand("left",124,97,66,120,130,35);
    moveHand("right",59,75,117,125,111,113);
    moveTorso(90,90);
    speak("each parts are design to fit a 5 inch cubic build area");
    sleep(1);
    moveNeck(97,80);
    moveArm("left",85,79,39,14);
    moveArm("right",87,76,42,12);
    moveHand("left",124,97,66,120,130,35);
    moveHand("right",59,75,117,125,111,113);
    moveTorso(90,90);
    sleep(0.5);
    moveNeck(75,97);
    moveArm("left",85,106,25,18);
    moveArm("right",87,107,32,18);
    moveHand("left",110,62,56,88,81,145);
    moveHand("right",78,88,101,95,81,27);
    moveTorso(90,90);
    sleep(1);
    speak("so anyone can reproduce me");
    fullspeed();
    moveNeck(80,98);
    moveArm("left",5,90,30,10);
    moveArm("right",5,90,30,10);
    moveHand("left",45,40,30,25,35,90);
    moveHand("right",55,2,50,48,30,90);
    moveTorso(90,90);
    sleep(1);
    speak("cool, don't you think");
    sleep(1);
    speak("thank you for listening");
    moveNeck(116,80);
    moveArm("left",85,93,42,16);
    moveArm("right",87,93,37,18);
    moveHand("left",124,82,65,81,41,143);
    moveHand("right",59,53,89,61,36,21);
    moveTorso(90,90);
    sleep(2);
    relax(); 
     ROS_INFO("End Made By");
}

void testSetSpeed(){
  ROS_INFO("Testing arm speed");
  ROS_INFO("Left Arm setting Defaults");
  moveArm("left",5,84,33,15);
  ROS_INFO("Sleeping 1");
  sleep(1);
  setArmSpeed("left",0,0,0,0);
  ROS_INFO("Full Speed");
  moveArm("left",85,84,33,15);
  sleep(2);
  moveArm("left",5,84,33,15);
  ROS_INFO("Sleeping 2");
  sleep(2);
  ROS_INFO("Half speed");
  setArmSpeed("left",25,1,1,1);
  /*inmoov_msgs::MotorCommand MotorCommandMsg;
  MotorCommandMsg.id = 6;
  MotorCommandMsg.parameter = 0x20;
  MotorCommandMsg.value = 25;
  Left_pub.publish(MotorCommandMsg);*/
  sleep(.5);
  moveArm("left",85,84,33,15);
  sleep(2);
  moveArm("left",5,84,33,15);
  ROS_INFO("End Testing arm speed");

}





int main(int argc, char **argv)
{
  ros::init(argc, argv, "main");
  //allow serial to initialize
  ROS_INFO("%s", "Sleeping for 5 seconds to allow for serial connections to initialize");


  ros::NodeHandle n;
  sleep(5);


  Right_pub = n.advertise<inmoov_msgs::MotorCommand>("servobus/rightarm/motorcommand", 100);
  Left_pub = n.advertise<inmoov_msgs::MotorCommand>("servobus/leftarm/motorcommand", 100);
  Mouth_pub = n.advertise<std_msgs::String>("Speak", 100);
  client = n.serviceClient<inmoov_msgs::voice>("voice");
  
sleep(2);
//subscribe?

//enable
enableAllServos();
sleep(1);
ROS_INFO("Setting to defualt Position");
defaultPosition();
sleep(1);
//systemCheck();
ROS_INFO("Sleeping for 5");
sleep(5);
ROS_INFO("Calling systemCheck");
systemCheck();
sleep(5);
ROS_INFO("Calling madeBy");
madeBy();
sleep(5);
ROS_INFO("Calling Servos");
servos();
sleep(5);
ROS_INFO("Calling Gestures");
gestures();
sleep(5);
ROS_INFO("Calling balance");
balance();
sleep(5);
ROS_INFO("Calling New york");
newyork();
sleep(5);
ROS_INFO("End");


 

}

