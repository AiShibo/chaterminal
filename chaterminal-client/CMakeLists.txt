include_directories(include)

# Find the ncurses package
find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})

add_executable(chaterminal_client main.c
        service/server_connect_service.c
        callback/event_cb.c
        callback/auth_cb.c
        callback/user_cb.c
        util/get_serv_msg.c
        util/process_response.c
        callback/chat_cb.c)

# Link the libraries
target_link_libraries(chaterminal_client event ${CURSES_LIBRARIES})
