# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/ecl_lite/ecl_io

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io

# Include any dependencies generated for this target.
include src/examples/CMakeFiles/ecl_demo_sockets.dir/depend.make

# Include the progress variables for this target.
include src/examples/CMakeFiles/ecl_demo_sockets.dir/progress.make

# Include the compile flags for this target's objects.
include src/examples/CMakeFiles/ecl_demo_sockets.dir/flags.make

src/examples/CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.o: src/examples/CMakeFiles/ecl_demo_sockets.dir/flags.make
src/examples/CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.o: /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/ecl_lite/ecl_io/src/examples/sockets.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/examples/CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.o"
	cd /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/src/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.o -c /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/ecl_lite/ecl_io/src/examples/sockets.cpp

src/examples/CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.i"
	cd /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/src/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/ecl_lite/ecl_io/src/examples/sockets.cpp > CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.i

src/examples/CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.s"
	cd /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/src/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/ecl_lite/ecl_io/src/examples/sockets.cpp -o CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.s

# Object files for target ecl_demo_sockets
ecl_demo_sockets_OBJECTS = \
"CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.o"

# External object files for target ecl_demo_sockets
ecl_demo_sockets_EXTERNAL_OBJECTS =

/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_io/lib/ecl_io/ecl_demo_sockets: src/examples/CMakeFiles/ecl_demo_sockets.dir/sockets.cpp.o
/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_io/lib/ecl_io/ecl_demo_sockets: src/examples/CMakeFiles/ecl_demo_sockets.dir/build.make
/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_io/lib/ecl_io/ecl_demo_sockets: /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_io/lib/libecl_io.so
/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_io/lib/ecl_io/ecl_demo_sockets: /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_errors/lib/libecl_errors.so
/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_io/lib/ecl_io/ecl_demo_sockets: src/examples/CMakeFiles/ecl_demo_sockets.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_io/lib/ecl_io/ecl_demo_sockets"
	cd /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/src/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ecl_demo_sockets.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/examples/CMakeFiles/ecl_demo_sockets.dir/build: /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/devel/.private/ecl_io/lib/ecl_io/ecl_demo_sockets

.PHONY : src/examples/CMakeFiles/ecl_demo_sockets.dir/build

src/examples/CMakeFiles/ecl_demo_sockets.dir/clean:
	cd /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/src/examples && $(CMAKE_COMMAND) -P CMakeFiles/ecl_demo_sockets.dir/cmake_clean.cmake
.PHONY : src/examples/CMakeFiles/ecl_demo_sockets.dir/clean

src/examples/CMakeFiles/ecl_demo_sockets.dir/depend:
	cd /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/ecl_lite/ecl_io /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/ecl_lite/ecl_io/src/examples /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/src/examples /home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/ecl_io/src/examples/CMakeFiles/ecl_demo_sockets.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/examples/CMakeFiles/ecl_demo_sockets.dir/depend

