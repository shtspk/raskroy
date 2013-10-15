# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_SOURCE_DIR = /home/misha/raskroy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/misha/raskroy

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/misha/raskroy/CMakeFiles /home/misha/raskroy/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/misha/raskroy/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named guillotine_interop

# Build rule for target.
guillotine_interop: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 guillotine_interop
.PHONY : guillotine_interop

# fast build rule for target.
guillotine_interop/fast:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/build
.PHONY : guillotine_interop/fast

#=============================================================================
# Target rules for targets named raskroy_test

# Build rule for target.
raskroy_test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 raskroy_test
.PHONY : raskroy_test

# fast build rule for target.
raskroy_test/fast:
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/build
.PHONY : raskroy_test/fast

Parser.o: Parser.cpp.o
.PHONY : Parser.o

# target to build an object file
Parser.cpp.o:
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Parser.cpp.o
.PHONY : Parser.cpp.o

Parser.i: Parser.cpp.i
.PHONY : Parser.i

# target to preprocess a source file
Parser.cpp.i:
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Parser.cpp.i
.PHONY : Parser.cpp.i

Parser.s: Parser.cpp.s
.PHONY : Parser.s

# target to generate assembly for a file
Parser.cpp.s:
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Parser.cpp.s
.PHONY : Parser.cpp.s

Perebor.o: Perebor.cpp.o
.PHONY : Perebor.o

# target to build an object file
Perebor.cpp.o:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Perebor.cpp.o
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Perebor.cpp.o
.PHONY : Perebor.cpp.o

Perebor.i: Perebor.cpp.i
.PHONY : Perebor.i

# target to preprocess a source file
Perebor.cpp.i:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Perebor.cpp.i
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Perebor.cpp.i
.PHONY : Perebor.cpp.i

Perebor.s: Perebor.cpp.s
.PHONY : Perebor.s

# target to generate assembly for a file
Perebor.cpp.s:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Perebor.cpp.s
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Perebor.cpp.s
.PHONY : Perebor.cpp.s

Perebor2d.o: Perebor2d.cpp.o
.PHONY : Perebor2d.o

# target to build an object file
Perebor2d.cpp.o:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Perebor2d.cpp.o
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Perebor2d.cpp.o
.PHONY : Perebor2d.cpp.o

Perebor2d.i: Perebor2d.cpp.i
.PHONY : Perebor2d.i

# target to preprocess a source file
Perebor2d.cpp.i:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Perebor2d.cpp.i
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Perebor2d.cpp.i
.PHONY : Perebor2d.cpp.i

Perebor2d.s: Perebor2d.cpp.s
.PHONY : Perebor2d.s

# target to generate assembly for a file
Perebor2d.cpp.s:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Perebor2d.cpp.s
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Perebor2d.cpp.s
.PHONY : Perebor2d.cpp.s

Raskroy.o: Raskroy.cpp.o
.PHONY : Raskroy.o

# target to build an object file
Raskroy.cpp.o:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Raskroy.cpp.o
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Raskroy.cpp.o
.PHONY : Raskroy.cpp.o

Raskroy.i: Raskroy.cpp.i
.PHONY : Raskroy.i

# target to preprocess a source file
Raskroy.cpp.i:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Raskroy.cpp.i
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Raskroy.cpp.i
.PHONY : Raskroy.cpp.i

Raskroy.s: Raskroy.cpp.s
.PHONY : Raskroy.s

# target to generate assembly for a file
Raskroy.cpp.s:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Raskroy.cpp.s
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Raskroy.cpp.s
.PHONY : Raskroy.cpp.s

Result.o: Result.cpp.o
.PHONY : Result.o

# target to build an object file
Result.cpp.o:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Result.cpp.o
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Result.cpp.o
.PHONY : Result.cpp.o

Result.i: Result.cpp.i
.PHONY : Result.i

# target to preprocess a source file
Result.cpp.i:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Result.cpp.i
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Result.cpp.i
.PHONY : Result.cpp.i

Result.s: Result.cpp.s
.PHONY : Result.s

# target to generate assembly for a file
Result.cpp.s:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/Result.cpp.s
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/Result.cpp.s
.PHONY : Result.cpp.s

guillotine_interop.o: guillotine_interop.cpp.o
.PHONY : guillotine_interop.o

# target to build an object file
guillotine_interop.cpp.o:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/guillotine_interop.cpp.o
.PHONY : guillotine_interop.cpp.o

guillotine_interop.i: guillotine_interop.cpp.i
.PHONY : guillotine_interop.i

# target to preprocess a source file
guillotine_interop.cpp.i:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/guillotine_interop.cpp.i
.PHONY : guillotine_interop.cpp.i

guillotine_interop.s: guillotine_interop.cpp.s
.PHONY : guillotine_interop.s

# target to generate assembly for a file
guillotine_interop.cpp.s:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/guillotine_interop.cpp.s
.PHONY : guillotine_interop.cpp.s

test.o: test.cpp.o
.PHONY : test.o

# target to build an object file
test.cpp.o:
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/test.cpp.o
.PHONY : test.cpp.o

test.i: test.cpp.i
.PHONY : test.i

# target to preprocess a source file
test.cpp.i:
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/test.cpp.i
.PHONY : test.cpp.i

test.s: test.cpp.s
.PHONY : test.s

# target to generate assembly for a file
test.cpp.s:
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/test.cpp.s
.PHONY : test.cpp.s

types.o: types.cpp.o
.PHONY : types.o

# target to build an object file
types.cpp.o:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/types.cpp.o
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/types.cpp.o
.PHONY : types.cpp.o

types.i: types.cpp.i
.PHONY : types.i

# target to preprocess a source file
types.cpp.i:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/types.cpp.i
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/types.cpp.i
.PHONY : types.cpp.i

types.s: types.cpp.s
.PHONY : types.s

# target to generate assembly for a file
types.cpp.s:
	$(MAKE) -f CMakeFiles/guillotine_interop.dir/build.make CMakeFiles/guillotine_interop.dir/types.cpp.s
	$(MAKE) -f CMakeFiles/raskroy_test.dir/build.make CMakeFiles/raskroy_test.dir/types.cpp.s
.PHONY : types.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... guillotine_interop"
	@echo "... raskroy_test"
	@echo "... rebuild_cache"
	@echo "... Parser.o"
	@echo "... Parser.i"
	@echo "... Parser.s"
	@echo "... Perebor.o"
	@echo "... Perebor.i"
	@echo "... Perebor.s"
	@echo "... Perebor2d.o"
	@echo "... Perebor2d.i"
	@echo "... Perebor2d.s"
	@echo "... Raskroy.o"
	@echo "... Raskroy.i"
	@echo "... Raskroy.s"
	@echo "... Result.o"
	@echo "... Result.i"
	@echo "... Result.s"
	@echo "... guillotine_interop.o"
	@echo "... guillotine_interop.i"
	@echo "... guillotine_interop.s"
	@echo "... test.o"
	@echo "... test.i"
	@echo "... test.s"
	@echo "... types.o"
	@echo "... types.i"
	@echo "... types.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

