//
// Created by asnic on 9/4/2023.
//

#include "request_service.h"

void request_sub_dispatcher(char *msg, struct bufferevent *event) {
    if ((strlen(msg) >= 6) && (strncmp(msg, "\nUSERS", 6) == 0)) {
        int size = strlen(msg);
        char *all_users = get_all_users();
        send_success(all_users, event);
        free(all_users);
    } else if ((strlen(msg) > 8) && (strncmp(msg, "\nHISTORY", 8) == 0)) {
        msg += 8;
        if (*msg == '\n') {
            msg += 1;
            char *enter = strchr(msg, '\n');
            if (enter != NULL) {
                char username[51];
                memcpy(username, msg, enter - msg);
                username[enter - msg] = '\0';
                const char *self = get_username_from_bufferevent(event);
                if (self == NULL) {
                    fprintf(stderr, "Emmmm... that's an unexpected problem... "
                                    "Check the Auth array module...\n");
                    return;
                }
                char *history = get_chat_history(self, username);
                if (history != NULL) {
                    send_success(history, event);
                } else {
                    if (check_user_exists(username)) {
                        send_success(NULL, event);
                    } else {
                        send_err("NO_SUCH_USER", event);
                    }
                }
                free(history);
            }
        }
    }
}
