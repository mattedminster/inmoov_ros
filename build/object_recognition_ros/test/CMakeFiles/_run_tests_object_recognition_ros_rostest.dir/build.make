# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/robot/inmoov_ros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robot/inmoov_ros/build

# Utility rule file for _run_tests_object_recognition_ros_rostest.

# Include the progress variables for this target.
include object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/progress.make

_run_tests_object_recognition_ros_rostest: object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/build.make

.PHONY : _run_tests_object_recognition_ros_rostest

# Rule to build all files generated by this target.
object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/build: _run_tests_object_recognition_ros_rostest

.PHONY : object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/build

object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/clean:
	cd /home/robot/inmoov_ros/build/object_recognition_ros/test && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/cmake_clean.cmake
.PHONY : object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/clean

object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/depend:
	cd /home/robot/inmoov_ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robot/inmoov_ros/src /home/robot/inmoov_ros/src/object_recognition_ros/test /home/robot/inmoov_ros/build /home/robot/inmoov_ros/build/object_recognition_ros/test /home/robot/inmoov_ros/build/object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : object_recognition_ros/test/CMakeFiles/_run_tests_object_recognition_ros_rostest.dir/depend

