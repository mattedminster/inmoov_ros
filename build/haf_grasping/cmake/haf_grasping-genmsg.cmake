# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "haf_grasping: 9 messages, 6 services")

set(MSG_I_FLAGS "-Ihaf_grasping:/home/robot/inmoov_ros/src/haf_grasping/msg;-Ihaf_grasping:/home/robot/inmoov_ros/devel/share/haf_grasping/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Iactionlib:/opt/ros/kinetic/share/actionlib/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(haf_grasping_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg" "haf_grasping/GraspOutput:std_msgs/Header:haf_grasping/CalcGraspPointsServerResult:geometry_msgs/Point:geometry_msgs/Vector3:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg" "haf_grasping/GraspInput:std_msgs/Header:sensor_msgs/PointField:haf_grasping/CalcGraspPointsServerGoal:geometry_msgs/Point:geometry_msgs/Vector3:actionlib_msgs/GoalID:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg" "haf_grasping/GraspInput:std_msgs/Header:sensor_msgs/PointField:geometry_msgs/Vector3:geometry_msgs/Point:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg" "geometry_msgs/Point:sensor_msgs/PointField:geometry_msgs/Vector3:std_msgs/Header:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg" "geometry_msgs/Vector3:haf_grasping/GraspOutput:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg" "haf_grasping/GraspInput:haf_grasping/CalcGraspPointsServerFeedback:std_msgs/String:haf_grasping/GraspOutput:std_msgs/Header:haf_grasping/CalcGraspPointsServerResult:haf_grasping/CalcGraspPointsServerActionFeedback:sensor_msgs/PointField:haf_grasping/CalcGraspPointsServerGoal:geometry_msgs/Point:geometry_msgs/Vector3:haf_grasping/CalcGraspPointsServerActionGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:haf_grasping/CalcGraspPointsServerActionResult:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg" "haf_grasping/CalcGraspPointsServerFeedback:actionlib_msgs/GoalID:std_msgs/Header:std_msgs/String:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv" NAME_WE)
add_custom_target(_haf_grasping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haf_grasping" "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_msg_cpp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)

### Generating Services
_generate_srv_cpp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_srv_cpp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_srv_cpp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_srv_cpp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_srv_cpp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)
_generate_srv_cpp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
)

### Generating Module File
_generate_module_cpp(haf_grasping
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(haf_grasping_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(haf_grasping_generate_messages haf_grasping_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_cpp _haf_grasping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haf_grasping_gencpp)
add_dependencies(haf_grasping_gencpp haf_grasping_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haf_grasping_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_msg_eus(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)

### Generating Services
_generate_srv_eus(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_srv_eus(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_srv_eus(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_srv_eus(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_srv_eus(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)
_generate_srv_eus(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
)

### Generating Module File
_generate_module_eus(haf_grasping
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(haf_grasping_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(haf_grasping_generate_messages haf_grasping_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_eus _haf_grasping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haf_grasping_geneus)
add_dependencies(haf_grasping_geneus haf_grasping_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haf_grasping_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_msg_lisp(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)

### Generating Services
_generate_srv_lisp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_srv_lisp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_srv_lisp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_srv_lisp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_srv_lisp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)
_generate_srv_lisp(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
)

### Generating Module File
_generate_module_lisp(haf_grasping
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(haf_grasping_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(haf_grasping_generate_messages haf_grasping_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_lisp _haf_grasping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haf_grasping_genlisp)
add_dependencies(haf_grasping_genlisp haf_grasping_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haf_grasping_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_msg_nodejs(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)

### Generating Services
_generate_srv_nodejs(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_srv_nodejs(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_srv_nodejs(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_srv_nodejs(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_srv_nodejs(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)
_generate_srv_nodejs(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
)

### Generating Module File
_generate_module_nodejs(haf_grasping
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(haf_grasping_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(haf_grasping_generate_messages haf_grasping_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_nodejs _haf_grasping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haf_grasping_gennodejs)
add_dependencies(haf_grasping_gennodejs haf_grasping_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haf_grasping_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_msg_py(haf_grasping
  "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)

### Generating Services
_generate_srv_py(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_srv_py(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_srv_py(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_srv_py(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_srv_py(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)
_generate_srv_py(haf_grasping
  "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
)

### Generating Module File
_generate_module_py(haf_grasping
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(haf_grasping_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(haf_grasping_generate_messages haf_grasping_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv" NAME_WE)
add_dependencies(haf_grasping_generate_messages_py _haf_grasping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haf_grasping_genpy)
add_dependencies(haf_grasping_genpy haf_grasping_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haf_grasping_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haf_grasping
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(haf_grasping_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(haf_grasping_generate_messages_cpp actionlib_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(haf_grasping_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(haf_grasping_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(haf_grasping_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(haf_grasping_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haf_grasping
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(haf_grasping_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_generate_messages_eus)
  add_dependencies(haf_grasping_generate_messages_eus actionlib_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(haf_grasping_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(haf_grasping_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(haf_grasping_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(haf_grasping_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haf_grasping
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(haf_grasping_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(haf_grasping_generate_messages_lisp actionlib_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(haf_grasping_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(haf_grasping_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(haf_grasping_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(haf_grasping_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haf_grasping
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(haf_grasping_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_generate_messages_nodejs)
  add_dependencies(haf_grasping_generate_messages_nodejs actionlib_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(haf_grasping_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(haf_grasping_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(haf_grasping_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(haf_grasping_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haf_grasping
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(haf_grasping_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(haf_grasping_generate_messages_py actionlib_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(haf_grasping_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(haf_grasping_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(haf_grasping_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(haf_grasping_generate_messages_py visualization_msgs_generate_messages_py)
endif()
