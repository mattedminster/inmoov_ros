# Install script for directory: /home/robot/inmoov_ros/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/robot/inmoov_ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robot/inmoov_ros/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/robot/inmoov_ros/install" TYPE PROGRAM FILES "/home/robot/inmoov_ros/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robot/inmoov_ros/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/robot/inmoov_ros/install" TYPE PROGRAM FILES "/home/robot/inmoov_ros/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robot/inmoov_ros/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/robot/inmoov_ros/install" TYPE FILE FILES "/home/robot/inmoov_ros/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robot/inmoov_ros/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/robot/inmoov_ros/install" TYPE FILE FILES "/home/robot/inmoov_ros/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robot/inmoov_ros/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/robot/inmoov_ros/install" TYPE FILE FILES "/home/robot/inmoov_ros/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robot/inmoov_ros/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/robot/inmoov_ros/install" TYPE FILE FILES "/home/robot/inmoov_ros/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/robot/inmoov_ros/build/gtest/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_people_perception/cob_people_perception/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_perception_common/cob_perception_common/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/fetch_calibration/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/geometry2/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/geometry_experimental/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/iai_kinect2/iai_kinect2/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_pipeline/image_pipeline/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_recognition/image_recognition/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_recognition/image_recognition_util/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_transport_plugins/image_transport_plugins/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_bringup/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_description/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_firmware/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_meshes/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_moveit_config/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_tools/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_people_perception/libnite2/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_commander/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit_ikfast/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_planners/moveit_planners/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_plugins/moveit_plugins/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit_resources/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/moveit_ros/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_runtime/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/vision_opencv/opencv_tests/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/pocketsphinx/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/ros_arduino_bridge/ros_arduino_bridge/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/ros_arduino_bridge/ros_arduino_firmware/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/ros_arduino_bridge/ros_arduino_python/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/ros_hue/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/ros_arduino_bridge/ros_arduino_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_perception_common/cob_perception_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/vision_opencv/image_geometry/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_recognition/image_recognition_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/robot_calibration/robot_calibration_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/object_recognition_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_perception_common/cob_object_detection_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_bullet/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_eigen/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/trac_ik/trac_ik/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/vision_opencv/vision_opencv/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometric_shapes/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_perception_common/cob_vision_utils/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/gspeech/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_leapmotion/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_moveit/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_navigation/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_neopixel_control/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/ros_hue_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_pipeline/camera_calibration/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/vision_opencv/cv_bridge/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/iai_kinect2/kinect2_registration/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_perception_common/cob_cam3d_throttle/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/ork_renderer/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_recognition/openface_ros/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/openni_launch/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/rplidar_ros/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_recognition/image_recognition_rqt/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_recognition/skybiometry_ros/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_recognition/tensorflow_ros/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_recognition/tensorflow_ros_rqt/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_py/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_perception_common/cob_3d_mapping_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_transport_plugins/compressed_depth_image_transport/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_transport_plugins/compressed_image_transport/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_pipeline/image_publisher/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_pipeline/image_proc/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/object_recognition_core/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/capture/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/linemod/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/reconstruction/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/object_recognition_ros/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/ork_tutorials/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/openni_camera/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_pipeline/stereo_image_proc/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_ros/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_pipeline/depth_image_proc/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/checkerboard_detector/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_people_perception/cob_people_tracking_filter/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/iai_kinect2/kinect2_bridge/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/iai_kinect2/kinect2_calibration/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/iai_kinect2/kinect2_viewer/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_perception_common/cob_image_flip/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_perception_common/cob_object_detection_visualizer/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_people_perception/cob_openni2_tracker/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/cob_people_perception/cob_people_detection/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/haf_grasping/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/realsense/realsense_camera/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/simple_grasping/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_geometry_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_pipeline/image_rotate/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_kdl/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/test_tf2/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_sensor_msgs/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/geometry2/tf2_tools/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/image_transport_plugins/theora_image_transport/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/robot_calibration/robot_calibration/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/object_recognition_ros_visualization/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/srdfdom/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_core/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_ikfast_l_arm_plugin/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/inmoov_ikfast_r_arm_plugin/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_plugins/moveit_controller_manager_example/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_experimental/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_planners/chomp/chomp_motion_planner/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_planners/chomp/chomp_interface/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/perception/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/planning/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_plugins/moveit_fake_controller_manager/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_kinematics/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_planners/ompl/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/move_group/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/manipulation/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/robot_interaction/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_plugins/moveit_simple_controller_manager/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_plugins/moveit_ros_control_interface/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit_visual_tools/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/tabletop/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/trac_ik/trac_ik_lib/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/trac_ik/trac_ik_examples/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/trac_ik/trac_ik_kinematics_plugin/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/usb_cam/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/warehouse/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/benchmarks/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/planning_interface/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit_grasps/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_ros/visualization/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit/moveit_setup_assistant/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit_simple_grasps/cmake_install.cmake")
  include("/home/robot/inmoov_ros/build/moveit_tutorials/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/robot/inmoov_ros/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")