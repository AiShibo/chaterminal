# Minimum CMake version required
cmake_minimum_required(VERSION 3.22)

# Project name and language
project(chaterminal C)

# Set C standard to use
set(CMAKE_C_STANDARD 11)

# Add include directories
include_directories(include)

# Add executable
add_executable(chaterminal_server main.c
        callback/auth.c
        utils/auth_array.c
        service/stat_response_service.c
        callback/connection.c
        service/auth_service.c
        dao/user_dao.c
        dao/db_connect.c
        service/init_service.c
        callback/req_dispactcher.c
        service/request_service.c
        service/modify_service.c
        utils/client_msg.c
        dao/chat_dao.c
        service/sendmsg_service.c
        include/settings.h
)

# Link libraries
target_link_libraries(chaterminal_server mysqlclient)
target_link_libraries(chaterminal_server event)

