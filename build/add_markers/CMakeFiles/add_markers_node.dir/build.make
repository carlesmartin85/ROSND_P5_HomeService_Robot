# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/workspace/build

# Include any dependencies generated for this target.
include add_markers/CMakeFiles/add_markers_node.dir/depend.make

# Include the progress variables for this target.
include add_markers/CMakeFiles/add_markers_node.dir/progress.make

# Include the compile flags for this target's objects.
include add_markers/CMakeFiles/add_markers_node.dir/flags.make

add_markers/CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.o: add_markers/CMakeFiles/add_markers_node.dir/flags.make
add_markers/CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.o: /home/workspace/src/add_markers/src/add_markers_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object add_markers/CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.o"
	cd /home/workspace/build/add_markers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.o -c /home/workspace/src/add_markers/src/add_markers_node.cpp

add_markers/CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.i"
	cd /home/workspace/build/add_markers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/src/add_markers/src/add_markers_node.cpp > CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.i

add_markers/CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.s"
	cd /home/workspace/build/add_markers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/src/add_markers/src/add_markers_node.cpp -o CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.s

add_markers/CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.o: add_markers/CMakeFiles/add_markers_node.dir/flags.make
add_markers/CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.o: /home/workspace/src/add_markers/include/MarkerAdder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object add_markers/CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.o"
	cd /home/workspace/build/add_markers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.o -c /home/workspace/src/add_markers/include/MarkerAdder.cpp

add_markers/CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.i"
	cd /home/workspace/build/add_markers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/src/add_markers/include/MarkerAdder.cpp > CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.i

add_markers/CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.s"
	cd /home/workspace/build/add_markers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/src/add_markers/include/MarkerAdder.cpp -o CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.s

add_markers/CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.o: add_markers/CMakeFiles/add_markers_node.dir/flags.make
add_markers/CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.o: /home/workspace/src/add_markers/include/ConstantMarkerAdder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object add_markers/CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.o"
	cd /home/workspace/build/add_markers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.o -c /home/workspace/src/add_markers/include/ConstantMarkerAdder.cpp

add_markers/CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.i"
	cd /home/workspace/build/add_markers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/src/add_markers/include/ConstantMarkerAdder.cpp > CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.i

add_markers/CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.s"
	cd /home/workspace/build/add_markers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/src/add_markers/include/ConstantMarkerAdder.cpp -o CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.s

# Object files for target add_markers_node
add_markers_node_OBJECTS = \
"CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.o" \
"CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.o" \
"CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.o"

# External object files for target add_markers_node
add_markers_node_EXTERNAL_OBJECTS =

/home/workspace/devel/lib/add_markers/add_markers_node: add_markers/CMakeFiles/add_markers_node.dir/src/add_markers_node.cpp.o
/home/workspace/devel/lib/add_markers/add_markers_node: add_markers/CMakeFiles/add_markers_node.dir/include/MarkerAdder.cpp.o
/home/workspace/devel/lib/add_markers/add_markers_node: add_markers/CMakeFiles/add_markers_node.dir/include/ConstantMarkerAdder.cpp.o
/home/workspace/devel/lib/add_markers/add_markers_node: add_markers/CMakeFiles/add_markers_node.dir/build.make
/home/workspace/devel/lib/add_markers/add_markers_node: /opt/ros/kinetic/lib/libroscpp.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/workspace/devel/lib/add_markers/add_markers_node: /opt/ros/kinetic/lib/librosconsole.so
/home/workspace/devel/lib/add_markers/add_markers_node: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/workspace/devel/lib/add_markers/add_markers_node: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/workspace/devel/lib/add_markers/add_markers_node: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/workspace/devel/lib/add_markers/add_markers_node: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/workspace/devel/lib/add_markers/add_markers_node: /opt/ros/kinetic/lib/librostime.so
/home/workspace/devel/lib/add_markers/add_markers_node: /opt/ros/kinetic/lib/libcpp_common.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/workspace/devel/lib/add_markers/add_markers_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/workspace/devel/lib/add_markers/add_markers_node: add_markers/CMakeFiles/add_markers_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable /home/workspace/devel/lib/add_markers/add_markers_node"
	cd /home/workspace/build/add_markers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/add_markers_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
add_markers/CMakeFiles/add_markers_node.dir/build: /home/workspace/devel/lib/add_markers/add_markers_node

.PHONY : add_markers/CMakeFiles/add_markers_node.dir/build

add_markers/CMakeFiles/add_markers_node.dir/clean:
	cd /home/workspace/build/add_markers && $(CMAKE_COMMAND) -P CMakeFiles/add_markers_node.dir/cmake_clean.cmake
.PHONY : add_markers/CMakeFiles/add_markers_node.dir/clean

add_markers/CMakeFiles/add_markers_node.dir/depend:
	cd /home/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/workspace/src /home/workspace/src/add_markers /home/workspace/build /home/workspace/build/add_markers /home/workspace/build/add_markers/CMakeFiles/add_markers_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : add_markers/CMakeFiles/add_markers_node.dir/depend

