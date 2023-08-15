# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pckg: 0 messages, 7 services")

set(MSG_I_FLAGS "-Iinterbotix_xs_msgs:/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igazebo_msgs:/opt/ros/noetic/share/gazebo_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pckg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv" NAME_WE)
add_custom_target(_pckg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pckg" "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv" ""
)

get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv" NAME_WE)
add_custom_target(_pckg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pckg" "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv" ""
)

get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv" NAME_WE)
add_custom_target(_pckg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pckg" "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv" ""
)

get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv" NAME_WE)
add_custom_target(_pckg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pckg" "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv" ""
)

get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv" NAME_WE)
add_custom_target(_pckg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pckg" "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv" ""
)

get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv" NAME_WE)
add_custom_target(_pckg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pckg" "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv" ""
)

get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv" NAME_WE)
add_custom_target(_pckg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pckg" "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
)
_generate_srv_cpp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
)
_generate_srv_cpp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
)
_generate_srv_cpp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
)
_generate_srv_cpp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
)
_generate_srv_cpp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
)
_generate_srv_cpp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
)

### Generating Module File
_generate_module_cpp(pckg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pckg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pckg_generate_messages pckg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv" NAME_WE)
add_dependencies(pckg_generate_messages_cpp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv" NAME_WE)
add_dependencies(pckg_generate_messages_cpp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv" NAME_WE)
add_dependencies(pckg_generate_messages_cpp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv" NAME_WE)
add_dependencies(pckg_generate_messages_cpp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv" NAME_WE)
add_dependencies(pckg_generate_messages_cpp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv" NAME_WE)
add_dependencies(pckg_generate_messages_cpp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv" NAME_WE)
add_dependencies(pckg_generate_messages_cpp _pckg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pckg_gencpp)
add_dependencies(pckg_gencpp pckg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pckg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
)
_generate_srv_eus(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
)
_generate_srv_eus(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
)
_generate_srv_eus(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
)
_generate_srv_eus(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
)
_generate_srv_eus(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
)
_generate_srv_eus(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
)

### Generating Module File
_generate_module_eus(pckg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pckg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pckg_generate_messages pckg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv" NAME_WE)
add_dependencies(pckg_generate_messages_eus _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv" NAME_WE)
add_dependencies(pckg_generate_messages_eus _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv" NAME_WE)
add_dependencies(pckg_generate_messages_eus _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv" NAME_WE)
add_dependencies(pckg_generate_messages_eus _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv" NAME_WE)
add_dependencies(pckg_generate_messages_eus _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv" NAME_WE)
add_dependencies(pckg_generate_messages_eus _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv" NAME_WE)
add_dependencies(pckg_generate_messages_eus _pckg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pckg_geneus)
add_dependencies(pckg_geneus pckg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pckg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
)
_generate_srv_lisp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
)
_generate_srv_lisp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
)
_generate_srv_lisp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
)
_generate_srv_lisp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
)
_generate_srv_lisp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
)
_generate_srv_lisp(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
)

### Generating Module File
_generate_module_lisp(pckg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pckg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pckg_generate_messages pckg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv" NAME_WE)
add_dependencies(pckg_generate_messages_lisp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv" NAME_WE)
add_dependencies(pckg_generate_messages_lisp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv" NAME_WE)
add_dependencies(pckg_generate_messages_lisp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv" NAME_WE)
add_dependencies(pckg_generate_messages_lisp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv" NAME_WE)
add_dependencies(pckg_generate_messages_lisp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv" NAME_WE)
add_dependencies(pckg_generate_messages_lisp _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv" NAME_WE)
add_dependencies(pckg_generate_messages_lisp _pckg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pckg_genlisp)
add_dependencies(pckg_genlisp pckg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pckg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
)
_generate_srv_nodejs(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
)
_generate_srv_nodejs(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
)
_generate_srv_nodejs(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
)
_generate_srv_nodejs(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
)
_generate_srv_nodejs(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
)
_generate_srv_nodejs(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
)

### Generating Module File
_generate_module_nodejs(pckg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pckg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pckg_generate_messages pckg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv" NAME_WE)
add_dependencies(pckg_generate_messages_nodejs _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv" NAME_WE)
add_dependencies(pckg_generate_messages_nodejs _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv" NAME_WE)
add_dependencies(pckg_generate_messages_nodejs _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv" NAME_WE)
add_dependencies(pckg_generate_messages_nodejs _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv" NAME_WE)
add_dependencies(pckg_generate_messages_nodejs _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv" NAME_WE)
add_dependencies(pckg_generate_messages_nodejs _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv" NAME_WE)
add_dependencies(pckg_generate_messages_nodejs _pckg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pckg_gennodejs)
add_dependencies(pckg_gennodejs pckg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pckg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
)
_generate_srv_py(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
)
_generate_srv_py(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
)
_generate_srv_py(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
)
_generate_srv_py(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
)
_generate_srv_py(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
)
_generate_srv_py(pckg
  "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
)

### Generating Module File
_generate_module_py(pckg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pckg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pckg_generate_messages pckg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_traj.srv" NAME_WE)
add_dependencies(pckg_generate_messages_py _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_single.srv" NAME_WE)
add_dependencies(pckg_generate_messages_py _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_group.srv" NAME_WE)
add_dependencies(pckg_generate_messages_py _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu.srv" NAME_WE)
add_dependencies(pckg_generate_messages_py _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/move_pos_simu_rand.srv" NAME_WE)
add_dependencies(pckg_generate_messages_py _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_frame.srv" NAME_WE)
add_dependencies(pckg_generate_messages_py _pckg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/pckg/srv/track_coord.srv" NAME_WE)
add_dependencies(pckg_generate_messages_py _pckg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pckg_genpy)
add_dependencies(pckg_genpy pckg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pckg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pckg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET interbotix_xs_msgs_generate_messages_cpp)
  add_dependencies(pckg_generate_messages_cpp interbotix_xs_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pckg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pckg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(pckg_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(pckg_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(pckg_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(pckg_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET gazebo_msgs_generate_messages_cpp)
  add_dependencies(pckg_generate_messages_cpp gazebo_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pckg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET interbotix_xs_msgs_generate_messages_eus)
  add_dependencies(pckg_generate_messages_eus interbotix_xs_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pckg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pckg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(pckg_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(pckg_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(pckg_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(pckg_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET gazebo_msgs_generate_messages_eus)
  add_dependencies(pckg_generate_messages_eus gazebo_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pckg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET interbotix_xs_msgs_generate_messages_lisp)
  add_dependencies(pckg_generate_messages_lisp interbotix_xs_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pckg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pckg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(pckg_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(pckg_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(pckg_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(pckg_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET gazebo_msgs_generate_messages_lisp)
  add_dependencies(pckg_generate_messages_lisp gazebo_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pckg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET interbotix_xs_msgs_generate_messages_nodejs)
  add_dependencies(pckg_generate_messages_nodejs interbotix_xs_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pckg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pckg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(pckg_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(pckg_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(pckg_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(pckg_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET gazebo_msgs_generate_messages_nodejs)
  add_dependencies(pckg_generate_messages_nodejs gazebo_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pckg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET interbotix_xs_msgs_generate_messages_py)
  add_dependencies(pckg_generate_messages_py interbotix_xs_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pckg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pckg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(pckg_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(pckg_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(pckg_generate_messages_py visualization_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(pckg_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET gazebo_msgs_generate_messages_py)
  add_dependencies(pckg_generate_messages_py gazebo_msgs_generate_messages_py)
endif()
