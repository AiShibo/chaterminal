# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /mnt/c/Users/asnic/CLionProjects/chaterminal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild

# Include any dependencies generated for this target.
include chaterminal-server/CMakeFiles/chaterminal_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.make

# Include the progress variables for this target.
include chaterminal-server/CMakeFiles/chaterminal_server.dir/progress.make

# Include the compile flags for this target's objects.
include chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make

chaterminal-server/CMakeFiles/chaterminal_server.dir/main.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/main.c.o: ../chaterminal-server/main.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/main.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/main.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/main.c.o -MF CMakeFiles/chaterminal_server.dir/main.c.o.d -o CMakeFiles/chaterminal_server.dir/main.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/main.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/main.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/main.c > CMakeFiles/chaterminal_server.dir/main.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/main.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/main.c -o CMakeFiles/chaterminal_server.dir/main.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/auth.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/auth.c.o: ../chaterminal-server/callback/auth.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/auth.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/auth.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/auth.c.o -MF CMakeFiles/chaterminal_server.dir/callback/auth.c.o.d -o CMakeFiles/chaterminal_server.dir/callback/auth.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/auth.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/auth.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/callback/auth.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/auth.c > CMakeFiles/chaterminal_server.dir/callback/auth.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/auth.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/callback/auth.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/auth.c -o CMakeFiles/chaterminal_server.dir/callback/auth.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o: ../chaterminal-server/utils/auth_array.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o -MF CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o.d -o CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/utils/auth_array.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/auth_array.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/utils/auth_array.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/utils/auth_array.c > CMakeFiles/chaterminal_server.dir/utils/auth_array.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/auth_array.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/utils/auth_array.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/utils/auth_array.c -o CMakeFiles/chaterminal_server.dir/utils/auth_array.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o: ../chaterminal-server/service/stat_response_service.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o -MF CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o.d -o CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/stat_response_service.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/stat_response_service.c > CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/stat_response_service.c -o CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/connection.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/connection.c.o: ../chaterminal-server/callback/connection.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/connection.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/connection.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/connection.c.o -MF CMakeFiles/chaterminal_server.dir/callback/connection.c.o.d -o CMakeFiles/chaterminal_server.dir/callback/connection.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/connection.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/connection.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/callback/connection.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/connection.c > CMakeFiles/chaterminal_server.dir/callback/connection.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/connection.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/callback/connection.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/connection.c -o CMakeFiles/chaterminal_server.dir/callback/connection.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/auth_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/auth_service.c.o: ../chaterminal-server/service/auth_service.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/auth_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/service/auth_service.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/service/auth_service.c.o -MF CMakeFiles/chaterminal_server.dir/service/auth_service.c.o.d -o CMakeFiles/chaterminal_server.dir/service/auth_service.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/auth_service.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/auth_service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/service/auth_service.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/auth_service.c > CMakeFiles/chaterminal_server.dir/service/auth_service.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/auth_service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/service/auth_service.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/auth_service.c -o CMakeFiles/chaterminal_server.dir/service/auth_service.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o: ../chaterminal-server/dao/user_dao.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o -MF CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o.d -o CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/user_dao.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/user_dao.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/dao/user_dao.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/user_dao.c > CMakeFiles/chaterminal_server.dir/dao/user_dao.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/user_dao.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/dao/user_dao.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/user_dao.c -o CMakeFiles/chaterminal_server.dir/dao/user_dao.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o: ../chaterminal-server/dao/db_connect.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o -MF CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o.d -o CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/db_connect.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/db_connect.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/dao/db_connect.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/db_connect.c > CMakeFiles/chaterminal_server.dir/dao/db_connect.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/db_connect.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/dao/db_connect.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/db_connect.c -o CMakeFiles/chaterminal_server.dir/dao/db_connect.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/init_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/init_service.c.o: ../chaterminal-server/service/init_service.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/init_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/service/init_service.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/service/init_service.c.o -MF CMakeFiles/chaterminal_server.dir/service/init_service.c.o.d -o CMakeFiles/chaterminal_server.dir/service/init_service.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/init_service.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/init_service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/service/init_service.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/init_service.c > CMakeFiles/chaterminal_server.dir/service/init_service.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/init_service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/service/init_service.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/init_service.c -o CMakeFiles/chaterminal_server.dir/service/init_service.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o: ../chaterminal-server/callback/req_dispactcher.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o -MF CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o.d -o CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/req_dispactcher.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/req_dispactcher.c > CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/callback/req_dispactcher.c -o CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/request_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/request_service.c.o: ../chaterminal-server/service/request_service.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/request_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/service/request_service.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/service/request_service.c.o -MF CMakeFiles/chaterminal_server.dir/service/request_service.c.o.d -o CMakeFiles/chaterminal_server.dir/service/request_service.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/request_service.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/request_service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/service/request_service.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/request_service.c > CMakeFiles/chaterminal_server.dir/service/request_service.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/request_service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/service/request_service.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/request_service.c -o CMakeFiles/chaterminal_server.dir/service/request_service.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/modify_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/modify_service.c.o: ../chaterminal-server/service/modify_service.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/modify_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/service/modify_service.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/service/modify_service.c.o -MF CMakeFiles/chaterminal_server.dir/service/modify_service.c.o.d -o CMakeFiles/chaterminal_server.dir/service/modify_service.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/modify_service.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/modify_service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/service/modify_service.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/modify_service.c > CMakeFiles/chaterminal_server.dir/service/modify_service.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/modify_service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/service/modify_service.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/modify_service.c -o CMakeFiles/chaterminal_server.dir/service/modify_service.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o: ../chaterminal-server/utils/client_msg.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o -MF CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o.d -o CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/utils/client_msg.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/client_msg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/utils/client_msg.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/utils/client_msg.c > CMakeFiles/chaterminal_server.dir/utils/client_msg.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/client_msg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/utils/client_msg.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/utils/client_msg.c -o CMakeFiles/chaterminal_server.dir/utils/client_msg.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o: ../chaterminal-server/dao/chat_dao.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o -MF CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o.d -o CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/chat_dao.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/chat_dao.c > CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/dao/chat_dao.c -o CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.s

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/flags.make
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o: ../chaterminal-server/service/sendmsg_service.c
chaterminal-server/CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o: chaterminal-server/CMakeFiles/chaterminal_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object chaterminal-server/CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-server/CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o -MF CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o.d -o CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/sendmsg_service.c

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/sendmsg_service.c > CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.i

