# Install script for directory: /home/robot/inmoov_ros/src/haf_grasping

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/haf_grasping/msg" TYPE FILE FILES
    "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspInput.msg"
    "/home/robot/inmoov_ros/src/haf_grasping/msg/GraspOutput.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/haf_grasping/srv" TYPE FILE FILES
    "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchCenter.srv"
    "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspSearchRectangleSize.srv"
    "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspCalculationTimeMax.srv"
    "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspApproachVector.srv"
    "/home/robot/inmoov_ros/src/haf_grasping/srv/ShowOnlyBestGrasp.srv"
    "/home/robot/inmoov_ros/src/haf_grasping/srv/GraspPreGripperOpeningWidth.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/haf_grasping/action" TYPE FILE FILES "/home/robot/inmoov_ros/src/haf_grasping/action/CalcGraspPointsServer.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/haf_grasping/msg" TYPE FILE FILES
    "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerAction.msg"
    "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionGoal.msg"
    "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionResult.msg"
    "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerActionFeedback.msg"
    "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerGoal.msg"
    "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerResult.msg"
    "/home/robot/inmoov_ros/devel/share/haf_grasping/msg/CalcGraspPointsServerFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/haf_grasping/cmake" TYPE FILE FILES "/home/robot/inmoov_ros/build/haf_grasping/catkin_generated/installspace/haf_grasping-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/include/haf_grasping")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/share/roseus/ros/haf_grasping")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/share/common-lisp/ros/haf_grasping")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/share/gennodejs/ros/haf_grasping")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/robot/inmoov_ros/devel/lib/python2.7/dist-packages/haf_grasping")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/robot/inmoov_ros/devel/lib/python2.7/dist-packages/haf_grasping")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robot/inmoov_ros/build/haf_grasping/catkin_generated/installspace/haf_grasping.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/haf_grasping/cmake" TYPE FILE FILES "/home/robot/inmoov_ros/build/haf_grasping/catkin_generated/installspace/haf_grasping-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/haf_grasping/cmake" TYPE FILE FILES
    "/home/robot/inmoov_ros/build/haf_grasping/catkin_generated/installspace/haf_graspingConfig.cmake"
    "/home/robot/inmoov_ros/build/haf_grasping/catkin_generated/installspace/haf_graspingConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/haf_grasping" TYPE FILE FILES "/home/robot/inmoov_ros/src/haf_grasping/package.xml")
endif()

