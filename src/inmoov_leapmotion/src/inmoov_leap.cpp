/******************************************************************************\
* Copyright (C) 2012-2014 Leap Motion, Inc. All rights reserved.               *
* Leap Motion proprietary and confidential. Not for distribution.              *
* Use subject to the terms of the Leap Motion SDK Agreement available at       *
* https://developer.leapmotion.com/sdk_agreement, or another agreement         *
* between Leap Motion and you, your company or other organization.             *
\******************************************************************************/

#include <iostream>
#include <cstring>
#include <string>
#include "Leap.h"
#include "ros/ros.h"
#include "inmoov_msgs/RPS.h"

using namespace Leap;


class SampleListener : public Listener {
  public:
    virtual void onInit(const Controller&);
    virtual void onConnect(const Controller&);
    virtual void onDisconnect(const Controller&);
    virtual void onExit(const Controller&);
    virtual void onFrame(const Controller&);
    virtual void onFocusGained(const Controller&);
    virtual void onFocusLost(const Controller&);
    virtual void onDeviceChange(const Controller&);
    virtual void onServiceConnect(const Controller&);
    virtual void onServiceDisconnect(const Controller&);

  private:
};

int currentFrameCount = 0;
int rockCount = 0;
int paperCount = 0;
int sisCount = 0;

std::string lastDetectedMove = "none";
const std::string fingerNames[] = {"Thumb", "Index", "Middle", "Ring", "Pinky"};
const std::string boneNames[] = {"Metacarpal", "Proximal", "Middle", "Distal"};
const std::string stateNames[] = {"STATE_INVALID", "STATE_START", "STATE_UPDATE", "STATE_END"};

void SampleListener::onInit(const Controller& controller) {
  //std::cout << "Initialized" << std::endl;
}

void SampleListener::onConnect(const Controller& controller) {
  //std::cout << "Connected" << std::endl;
}

void SampleListener::onDisconnect(const Controller& controller) {
  // Note: not dispatched when running in a debugger.
  //std::cout << "Disconnected" << std::endl;
}

void SampleListener::onExit(const Controller& controller) {
  //std::cout << "Exited" << std::endl;
}

void SampleListener::onFrame(const Controller& controller) {
  // Get the most recent frame and report some basic information
  const Frame frame = controller.frame();
  
  if (frame.hands().count() == 0){
    //no hands detected
    lastDetectedMove = "none";
  }

  if (currentFrameCount <= 10){
  Hand rightHand = frame.hands().rightmost();
  //std::cout << rightHand << std::endl; 
  int count = rightHand.fingers().extended().count();
  if (count == 0){
    rockCount = rockCount + 1;
  }
  if (count == 2){
    sisCount = sisCount + 1;
  }
  if (count == 5){
    paperCount = paperCount + 1;
  }
  currentFrameCount = currentFrameCount + 1;
  if (currentFrameCount > 10){
    if (rockCount > 5) {
      lastDetectedMove = "rock";
    }
    if (sisCount > 5) {
      lastDetectedMove = "scissors";
    }
    if (paperCount > 5) {
      lastDetectedMove = "paper";
    }

    currentFrameCount = 0;
    rockCount = 0;
    sisCount = 0;
    paperCount = 0;

  }


   //std::cout << count << std::endl;
   //std::cout << lastDetectedMove << std::endl;
}



 

}

void SampleListener::onFocusGained(const Controller& controller) {
  //std::cout << "Focus Gained" << std::endl;
}

bool getRPS(inmoov_msgs::RPS::Request &req, inmoov_msgs::RPS::Response &res){
    res.optMove = lastDetectedMove;
    return true;
}

void SampleListener::onFocusLost(const Controller& controller) {
  //std::cout << "Focus Lost" << std::endl;
}

void SampleListener::onDeviceChange(const Controller& controller) {
  /*std::cout << "Device Changed" << std::endl;
  const DeviceList devices = controller.devices();

  for (int i = 0; i < devices.count(); ++i) {
    std::cout << "id: " << devices[i].toString() << std::endl;
    std::cout << "  isStreaming: " << (devices[i].isStreaming() ? "true" : "false") << std::endl;
  }*/
}

void SampleListener::onServiceConnect(const Controller& controller) {
  //std::cout << "Service Connected" << std::endl;
}

void SampleListener::onServiceDisconnect(const Controller& controller) {
  //std::cout << "Service Disconnected" << std::endl;
}

int main(int argc, char** argv) {
  // Create a sample listener and controller
  SampleListener listener;
  Controller controller;

  // Have the sample listener receive events from the controller
  controller.addListener(listener);
  
  ros::init(argc, argv, "leap_rps_server");
  ros::NodeHandle n;

 ros::ServiceServer service = n.advertiseService("leap_rps_server", getRPS);

  ros::spin();
  // Remove the sample listener when done
  controller.removeListener(listener);

  return 0;
}
