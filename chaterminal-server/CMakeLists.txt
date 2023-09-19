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
)

# Link libraries
target_link_libraries(chaterminal_server mysqlclient)
target_link_libraries(chaterminal_server event)

