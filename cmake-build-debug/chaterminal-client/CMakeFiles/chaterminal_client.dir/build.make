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
CMAKE_BINARY_DIR = /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug

# Include any dependencies generated for this target.
include chaterminal-client/CMakeFiles/chaterminal_client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.make

# Include the progress variables for this target.
include chaterminal-client/CMakeFiles/chaterminal_client.dir/progress.make

# Include the compile flags for this target's objects.
include chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make

chaterminal-client/CMakeFiles/chaterminal_client.dir/main.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make
chaterminal-client/CMakeFiles/chaterminal_client.dir/main.c.o: ../chaterminal-client/main.c
chaterminal-client/CMakeFiles/chaterminal_client.dir/main.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object chaterminal-client/CMakeFiles/chaterminal_client.dir/main.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-client/CMakeFiles/chaterminal_client.dir/main.c.o -MF CMakeFiles/chaterminal_client.dir/main.c.o.d -o CMakeFiles/chaterminal_client.dir/main.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/main.c

chaterminal-client/CMakeFiles/chaterminal_client.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_client.dir/main.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/main.c > CMakeFiles/chaterminal_client.dir/main.c.i

chaterminal-client/CMakeFiles/chaterminal_client.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_client.dir/main.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/main.c -o CMakeFiles/chaterminal_client.dir/main.c.s

chaterminal-client/CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make
chaterminal-client/CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o: ../chaterminal-client/service/server_connect_service.c
chaterminal-client/CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object chaterminal-client/CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-client/CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o -MF CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o.d -o CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/service/server_connect_service.c

chaterminal-client/CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/service/server_connect_service.c > CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.i

chaterminal-client/CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/service/server_connect_service.c -o CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.s

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make
chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o: ../chaterminal-client/callback/event_cb.c
chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o -MF CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o.d -o CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/event_cb.c

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/event_cb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_client.dir/callback/event_cb.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/event_cb.c > CMakeFiles/chaterminal_client.dir/callback/event_cb.c.i

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/event_cb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_client.dir/callback/event_cb.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/event_cb.c -o CMakeFiles/chaterminal_client.dir/callback/event_cb.c.s

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make
chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o: ../chaterminal-client/callback/auth_cb.c
chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o -MF CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o.d -o CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/auth_cb.c

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/auth_cb.c > CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.i

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/auth_cb.c -o CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.s

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make
chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o: ../chaterminal-client/callback/user_cb.c
chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o -MF CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o.d -o CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/user_cb.c

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/user_cb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_client.dir/callback/user_cb.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/user_cb.c > CMakeFiles/chaterminal_client.dir/callback/user_cb.c.i

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/user_cb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_client.dir/callback/user_cb.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/user_cb.c -o CMakeFiles/chaterminal_client.dir/callback/user_cb.c.s

chaterminal-client/CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make
chaterminal-client/CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o: ../chaterminal-client/util/get_serv_msg.c
chaterminal-client/CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object chaterminal-client/CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-client/CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o -MF CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o.d -o CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/util/get_serv_msg.c

chaterminal-client/CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/util/get_serv_msg.c > CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.i

chaterminal-client/CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/util/get_serv_msg.c -o CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.s

chaterminal-client/CMakeFiles/chaterminal_client.dir/util/process_response.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make
chaterminal-client/CMakeFiles/chaterminal_client.dir/util/process_response.c.o: ../chaterminal-client/util/process_response.c
chaterminal-client/CMakeFiles/chaterminal_client.dir/util/process_response.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object chaterminal-client/CMakeFiles/chaterminal_client.dir/util/process_response.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-client/CMakeFiles/chaterminal_client.dir/util/process_response.c.o -MF CMakeFiles/chaterminal_client.dir/util/process_response.c.o.d -o CMakeFiles/chaterminal_client.dir/util/process_response.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/util/process_response.c

chaterminal-client/CMakeFiles/chaterminal_client.dir/util/process_response.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_client.dir/util/process_response.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/util/process_response.c > CMakeFiles/chaterminal_client.dir/util/process_response.c.i

chaterminal-client/CMakeFiles/chaterminal_client.dir/util/process_response.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_client.dir/util/process_response.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/util/process_response.c -o CMakeFiles/chaterminal_client.dir/util/process_response.c.s

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/flags.make
chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o: ../chaterminal-client/callback/chat_cb.c
chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o: chaterminal-client/CMakeFiles/chaterminal_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o -MF CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o.d -o CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o -c /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/chat_cb.c

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.i"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/chat_cb.c > CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.i

chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.s"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client/callback/chat_cb.c -o CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.s

# Object files for target chaterminal_client
chaterminal_client_OBJECTS = \
"CMakeFiles/chaterminal_client.dir/main.c.o" \
"CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o" \
"CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o" \
"CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o" \
"CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o" \
"CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o" \
"CMakeFiles/chaterminal_client.dir/util/process_response.c.o" \
"CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o"

# External object files for target chaterminal_client
chaterminal_client_EXTERNAL_OBJECTS =

chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/main.c.o
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/service/server_connect_service.c.o
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/event_cb.c.o
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/auth_cb.c.o
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/user_cb.c.o
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/util/get_serv_msg.c.o
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/util/process_response.c.o
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/callback/chat_cb.c.o
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/build.make
chaterminal-client/chaterminal_client: /usr/lib/x86_64-linux-gnu/libcurses.so
chaterminal-client/chaterminal_client: /usr/lib/x86_64-linux-gnu/libform.so
chaterminal-client/chaterminal_client: chaterminal-client/CMakeFiles/chaterminal_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C executable chaterminal_client"
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chaterminal_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chaterminal-client/CMakeFiles/chaterminal_client.dir/build: chaterminal-client/chaterminal_client
.PHONY : chaterminal-client/CMakeFiles/chaterminal_client.dir/build

chaterminal-client/CMakeFiles/chaterminal_client.dir/clean:
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client && $(CMAKE_COMMAND) -P CMakeFiles/chaterminal_client.dir/cmake_clean.cmake
.PHONY : chaterminal-client/CMakeFiles/chaterminal_client.dir/clean

chaterminal-client/CMakeFiles/chaterminal_client.dir/depend:
	cd /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/asnic/CLionProjects/chaterminal /mnt/c/Users/asnic/CLionProjects/chaterminal/chaterminal-client /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client /mnt/c/Users/asnic/CLionProjects/chaterminal/cmake-build-debug/chaterminal-client/CMakeFiles/chaterminal_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chaterminal-client/CMakeFiles/chaterminal_client.dir/depend

