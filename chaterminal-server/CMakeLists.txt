# Minimum CMake version required
cmake_minimum_required(VERSION 3.22)

# Project name and language
project(chaterminal_server C)

# Set C standard to use
set(CMAKE_C_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)

# Add include directories
include_directories(include)

if(CMAKE_BUILD_TYPE MATCHES Debug)
    add_compile_definitions(DEBUG)
endif()


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
        include/request_service.h
        service/modify_service.c
        include/modify_service.h
        include/send_service.h
        utils/client_msg.c
        include/client_msg.h
        dao/chat_dao.c
        include/chat_dao.h
        service/sendmsg_service.c
        include/sendmsg_service.h
)

# Link libraries
target_link_libraries(chaterminal_server mysqlclient)
target_link_libraries(chaterminal_server event)

