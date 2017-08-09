# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "moveit_grasps: 8 messages, 0 services")

set(MSG_I_FLAGS "-Imoveit_grasps:/home/robot/inmoov_ros/src/moveit_grasps/msg;-Imoveit_grasps:/home/robot/inmoov_ros/devel/share/moveit_grasps/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Imoveit_msgs:/home/robot/inmoov_ros/devel/share/moveit_msgs/msg;-Imoveit_msgs:/home/robot/inmoov_ros/src/moveit_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/kinetic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/home/robot/inmoov_ros/devel/share/object_recognition_msgs/msg;-Iobject_recognition_msgs:/home/robot/inmoov_ros/src/object_recognition_msgs/msg;-Ioctomap_msgs:/opt/ros/kinetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(moveit_grasps_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg" NAME_WE)
add_custom_target(_moveit_grasps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_grasps" "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg" "geometry_msgs/Quaternion:moveit_grasps/GraspGeneratorOptions:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg" NAME_WE)
add_custom_target(_moveit_grasps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_grasps" "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg" "moveit_grasps/GenerateGraspsActionResult:moveit_grasps/GenerateGraspsResult:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Vector3Stamped:moveit_msgs/Grasp:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:moveit_grasps/GenerateGraspsGoal:geometry_msgs/Point:geometry_msgs/Vector3:moveit_grasps/GenerateGraspsActionGoal:geometry_msgs/PoseStamped:moveit_msgs/GripperTranslation:trajectory_msgs/JointTrajectory:moveit_grasps/GenerateGraspsActionFeedback:moveit_grasps/GraspGeneratorOptions:actionlib_msgs/GoalID:moveit_grasps/GenerateGraspsFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg" NAME_WE)
add_custom_target(_moveit_grasps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_grasps" "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/PoseStamped:std_msgs/Header:moveit_msgs/Grasp:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:trajectory_msgs/JointTrajectory:moveit_msgs/GripperTranslation:actionlib_msgs/GoalID:moveit_grasps/GenerateGraspsFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg" NAME_WE)
add_custom_target(_moveit_grasps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_grasps" "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:moveit_grasps/GenerateGraspsGoal:geometry_msgs/Point:moveit_grasps/GraspGeneratorOptions:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg" NAME_WE)
add_custom_target(_moveit_grasps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_grasps" "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg" ""
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg" NAME_WE)
add_custom_target(_moveit_grasps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_grasps" "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/PoseStamped:std_msgs/Header:moveit_msgs/Grasp:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Point:geometry_msgs/Vector3:moveit_grasps/GenerateGraspsResult:geometry_msgs/Pose:trajectory_msgs/JointTrajectory:moveit_msgs/GripperTranslation:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg" NAME_WE)
add_custom_target(_moveit_grasps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_grasps" "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/PoseStamped:std_msgs/Header:moveit_msgs/Grasp:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectory:geometry_msgs/Point:geometry_msgs/Vector3:moveit_msgs/GripperTranslation:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg" NAME_WE)
add_custom_target(_moveit_grasps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_grasps" "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/PoseStamped:std_msgs/Header:moveit_msgs/Grasp:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectory:geometry_msgs/Point:geometry_msgs/Vector3:moveit_msgs/GripperTranslation:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_cpp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_cpp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_cpp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_cpp(moveit_grasps
  "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_cpp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_cpp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_cpp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
)

### Generating Services

### Generating Module File
_generate_module_cpp(moveit_grasps
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(moveit_grasps_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(moveit_grasps_generate_messages moveit_grasps_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_cpp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_cpp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_cpp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_cpp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_cpp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_cpp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_cpp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_cpp _moveit_grasps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_grasps_gencpp)
add_dependencies(moveit_grasps_gencpp moveit_grasps_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_grasps_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
)
_generate_msg_eus(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
)
_generate_msg_eus(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
)
_generate_msg_eus(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
)
_generate_msg_eus(moveit_grasps
  "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
)
_generate_msg_eus(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
)
_generate_msg_eus(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
)
_generate_msg_eus(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
)

### Generating Services

### Generating Module File
_generate_module_eus(moveit_grasps
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(moveit_grasps_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(moveit_grasps_generate_messages moveit_grasps_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_eus _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_eus _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_eus _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_eus _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_eus _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_eus _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_eus _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_eus _moveit_grasps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_grasps_geneus)
add_dependencies(moveit_grasps_geneus moveit_grasps_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_grasps_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_lisp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_lisp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_lisp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_lisp(moveit_grasps
  "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_lisp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_lisp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
)
_generate_msg_lisp(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
)

### Generating Services

### Generating Module File
_generate_module_lisp(moveit_grasps
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(moveit_grasps_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(moveit_grasps_generate_messages moveit_grasps_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_lisp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_lisp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_lisp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_lisp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_lisp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_lisp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_lisp _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_lisp _moveit_grasps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_grasps_genlisp)
add_dependencies(moveit_grasps_genlisp moveit_grasps_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_grasps_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
)
_generate_msg_nodejs(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
)
_generate_msg_nodejs(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
)
_generate_msg_nodejs(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
)
_generate_msg_nodejs(moveit_grasps
  "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
)
_generate_msg_nodejs(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
)
_generate_msg_nodejs(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
)
_generate_msg_nodejs(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
)

### Generating Services

### Generating Module File
_generate_module_nodejs(moveit_grasps
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(moveit_grasps_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(moveit_grasps_generate_messages moveit_grasps_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_nodejs _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_nodejs _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_nodejs _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_nodejs _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_nodejs _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_nodejs _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_nodejs _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_nodejs _moveit_grasps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_grasps_gennodejs)
add_dependencies(moveit_grasps_gennodejs moveit_grasps_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_grasps_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
)
_generate_msg_py(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
)
_generate_msg_py(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
)
_generate_msg_py(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
)
_generate_msg_py(moveit_grasps
  "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
)
_generate_msg_py(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
)
_generate_msg_py(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/Grasp.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/robot/inmoov_ros/src/moveit_msgs/msg/GripperTranslation.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
)
_generate_msg_py(moveit_grasps
  "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
)

### Generating Services

### Generating Module File
_generate_module_py(moveit_grasps
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(moveit_grasps_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(moveit_grasps_generate_messages moveit_grasps_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_py _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsAction.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_py _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_py _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionGoal.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_py _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/src/moveit_grasps/msg/GraspGeneratorOptions.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_py _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsActionResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_py _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsResult.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_py _moveit_grasps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/inmoov_ros/devel/share/moveit_grasps/msg/GenerateGraspsFeedback.msg" NAME_WE)
add_dependencies(moveit_grasps_generate_messages_py _moveit_grasps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_grasps_genpy)
add_dependencies(moveit_grasps_genpy moveit_grasps_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_grasps_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_grasps
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(moveit_grasps_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(moveit_grasps_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(moveit_grasps_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(moveit_grasps_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_grasps
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(moveit_grasps_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(moveit_grasps_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(moveit_grasps_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(moveit_grasps_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_grasps
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(moveit_grasps_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(moveit_grasps_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(moveit_grasps_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(moveit_grasps_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_grasps
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(moveit_grasps_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(moveit_grasps_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(moveit_grasps_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(moveit_grasps_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_grasps
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(moveit_grasps_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(moveit_grasps_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(moveit_grasps_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(moveit_grasps_generate_messages_py moveit_msgs_generate_messages_py)
endif()
