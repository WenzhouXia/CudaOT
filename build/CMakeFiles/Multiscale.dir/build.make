# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/xiawenzhou/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/xiawenzhou/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build

# Include any dependencies generated for this target.
include CMakeFiles/Multiscale.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Multiscale.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Multiscale.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Multiscale.dir/flags.make

CMakeFiles/Multiscale.dir/Multiscale.cpp.o: CMakeFiles/Multiscale.dir/flags.make
CMakeFiles/Multiscale.dir/Multiscale.cpp.o: /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Multiscale.cpp
CMakeFiles/Multiscale.dir/Multiscale.cpp.o: CMakeFiles/Multiscale.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Multiscale.dir/Multiscale.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Multiscale.dir/Multiscale.cpp.o -MF CMakeFiles/Multiscale.dir/Multiscale.cpp.o.d -o CMakeFiles/Multiscale.dir/Multiscale.cpp.o -c /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Multiscale.cpp

CMakeFiles/Multiscale.dir/Multiscale.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Multiscale.dir/Multiscale.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Multiscale.cpp > CMakeFiles/Multiscale.dir/Multiscale.cpp.i

CMakeFiles/Multiscale.dir/Multiscale.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Multiscale.dir/Multiscale.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/Multiscale.cpp -o CMakeFiles/Multiscale.dir/Multiscale.cpp.s

# Object files for target Multiscale
Multiscale_OBJECTS = \
"CMakeFiles/Multiscale.dir/Multiscale.cpp.o"

# External object files for target Multiscale
Multiscale_EXTERNAL_OBJECTS =

Multiscale: CMakeFiles/Multiscale.dir/Multiscale.cpp.o
Multiscale: CMakeFiles/Multiscale.dir/build.make
Multiscale: Common/libCommon.a
Multiscale: Sinkhorn/libSinkhorn.a
Multiscale: CMakeFiles/Multiscale.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Multiscale"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Multiscale.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Multiscale.dir/build: Multiscale
.PHONY : CMakeFiles/Multiscale.dir/build

CMakeFiles/Multiscale.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Multiscale.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Multiscale.dir/clean

CMakeFiles/Multiscale.dir/depend:
	cd /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build /home/xiawenzhou/Documents/XiaWenzhou/OptimalTransport/CudaOT/build/CMakeFiles/Multiscale.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Multiscale.dir/depend