chaterminal-server/CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server/service/sendmsg_service.c -o CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.s

# Object files for target chaterminal_server
chaterminal_server_OBJECTS = \
"CMakeFiles/chaterminal_server.dir/main.c.o" \
"CMakeFiles/chaterminal_server.dir/callback/auth.c.o" \
"CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o" \
"CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o" \
"CMakeFiles/chaterminal_server.dir/callback/connection.c.o" \
"CMakeFiles/chaterminal_server.dir/service/auth_service.c.o" \
"CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o" \
"CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o" \
"CMakeFiles/chaterminal_server.dir/service/init_service.c.o" \
"CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o" \
"CMakeFiles/chaterminal_server.dir/service/request_service.c.o" \
"CMakeFiles/chaterminal_server.dir/service/modify_service.c.o" \
"CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o" \
"CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o" \
"CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o"

# External object files for target chaterminal_server
chaterminal_server_EXTERNAL_OBJECTS =

chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/main.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/auth.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/auth_array.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/service/stat_response_service.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/connection.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/service/auth_service.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/user_dao.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/db_connect.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/service/init_service.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/callback/req_dispactcher.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/service/request_service.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/service/modify_service.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/utils/client_msg.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/dao/chat_dao.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/service/sendmsg_service.c.o
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/build.make
chaterminal-server/chaterminal_server: chaterminal-server/CMakeFiles/chaterminal_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C executable chaterminal_server"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chaterminal_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chaterminal-server/CMakeFiles/chaterminal_server.dir/build: chaterminal-server/chaterminal_server
.PHONY : chaterminal-server/CMakeFiles/chaterminal_server.dir/build

chaterminal-server/CMakeFiles/chaterminal_server.dir/clean:
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server && $(CMAKE_COMMAND) -P CMakeFiles/chaterminal_server.dir/cmake_clean.cmake
.PHONY : chaterminal-server/CMakeFiles/chaterminal_server.dir/clean

chaterminal-server/CMakeFiles/chaterminal_server.dir/depend:
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/asnic/CLionProjects/chaterminal /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-server /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server /mnt/c/Users/asnic/CLionProjects/chaterminal/mybuild/chaterminal-server/CMakeFiles/chaterminal_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chaterminal-server/CMakeFiles/chaterminal_server.dir/depend

