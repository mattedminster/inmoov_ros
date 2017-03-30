cmake_minimum_required(VERSION 2.8.3)
project(rosie_setup)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  inmoov_tools
  inmoov_msgs
)

##add_message_files(
 ## FILES
  
##)
generate_messages(
  DEPENDENCIES
  std_msgs
)
## Declare a catkin package
catkin_package(
CATKIN_DEPENDS message_runtime
)

## Build 
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(robot src/main.cpp)
target_link_libraries(robot ${catkin_LIBRARIES})
##add_dependencies(talker beginner_tutorials_generate_messages_cpp)




