# Minimum CMake version required
cmake_minimum_required(VERSION 3.22)

# Project name and language
project(chaterminal C)

# Set C standard to use
set(CMAKE_C_STANDARD 11)


include_directories(include)

add_executable(chaterminal_client main.c
        service/server_connect_service.c
        callback/event_cb.c
        callback/auth_cb.c
        callback/user_cb.c
        util/get_serv_msg.c
        util/process_response.c
        callback/chat_cb.c)

# Link the libraries
target_link_libraries(chaterminal_client event)
