execute_process(COMMAND "/home/robot/inmoov_ros/build/image_recognition/tensorflow_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/robot/inmoov_ros/build/image_recognition/tensorflow_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
