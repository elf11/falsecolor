# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/elf/falsecolor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elf/falsecolor

# Include any dependencies generated for this target.
include CMakeFiles/rgb-optional-lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rgb-optional-lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rgb-optional-lib.dir/flags.make

CMakeFiles/rgb-optional-lib.dir/optional.cpp.o: CMakeFiles/rgb-optional-lib.dir/flags.make
CMakeFiles/rgb-optional-lib.dir/optional.cpp.o: optional.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/elf/falsecolor/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rgb-optional-lib.dir/optional.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rgb-optional-lib.dir/optional.cpp.o -c /home/elf/falsecolor/optional.cpp

CMakeFiles/rgb-optional-lib.dir/optional.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rgb-optional-lib.dir/optional.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/elf/falsecolor/optional.cpp > CMakeFiles/rgb-optional-lib.dir/optional.cpp.i

CMakeFiles/rgb-optional-lib.dir/optional.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rgb-optional-lib.dir/optional.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/elf/falsecolor/optional.cpp -o CMakeFiles/rgb-optional-lib.dir/optional.cpp.s

CMakeFiles/rgb-optional-lib.dir/optional.cpp.o.requires:
.PHONY : CMakeFiles/rgb-optional-lib.dir/optional.cpp.o.requires

CMakeFiles/rgb-optional-lib.dir/optional.cpp.o.provides: CMakeFiles/rgb-optional-lib.dir/optional.cpp.o.requires
	$(MAKE) -f CMakeFiles/rgb-optional-lib.dir/build.make CMakeFiles/rgb-optional-lib.dir/optional.cpp.o.provides.build
.PHONY : CMakeFiles/rgb-optional-lib.dir/optional.cpp.o.provides

CMakeFiles/rgb-optional-lib.dir/optional.cpp.o.provides.build: CMakeFiles/rgb-optional-lib.dir/optional.cpp.o

# Object files for target rgb-optional-lib
rgb__optional__lib_OBJECTS = \
"CMakeFiles/rgb-optional-lib.dir/optional.cpp.o"

# External object files for target rgb-optional-lib
rgb__optional__lib_EXTERNAL_OBJECTS =

librgb-optional-lib.a: CMakeFiles/rgb-optional-lib.dir/optional.cpp.o
librgb-optional-lib.a: CMakeFiles/rgb-optional-lib.dir/build.make
librgb-optional-lib.a: CMakeFiles/rgb-optional-lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library librgb-optional-lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/rgb-optional-lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rgb-optional-lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rgb-optional-lib.dir/build: librgb-optional-lib.a
.PHONY : CMakeFiles/rgb-optional-lib.dir/build

CMakeFiles/rgb-optional-lib.dir/requires: CMakeFiles/rgb-optional-lib.dir/optional.cpp.o.requires
.PHONY : CMakeFiles/rgb-optional-lib.dir/requires

CMakeFiles/rgb-optional-lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rgb-optional-lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rgb-optional-lib.dir/clean

CMakeFiles/rgb-optional-lib.dir/depend:
	cd /home/elf/falsecolor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elf/falsecolor /home/elf/falsecolor /home/elf/falsecolor /home/elf/falsecolor /home/elf/falsecolor/CMakeFiles/rgb-optional-lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rgb-optional-lib.dir/depend

