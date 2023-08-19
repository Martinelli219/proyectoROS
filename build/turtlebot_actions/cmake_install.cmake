# Install script for directory: /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/turtlebot_apps/turtlebot_actions

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install" TYPE PROGRAM FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install" TYPE PROGRAM FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/setup.bash;/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install" TYPE FILE FILES
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/setup.bash"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/setup.sh;/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install" TYPE FILE FILES
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/setup.sh"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/setup.zsh;/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install" TYPE FILE FILES
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/setup.zsh"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install" TYPE FILE FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_actions/action" TYPE FILE FILES
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/turtlebot_apps/turtlebot_actions/action/FindFiducial.action"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/turtlebot_apps/turtlebot_actions/action/TurtlebotMove.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_actions/msg" TYPE FILE FILES
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/FindFiducialAction.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/FindFiducialActionGoal.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/FindFiducialActionResult.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/FindFiducialActionFeedback.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/FindFiducialGoal.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/FindFiducialResult.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/FindFiducialFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_actions/msg" TYPE FILE FILES
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/TurtlebotMoveAction.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/TurtlebotMoveActionGoal.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/TurtlebotMoveActionResult.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/TurtlebotMoveActionFeedback.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/TurtlebotMoveGoal.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/TurtlebotMoveResult.msg"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/turtlebot_actions/msg/TurtlebotMoveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_actions/cmake" TYPE FILE FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/turtlebot_actions-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/include/turtlebot_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/roseus/ros/turtlebot_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/common-lisp/ros/turtlebot_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/share/gennodejs/ros/turtlebot_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/lib/python3/dist-packages/turtlebot_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/lib/python3/dist-packages/turtlebot_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/turtlebot_actions.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_actions/cmake" TYPE FILE FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/turtlebot_actions-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_actions/cmake" TYPE FILE FILES
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/turtlebot_actionsConfig.cmake"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/catkin_generated/installspace/turtlebot_actionsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_actions" TYPE FILE FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/turtlebot_apps/turtlebot_actions/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/turtlebot_move_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/turtlebot_move_action_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/turtlebot_move_action_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions" TYPE EXECUTABLE FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/lib/turtlebot_actions/turtlebot_move_action_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/turtlebot_move_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/turtlebot_move_action_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/turtlebot_move_action_server"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/turtlebot_move_action_server")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/find_fiducial_pose" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/find_fiducial_pose")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/find_fiducial_pose"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions" TYPE EXECUTABLE FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/turtlebot_actions/lib/turtlebot_actions/find_fiducial_pose")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/find_fiducial_pose" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/find_fiducial_pose")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/find_fiducial_pose"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions/find_fiducial_pose")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/turtlebot_actions" TYPE DIRECTORY FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/turtlebot_apps/turtlebot_actions/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot_actions" TYPE PROGRAM FILES
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/turtlebot_apps/turtlebot_actions/scripts/test_fiducial.py"
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/turtlebot_apps/turtlebot_actions/scripts/test_move.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_actions" TYPE DIRECTORY FILES "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/turtlebot_apps/turtlebot_actions/launch")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/turtlebot_actions/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
