# Install script for directory: /home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/action" TYPE FILE FILES
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/action/PlaneExtraction.action"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/action/TableObjectCluster.action"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/action/Trigger.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/msg" TYPE FILE FILES
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/PlaneExtractionAction.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/PlaneExtractionActionGoal.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/PlaneExtractionActionResult.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/PlaneExtractionActionFeedback.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/PlaneExtractionGoal.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/PlaneExtractionResult.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/PlaneExtractionFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/msg" TYPE FILE FILES
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TableObjectClusterAction.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TableObjectClusterActionGoal.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TableObjectClusterActionResult.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TableObjectClusterActionFeedback.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TableObjectClusterGoal.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TableObjectClusterResult.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TableObjectClusterFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/msg" TYPE FILE FILES
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TriggerAction.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TriggerActionGoal.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TriggerActionResult.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TriggerActionFeedback.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TriggerGoal.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TriggerResult.msg"
    "/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg/TriggerFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/msg" TYPE FILE FILES
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/CurvedPolygonArray.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/CurvedPolygon.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/Feature.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/FilterObject.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/Plane.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/PlaneScene.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/Point2D.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/Polygon.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/PolylinePoint.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/ShapeArray.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/Shape.msg"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg/SimilarityScore.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/srv" TYPE FILE FILES
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/GetApproachPoseForPolygon.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/GetBoundingBoxes.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/GetGeometryMap.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/GetObjectsOfClass.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/GetPlane.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/GetPointMap.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/GetTables.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/ModifyMap.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/MoveToTable.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/SetBoundingBoxes.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/SetGeometryMap.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/SetPointMap.srv"
    "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/srv/UpdateMap.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/cmake" TYPE FILE FILES "/home/robot/inmoov_ros/build/cob_perception_common/cob_3d_mapping_msgs/catkin_generated/installspace/cob_3d_mapping_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/include/cob_3d_mapping_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/share/roseus/ros/cob_3d_mapping_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/share/common-lisp/ros/cob_3d_mapping_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/share/gennodejs/ros/cob_3d_mapping_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/robot/inmoov_ros/devel/lib/python2.7/dist-packages/cob_3d_mapping_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/lib/python2.7/dist-packages/cob_3d_mapping_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robot/inmoov_ros/build/cob_perception_common/cob_3d_mapping_msgs/catkin_generated/installspace/cob_3d_mapping_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/cmake" TYPE FILE FILES "/home/robot/inmoov_ros/build/cob_perception_common/cob_3d_mapping_msgs/catkin_generated/installspace/cob_3d_mapping_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs/cmake" TYPE FILE FILES
    "/home/robot/inmoov_ros/build/cob_perception_common/cob_3d_mapping_msgs/catkin_generated/installspace/cob_3d_mapping_msgsConfig.cmake"
    "/home/robot/inmoov_ros/build/cob_perception_common/cob_3d_mapping_msgs/catkin_generated/installspace/cob_3d_mapping_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_3d_mapping_msgs" TYPE FILE FILES "/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/package.xml")
endif()

