# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/purplelime/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6911.21/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/purplelime/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.6911.21/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/purplelime/tp_project_1sem/NFS-Next-Gen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/purplelime/tp_project_1sem/NFS-Next-Gen

# Include any dependencies generated for this target.
include test/CMakeFiles/runTest.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/runTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/runTest.dir/flags.make

test/CMakeFiles/runTest.dir/test.cpp.o: test/CMakeFiles/runTest.dir/flags.make
test/CMakeFiles/runTest.dir/test.cpp.o: test/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/purplelime/tp_project_1sem/NFS-Next-Gen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/runTest.dir/test.cpp.o"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runTest.dir/test.cpp.o -c /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/test.cpp

test/CMakeFiles/runTest.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTest.dir/test.cpp.i"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/test.cpp > CMakeFiles/runTest.dir/test.cpp.i

test/CMakeFiles/runTest.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTest.dir/test.cpp.s"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/test.cpp -o CMakeFiles/runTest.dir/test.cpp.s

test/CMakeFiles/runTest.dir/collision/collisionNaive.cpp.o: test/CMakeFiles/runTest.dir/flags.make
test/CMakeFiles/runTest.dir/collision/collisionNaive.cpp.o: test/collision/collisionNaive.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/purplelime/tp_project_1sem/NFS-Next-Gen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/runTest.dir/collision/collisionNaive.cpp.o"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runTest.dir/collision/collisionNaive.cpp.o -c /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/collision/collisionNaive.cpp

test/CMakeFiles/runTest.dir/collision/collisionNaive.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTest.dir/collision/collisionNaive.cpp.i"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/collision/collisionNaive.cpp > CMakeFiles/runTest.dir/collision/collisionNaive.cpp.i

test/CMakeFiles/runTest.dir/collision/collisionNaive.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTest.dir/collision/collisionNaive.cpp.s"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/collision/collisionNaive.cpp -o CMakeFiles/runTest.dir/collision/collisionNaive.cpp.s

test/CMakeFiles/runTest.dir/collision/collisionTest.cpp.o: test/CMakeFiles/runTest.dir/flags.make
test/CMakeFiles/runTest.dir/collision/collisionTest.cpp.o: test/collision/collisionTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/purplelime/tp_project_1sem/NFS-Next-Gen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/runTest.dir/collision/collisionTest.cpp.o"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runTest.dir/collision/collisionTest.cpp.o -c /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/collision/collisionTest.cpp

test/CMakeFiles/runTest.dir/collision/collisionTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTest.dir/collision/collisionTest.cpp.i"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/collision/collisionTest.cpp > CMakeFiles/runTest.dir/collision/collisionTest.cpp.i

test/CMakeFiles/runTest.dir/collision/collisionTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTest.dir/collision/collisionTest.cpp.s"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/collision/collisionTest.cpp -o CMakeFiles/runTest.dir/collision/collisionTest.cpp.s

test/CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.o: test/CMakeFiles/runTest.dir/flags.make
test/CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.o: test/dataBase/dataBaseTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/purplelime/tp_project_1sem/NFS-Next-Gen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.o"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.o -c /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/dataBase/dataBaseTest.cpp

test/CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.i"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/dataBase/dataBaseTest.cpp > CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.i

test/CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.s"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/dataBase/dataBaseTest.cpp -o CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.s

test/CMakeFiles/runTest.dir/gameElements/gameElements.cpp.o: test/CMakeFiles/runTest.dir/flags.make
test/CMakeFiles/runTest.dir/gameElements/gameElements.cpp.o: test/gameElements/gameElements.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/purplelime/tp_project_1sem/NFS-Next-Gen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/CMakeFiles/runTest.dir/gameElements/gameElements.cpp.o"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runTest.dir/gameElements/gameElements.cpp.o -c /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/gameElements/gameElements.cpp

test/CMakeFiles/runTest.dir/gameElements/gameElements.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTest.dir/gameElements/gameElements.cpp.i"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/gameElements/gameElements.cpp > CMakeFiles/runTest.dir/gameElements/gameElements.cpp.i

test/CMakeFiles/runTest.dir/gameElements/gameElements.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTest.dir/gameElements/gameElements.cpp.s"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/gameElements/gameElements.cpp -o CMakeFiles/runTest.dir/gameElements/gameElements.cpp.s

