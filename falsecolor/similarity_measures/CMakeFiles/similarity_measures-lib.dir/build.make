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
include falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/depend.make

# Include the progress variables for this target.
include falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/progress.make

# Include the compile flags for this target's objects.
include falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/flags.make

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/flags.make
falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o: similarity_measures/command_similarity_measure.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/elf/falsecolor/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o -c /home/elf/falsecolor/similarity_measures/command_similarity_measure.cpp

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.i"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/elf/falsecolor/similarity_measures/command_similarity_measure.cpp > CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.i

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.s"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/elf/falsecolor/similarity_measures/command_similarity_measure.cpp -o CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.s

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o.requires:
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o.requires

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o.provides: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o.requires
	$(MAKE) -f falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/build.make falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o.provides.build
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o.provides

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o.provides.build: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/flags.make
falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o: similarity_measures/sm_config.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/elf/falsecolor/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o -c /home/elf/falsecolor/similarity_measures/sm_config.cpp

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.i"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/elf/falsecolor/similarity_measures/sm_config.cpp > CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.i

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.s"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/elf/falsecolor/similarity_measures/sm_config.cpp -o CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.s

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o.requires:
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o.requires

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o.provides: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o.requires
	$(MAKE) -f falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/build.make falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o.provides.build
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o.provides

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o.provides.build: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/flags.make
falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o: similarity_measures/similarity_measure_core.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/elf/falsecolor/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o -c /home/elf/falsecolor/similarity_measures/similarity_measure_core.cpp

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.i"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/elf/falsecolor/similarity_measures/similarity_measure_core.cpp > CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.i

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.s"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/elf/falsecolor/similarity_measures/similarity_measure_core.cpp -o CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.s

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o.requires:
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o.requires

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o.provides: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o.requires
	$(MAKE) -f falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/build.make falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o.provides.build
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o.provides

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o.provides.build: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/flags.make
falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o: similarity_measures/similarity_measure_config.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/elf/falsecolor/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o -c /home/elf/falsecolor/similarity_measures/similarity_measure_config.cpp

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.i"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/elf/falsecolor/similarity_measures/similarity_measure_config.cpp > CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.i

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.s"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/elf/falsecolor/similarity_measures/similarity_measure_config.cpp -o CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.s

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o.requires:
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o.requires

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o.provides: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o.requires
	$(MAKE) -f falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/build.make falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o.provides.build
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o.provides

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o.provides.build: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o

# Object files for target similarity_measures-lib
similarity_measures__lib_OBJECTS = \
"CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o" \
"CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o" \
"CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o" \
"CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o"

# External object files for target similarity_measures-lib
similarity_measures__lib_EXTERNAL_OBJECTS =

falsecolor/similarity_measures/libsimilarity_measures-lib.a: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o
falsecolor/similarity_measures/libsimilarity_measures-lib.a: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o
falsecolor/similarity_measures/libsimilarity_measures-lib.a: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o
falsecolor/similarity_measures/libsimilarity_measures-lib.a: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o
falsecolor/similarity_measures/libsimilarity_measures-lib.a: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/build.make
falsecolor/similarity_measures/libsimilarity_measures-lib.a: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libsimilarity_measures-lib.a"
	cd /home/elf/falsecolor/falsecolor/similarity_measures && $(CMAKE_COMMAND) -P CMakeFiles/similarity_measures-lib.dir/cmake_clean_target.cmake
	cd /home/elf/falsecolor/falsecolor/similarity_measures && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/similarity_measures-lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/build: falsecolor/similarity_measures/libsimilarity_measures-lib.a
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/build

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/requires: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/command_similarity_measure.cpp.o.requires
falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/requires: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/sm_config.cpp.o.requires
falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/requires: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_core.cpp.o.requires
falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/requires: falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/similarity_measure_config.cpp.o.requires
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/requires

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/clean:
	cd /home/elf/falsecolor/falsecolor/similarity_measures && $(CMAKE_COMMAND) -P CMakeFiles/similarity_measures-lib.dir/cmake_clean.cmake
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/clean

falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/depend:
	cd /home/elf/falsecolor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elf/falsecolor /home/elf/falsecolor/similarity_measures /home/elf/falsecolor /home/elf/falsecolor/falsecolor/similarity_measures /home/elf/falsecolor/falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : falsecolor/similarity_measures/CMakeFiles/similarity_measures-lib.dir/depend

