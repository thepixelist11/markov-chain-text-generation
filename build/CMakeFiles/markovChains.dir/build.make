# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ben/Documents/programming/markovChains

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ben/Documents/programming/markovChains/build

# Include any dependencies generated for this target.
include CMakeFiles/markovChains.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/markovChains.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/markovChains.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/markovChains.dir/flags.make

CMakeFiles/markovChains.dir/main.cpp.o: CMakeFiles/markovChains.dir/flags.make
CMakeFiles/markovChains.dir/main.cpp.o: /home/ben/Documents/programming/markovChains/main.cpp
CMakeFiles/markovChains.dir/main.cpp.o: CMakeFiles/markovChains.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ben/Documents/programming/markovChains/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/markovChains.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/markovChains.dir/main.cpp.o -MF CMakeFiles/markovChains.dir/main.cpp.o.d -o CMakeFiles/markovChains.dir/main.cpp.o -c /home/ben/Documents/programming/markovChains/main.cpp

CMakeFiles/markovChains.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/markovChains.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/programming/markovChains/main.cpp > CMakeFiles/markovChains.dir/main.cpp.i

CMakeFiles/markovChains.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/markovChains.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/programming/markovChains/main.cpp -o CMakeFiles/markovChains.dir/main.cpp.s

CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o: CMakeFiles/markovChains.dir/flags.make
CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o: /home/ben/Documents/programming/markovChains/markovChain/markovChain.cpp
CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o: CMakeFiles/markovChains.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ben/Documents/programming/markovChains/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o -MF CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o.d -o CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o -c /home/ben/Documents/programming/markovChains/markovChain/markovChain.cpp

CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/Documents/programming/markovChains/markovChain/markovChain.cpp > CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.i

CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/Documents/programming/markovChains/markovChain/markovChain.cpp -o CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.s

# Object files for target markovChains
markovChains_OBJECTS = \
"CMakeFiles/markovChains.dir/main.cpp.o" \
"CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o"

# External object files for target markovChains
markovChains_EXTERNAL_OBJECTS =

/home/ben/Documents/programming/markovChains/bin/markovChains: CMakeFiles/markovChains.dir/main.cpp.o
/home/ben/Documents/programming/markovChains/bin/markovChains: CMakeFiles/markovChains.dir/markovChain/markovChain.cpp.o
/home/ben/Documents/programming/markovChains/bin/markovChains: CMakeFiles/markovChains.dir/build.make
/home/ben/Documents/programming/markovChains/bin/markovChains: CMakeFiles/markovChains.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ben/Documents/programming/markovChains/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/ben/Documents/programming/markovChains/bin/markovChains"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/markovChains.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/markovChains.dir/build: /home/ben/Documents/programming/markovChains/bin/markovChains
.PHONY : CMakeFiles/markovChains.dir/build

CMakeFiles/markovChains.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/markovChains.dir/cmake_clean.cmake
.PHONY : CMakeFiles/markovChains.dir/clean

CMakeFiles/markovChains.dir/depend:
	cd /home/ben/Documents/programming/markovChains/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/Documents/programming/markovChains /home/ben/Documents/programming/markovChains /home/ben/Documents/programming/markovChains/build /home/ben/Documents/programming/markovChains/build /home/ben/Documents/programming/markovChains/build/CMakeFiles/markovChains.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/markovChains.dir/depend
