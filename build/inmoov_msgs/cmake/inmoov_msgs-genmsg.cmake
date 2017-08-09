# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "inmoov_msgs: 10 messages, 6 services")

set(MSG_I_FLAGS "-Iinmoov_msgs:/home/robot/inmoov_ros/src/inmoov_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(inmoov_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg" "inmoov_msgs/LeapPointable:std_msgs/Header:inmoov_msgs/LeapGesture:geometry_msgs/Point:geometry_msgs/Vector3:inmoov_msgs/LeapHand"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg" "geometry_msgs/Vector3:geometry_msgs/Point"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg" "geometry_msgs/Vector3:geometry_msgs/Point"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg" NAME_WE)
add_custom_target(_inmoov_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inmoov_msgs" "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg" "geometry_msgs/Point:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)

### Generating Services
_generate_srv_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_cpp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
)

### Generating Module File
_generate_module_cpp(inmoov_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(inmoov_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(inmoov_msgs_generate_messages inmoov_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_cpp _inmoov_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inmoov_msgs_gencpp)
add_dependencies(inmoov_msgs_gencpp inmoov_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inmoov_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)

### Generating Services
_generate_srv_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_eus(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
)

### Generating Module File
_generate_module_eus(inmoov_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(inmoov_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(inmoov_msgs_generate_messages inmoov_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_eus _inmoov_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inmoov_msgs_geneus)
add_dependencies(inmoov_msgs_geneus inmoov_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inmoov_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)

### Generating Services
_generate_srv_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_lisp(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
)

### Generating Module File
_generate_module_lisp(inmoov_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(inmoov_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(inmoov_msgs_generate_messages inmoov_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_lisp _inmoov_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inmoov_msgs_genlisp)
add_dependencies(inmoov_msgs_genlisp inmoov_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inmoov_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)

### Generating Services
_generate_srv_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_nodejs(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
)

### Generating Module File
_generate_module_nodejs(inmoov_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(inmoov_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(inmoov_msgs_generate_messages inmoov_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_nodejs _inmoov_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inmoov_msgs_gennodejs)
add_dependencies(inmoov_msgs_gennodejs inmoov_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inmoov_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_msg_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)

### Generating Services
_generate_srv_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)
_generate_srv_py(inmoov_msgs
  "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
)

### Generating Module File
_generate_module_py(inmoov_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(inmoov_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(inmoov_msgs_generate_messages inmoov_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/NeoPixelSetBrightness.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RequestStatus.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorCommand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/ServoSetup.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_voice.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapFrame.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/NeoPixel_command.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/RPS.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapHand.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/Status.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/inmoov_sound_play.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/srv/MotorParameter.srv" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapPointable.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/inmoov_msgs/msg/LeapGesture.msg" NAME_WE)
add_dependencies(inmoov_msgs_generate_messages_py _inmoov_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inmoov_msgs_genpy)
add_dependencies(inmoov_msgs_genpy inmoov_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inmoov_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inmoov_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(inmoov_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(inmoov_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inmoov_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(inmoov_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(inmoov_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inmoov_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(inmoov_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(inmoov_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inmoov_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(inmoov_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(inmoov_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inmoov_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(inmoov_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(inmoov_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
