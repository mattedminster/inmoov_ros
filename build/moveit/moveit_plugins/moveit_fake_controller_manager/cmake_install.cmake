# Install script for directory: /home/robot/inmoov_ros/src/moveit/moveit_plugins/moveit_fake_controller_manager

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robot/inmoov_ros/build/moveit/moveit_plugins/moveit_fake_controller_manager/catkin_generated/installspace/moveit_fake_controller_manager.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_fake_controller_manager/cmake" TYPE FILE FILES
    "/home/robot/inmoov_ros/build/moveit/moveit_plugins/moveit_fake_controller_manager/catkin_generated/installspace/moveit_fake_controller_managerConfig.cmake"
    "/home/robot/inmoov_ros/build/moveit/moveit_plugins/moveit_fake_controller_manager/catkin_generated/installspace/moveit_fake_controller_managerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_fake_controller_manager" TYPE FILE FILES "/home/robot/inmoov_ros/src/moveit/moveit_plugins/moveit_fake_controller_manager/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_fake_controller_manager.so.0.9.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_fake_controller_manager.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/robot/inmoov_ros/devel/lib/libmoveit_fake_controller_manager.so.0.9.7"
    "/home/robot/inmoov_ros/devel/lib/libmoveit_fake_controller_manager.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_fake_controller_manager.so.0.9.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_fake_controller_manager.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/robot/inmoov_ros/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_fake_controller_manager" TYPE FILE FILES "/home/robot/inmoov_ros/src/moveit/moveit_plugins/moveit_fake_controller_manager/moveit_fake_controller_manager_plugin_description.xml")
endif()