test/CMakeFiles/runTest.dir/graphic/graphicTest.cpp.o: test/CMakeFiles/runTest.dir/flags.make
test/CMakeFiles/runTest.dir/graphic/graphicTest.cpp.o: test/graphic/graphicTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/purplelime/tp_project_1sem/NFS-Next-Gen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object test/CMakeFiles/runTest.dir/graphic/graphicTest.cpp.o"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runTest.dir/graphic/graphicTest.cpp.o -c /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/graphic/graphicTest.cpp

test/CMakeFiles/runTest.dir/graphic/graphicTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTest.dir/graphic/graphicTest.cpp.i"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/graphic/graphicTest.cpp > CMakeFiles/runTest.dir/graphic/graphicTest.cpp.i

test/CMakeFiles/runTest.dir/graphic/graphicTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTest.dir/graphic/graphicTest.cpp.s"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/graphic/graphicTest.cpp -o CMakeFiles/runTest.dir/graphic/graphicTest.cpp.s

test/CMakeFiles/runTest.dir/wrap/wrapTest.cpp.o: test/CMakeFiles/runTest.dir/flags.make
test/CMakeFiles/runTest.dir/wrap/wrapTest.cpp.o: test/wrap/wrapTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/purplelime/tp_project_1sem/NFS-Next-Gen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object test/CMakeFiles/runTest.dir/wrap/wrapTest.cpp.o"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runTest.dir/wrap/wrapTest.cpp.o -c /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/wrap/wrapTest.cpp

test/CMakeFiles/runTest.dir/wrap/wrapTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTest.dir/wrap/wrapTest.cpp.i"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/wrap/wrapTest.cpp > CMakeFiles/runTest.dir/wrap/wrapTest.cpp.i

test/CMakeFiles/runTest.dir/wrap/wrapTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTest.dir/wrap/wrapTest.cpp.s"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/wrap/wrapTest.cpp -o CMakeFiles/runTest.dir/wrap/wrapTest.cpp.s

# Object files for target runTest
runTest_OBJECTS = \
"CMakeFiles/runTest.dir/test.cpp.o" \
"CMakeFiles/runTest.dir/collision/collisionNaive.cpp.o" \
"CMakeFiles/runTest.dir/collision/collisionTest.cpp.o" \
"CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.o" \
"CMakeFiles/runTest.dir/gameElements/gameElements.cpp.o" \
"CMakeFiles/runTest.dir/graphic/graphicTest.cpp.o" \
"CMakeFiles/runTest.dir/wrap/wrapTest.cpp.o"

# External object files for target runTest
runTest_EXTERNAL_OBJECTS =

test/runTest: test/CMakeFiles/runTest.dir/test.cpp.o
test/runTest: test/CMakeFiles/runTest.dir/collision/collisionNaive.cpp.o
test/runTest: test/CMakeFiles/runTest.dir/collision/collisionTest.cpp.o
test/runTest: test/CMakeFiles/runTest.dir/dataBase/dataBaseTest.cpp.o
test/runTest: test/CMakeFiles/runTest.dir/gameElements/gameElements.cpp.o
test/runTest: test/CMakeFiles/runTest.dir/graphic/graphicTest.cpp.o
test/runTest: test/CMakeFiles/runTest.dir/wrap/wrapTest.cpp.o
test/runTest: test/CMakeFiles/runTest.dir/build.make
test/runTest: lib/libgtestd.a
test/runTest: lib/libgtest_maind.a
test/runTest: lib/libgmockd.a
test/runTest: lib/libgmock_maind.a
test/runTest: test/libSQLite.a
test/runTest: lib/libgmockd.a
test/runTest: lib/libgtestd.a
test/runTest: test/CMakeFiles/runTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/purplelime/tp_project_1sem/NFS-Next-Gen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable runTest"
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/runTest.dir/build: test/runTest

.PHONY : test/CMakeFiles/runTest.dir/build

test/CMakeFiles/runTest.dir/clean:
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen/test && $(CMAKE_COMMAND) -P CMakeFiles/runTest.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/runTest.dir/clean

test/CMakeFiles/runTest.dir/depend:
	cd /home/purplelime/tp_project_1sem/NFS-Next-Gen && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/purplelime/tp_project_1sem/NFS-Next-Gen /home/purplelime/tp_project_1sem/NFS-Next-Gen/test /home/purplelime/tp_project_1sem/NFS-Next-Gen /home/purplelime/tp_project_1sem/NFS-Next-Gen/test /home/purplelime/tp_project_1sem/NFS-Next-Gen/test/CMakeFiles/runTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/runTest.dir/depend

