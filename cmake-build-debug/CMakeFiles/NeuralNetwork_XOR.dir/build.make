# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hinsdevelopper/git/NeuralNetwork_XOR

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/NeuralNetwork_XOR.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NeuralNetwork_XOR.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NeuralNetwork_XOR.dir/flags.make

CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o: CMakeFiles/NeuralNetwork_XOR.dir/flags.make
CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o -c /Users/hinsdevelopper/git/NeuralNetwork_XOR/main.cpp

CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hinsdevelopper/git/NeuralNetwork_XOR/main.cpp > CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.i

CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hinsdevelopper/git/NeuralNetwork_XOR/main.cpp -o CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.s

CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o.requires

CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o.provides: CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/NeuralNetwork_XOR.dir/build.make CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o.provides

CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o.provides.build: CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o


CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o: CMakeFiles/NeuralNetwork_XOR.dir/flags.make
CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o: ../Training/TrainingData.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o -c /Users/hinsdevelopper/git/NeuralNetwork_XOR/Training/TrainingData.cpp

CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hinsdevelopper/git/NeuralNetwork_XOR/Training/TrainingData.cpp > CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.i

CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hinsdevelopper/git/NeuralNetwork_XOR/Training/TrainingData.cpp -o CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.s

CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o.requires:

.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o.requires

CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o.provides: CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o.requires
	$(MAKE) -f CMakeFiles/NeuralNetwork_XOR.dir/build.make CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o.provides.build
.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o.provides

CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o.provides.build: CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o


CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o: CMakeFiles/NeuralNetwork_XOR.dir/flags.make
CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o: ../NeuralNetwork/CLNeuralNetwork.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o -c /Users/hinsdevelopper/git/NeuralNetwork_XOR/NeuralNetwork/CLNeuralNetwork.cpp

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hinsdevelopper/git/NeuralNetwork_XOR/NeuralNetwork/CLNeuralNetwork.cpp > CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.i

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hinsdevelopper/git/NeuralNetwork_XOR/NeuralNetwork/CLNeuralNetwork.cpp -o CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.s

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o.requires:

.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o.requires

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o.provides: CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o.requires
	$(MAKE) -f CMakeFiles/NeuralNetwork_XOR.dir/build.make CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o.provides.build
.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o.provides

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o.provides.build: CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o


CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o: CMakeFiles/NeuralNetwork_XOR.dir/flags.make
CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o: ../NeuralNetwork/CLNeuron.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o -c /Users/hinsdevelopper/git/NeuralNetwork_XOR/NeuralNetwork/CLNeuron.cpp

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hinsdevelopper/git/NeuralNetwork_XOR/NeuralNetwork/CLNeuron.cpp > CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.i

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hinsdevelopper/git/NeuralNetwork_XOR/NeuralNetwork/CLNeuron.cpp -o CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.s

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o.requires:

.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o.requires

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o.provides: CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o.requires
	$(MAKE) -f CMakeFiles/NeuralNetwork_XOR.dir/build.make CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o.provides.build
.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o.provides

CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o.provides.build: CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o


# Object files for target NeuralNetwork_XOR
NeuralNetwork_XOR_OBJECTS = \
"CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o" \
"CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o" \
"CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o" \
"CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o"

# External object files for target NeuralNetwork_XOR
NeuralNetwork_XOR_EXTERNAL_OBJECTS =

NeuralNetwork_XOR: CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o
NeuralNetwork_XOR: CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o
NeuralNetwork_XOR: CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o
NeuralNetwork_XOR: CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o
NeuralNetwork_XOR: CMakeFiles/NeuralNetwork_XOR.dir/build.make
NeuralNetwork_XOR: CMakeFiles/NeuralNetwork_XOR.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable NeuralNetwork_XOR"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NeuralNetwork_XOR.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NeuralNetwork_XOR.dir/build: NeuralNetwork_XOR

.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/build

CMakeFiles/NeuralNetwork_XOR.dir/requires: CMakeFiles/NeuralNetwork_XOR.dir/main.cpp.o.requires
CMakeFiles/NeuralNetwork_XOR.dir/requires: CMakeFiles/NeuralNetwork_XOR.dir/Training/TrainingData.cpp.o.requires
CMakeFiles/NeuralNetwork_XOR.dir/requires: CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuralNetwork.cpp.o.requires
CMakeFiles/NeuralNetwork_XOR.dir/requires: CMakeFiles/NeuralNetwork_XOR.dir/NeuralNetwork/CLNeuron.cpp.o.requires

.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/requires

CMakeFiles/NeuralNetwork_XOR.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NeuralNetwork_XOR.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/clean

CMakeFiles/NeuralNetwork_XOR.dir/depend:
	cd /Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hinsdevelopper/git/NeuralNetwork_XOR /Users/hinsdevelopper/git/NeuralNetwork_XOR /Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug /Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug /Users/hinsdevelopper/git/NeuralNetwork_XOR/cmake-build-debug/CMakeFiles/NeuralNetwork_XOR.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NeuralNetwork_XOR.dir/depend

