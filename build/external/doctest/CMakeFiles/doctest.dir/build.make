# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\bonis\source\repos\Project1\Project1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\bonis\source\repos\Project1\Project1\build

# Include any dependencies generated for this target.
include external/doctest/CMakeFiles/doctest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/doctest/CMakeFiles/doctest.dir/compiler_depend.make

# Include the progress variables for this target.
include external/doctest/CMakeFiles/doctest.dir/progress.make

# Include the compile flags for this target's objects.
include external/doctest/CMakeFiles/doctest.dir/flags.make

external/doctest/CMakeFiles/doctest.dir/doctest.cpp.obj: external/doctest/CMakeFiles/doctest.dir/flags.make
external/doctest/CMakeFiles/doctest.dir/doctest.cpp.obj: external/doctest/CMakeFiles/doctest.dir/includes_CXX.rsp
external/doctest/CMakeFiles/doctest.dir/doctest.cpp.obj: C:/Users/bonis/source/repos/Project1/Project1/external/doctest/doctest.cpp
external/doctest/CMakeFiles/doctest.dir/doctest.cpp.obj: external/doctest/CMakeFiles/doctest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\bonis\source\repos\Project1\Project1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/doctest/CMakeFiles/doctest.dir/doctest.cpp.obj"
	cd /d C:\Users\bonis\source\repos\Project1\Project1\build\external\doctest && C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/doctest/CMakeFiles/doctest.dir/doctest.cpp.obj -MF CMakeFiles\doctest.dir\doctest.cpp.obj.d -o CMakeFiles\doctest.dir\doctest.cpp.obj -c C:\Users\bonis\source\repos\Project1\Project1\external\doctest\doctest.cpp

external/doctest/CMakeFiles/doctest.dir/doctest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/doctest.dir/doctest.cpp.i"
	cd /d C:\Users\bonis\source\repos\Project1\Project1\build\external\doctest && C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\bonis\source\repos\Project1\Project1\external\doctest\doctest.cpp > CMakeFiles\doctest.dir\doctest.cpp.i

external/doctest/CMakeFiles/doctest.dir/doctest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/doctest.dir/doctest.cpp.s"
	cd /d C:\Users\bonis\source\repos\Project1\Project1\build\external\doctest && C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\bonis\source\repos\Project1\Project1\external\doctest\doctest.cpp -o CMakeFiles\doctest.dir\doctest.cpp.s

# Object files for target doctest
doctest_OBJECTS = \
"CMakeFiles/doctest.dir/doctest.cpp.obj"

# External object files for target doctest
doctest_EXTERNAL_OBJECTS =

external/doctest/libdoctest.a: external/doctest/CMakeFiles/doctest.dir/doctest.cpp.obj
external/doctest/libdoctest.a: external/doctest/CMakeFiles/doctest.dir/build.make
external/doctest/libdoctest.a: external/doctest/CMakeFiles/doctest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\bonis\source\repos\Project1\Project1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdoctest.a"
	cd /d C:\Users\bonis\source\repos\Project1\Project1\build\external\doctest && $(CMAKE_COMMAND) -P CMakeFiles\doctest.dir\cmake_clean_target.cmake
	cd /d C:\Users\bonis\source\repos\Project1\Project1\build\external\doctest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\doctest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/doctest/CMakeFiles/doctest.dir/build: external/doctest/libdoctest.a
.PHONY : external/doctest/CMakeFiles/doctest.dir/build

external/doctest/CMakeFiles/doctest.dir/clean:
	cd /d C:\Users\bonis\source\repos\Project1\Project1\build\external\doctest && $(CMAKE_COMMAND) -P CMakeFiles\doctest.dir\cmake_clean.cmake
.PHONY : external/doctest/CMakeFiles/doctest.dir/clean

external/doctest/CMakeFiles/doctest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\bonis\source\repos\Project1\Project1 C:\Users\bonis\source\repos\Project1\Project1\external\doctest C:\Users\bonis\source\repos\Project1\Project1\build C:\Users\bonis\source\repos\Project1\Project1\build\external\doctest C:\Users\bonis\source\repos\Project1\Project1\build\external\doctest\CMakeFiles\doctest.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : external/doctest/CMakeFiles/doctest.dir/depend

