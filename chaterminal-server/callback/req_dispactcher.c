//
// Created by asnic on 9/3/2023.
//

#include "req_dispatcher.h"


void serv_dispatch(struct bufferevent *event, void *data) {
    char *msg = read_msg(event);
    if (msg > 0) { // message is complete
        if ((strlen(msg) > 7) && (strncmp(msg, "REQUEST", 7) == 0)) {
            request_sub_dispatcher(msg + 7, event);
        } else if ((strlen(msg) > 6) && (strncmp(msg, "MODIFY", 6) == 0)) {
            // Your modify logic here
        } else if ((strlen(msg) > 8) && (strncmp(msg, "SENDMSG\n", 8) == 0)) {
            const char *sender_username = get_username_from_bufferevent(event);

            // Assuming the receiver_username is on the second line, and the chat_msg is the remaining part.
            char *remaining_msg = msg + 8;
            char *line_break = strchr(remaining_msg, '\n');

            // TODO
            if (line_break) {
                *line_break = '\0';
                char *receiver_username = remaining_msg;
                char *chat_msg = line_break + 1;

                if (sender_username && receiver_username && chat_msg && *chat_msg) {
                    int success = insert_chat(sender_username, receiver_username, chat_msg);
                    if (success) {
                        struct bufferevent *another_event = get_bev_by_username(receiver_username);
                        if (another_event != NULL) {
                            send_msg(chat_msg, another_event);
                        }
                    } else {
                        printf("failed, user not exist!\n");
                    }
                } else {
                    // Invalid message format
                    // Handle this as needed
                    printf("failed, for unknown reason\n");
                }
            }
        }
        // otherwise, the request will be discarded
        free(msg);
    }
}

