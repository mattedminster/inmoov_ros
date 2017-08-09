cmake_minimum_required(VERSION 2.8.3)
project(inmoov_leapmotion)

## Add support for C++11, supported in ROS Kinetic and newer
# add_definitions(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  inmoov_msgs
  roscpp
  rospy
  std_msgs
)





catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES inmoov_leapmotion
#  CATKIN_DEPENDS inmoov_msgs roscpp rospy std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS} 
  $ENV{LEAP_SDK}
  $ENV{LEAP_SDK}/include
)

add_executable(inmoov_leap_srv src/inmoov_leap.cpp)
#add_library(Leap src/LeapSDK/lib/x64/libLeap.so)
target_link_libraries(inmoov_leap_srv ${catkin_LIBRARIES} $ENV{LEAP_SDK}/lib/x64/libLeap.so
  )

