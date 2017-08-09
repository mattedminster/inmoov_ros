cmake_minimum_required(VERSION 2.8.3)
project(inmoov_msgs)

find_package(catkin REQUIRED
  COMPONENTS message_generation std_msgs geometry_msgs)

add_message_files(
  FILES
  MotorCommand.msg
  MotorStatus.msg
  ServoSetup.msg
  NeoPixel.msg
  LeapPointable.msg
  LeapHand.msg
  LeapGesture.msg  
  LeapFrame.msg
  Status.msg
  NeoPixel_command.msg
)

add_service_files(
  FILES
  MotorParameter.srv
  inmoov_voice.srv
  RPS.srv
  inmoov_sound_play.srv
  RequestStatus.srv
  NeoPixelSetBrightness.srv
)

generate_messages(
  DEPENDENCIES std_msgs geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs std_msgs 
)
