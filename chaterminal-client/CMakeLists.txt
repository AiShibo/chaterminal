cmake_minimum_required(VERSION 3.22)
project(chaterminal_client C)

set(CMAKE_C_STANDARD 11)
include_directories(include)

# Find the ncurses package
find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})

add_executable(chaterminal_client main.c
        service/server_connect_service.c
        include/server_connect_service.h
        callback/event_cb.c
        include/event_cb.h
        include/defines.h
        callback/auth_cb.c
        include/auth_cb.h
        callback/user_cb.c
        include/user_cb.h
        util/get_serv_msg.c
        include/get_serv_msg.h
        util/process_response.c
        include/process_response.h
        callback/chat_cb.c
        include/chat_cb.h)

if(CMAKE_BUILD_TYPE MATCHES Debug)
    add_compile_definitions(DEBUG)
endif()

# Link the libraries
target_link_libraries(chaterminal_client event ${CURSES_LIBRARIES})
