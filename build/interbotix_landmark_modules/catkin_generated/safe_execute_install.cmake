execute_process(COMMAND "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/interbotix_landmark_modules/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/interbotix_landmark_modules/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
