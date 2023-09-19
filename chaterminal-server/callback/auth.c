//
// Created by asnic on 9/3/2023.
//

#include "auth.h"


void authentication(struct bufferevent *event, void *data) {
    printf("someone just tried to login!\n");
    size_t read_size;

    /*
    enum evbuffer_eol_style eol_style = EVBUFFER_EOL_LF;
    line = evbuffer_readln(bufferevent_get_input(event), &read_size,eol_style);
     */

    char *msg = read_msg(event);

    if (msg > 0) {
        char *msg_copy = strdup(msg);  // Duplicate the msg string to safely modify it
        char *saveptr;  // For use with strtok_r to make it thread-safe

        char *line = strtok_r(msg_copy, "\n", &saveptr);  // Extract first line
        char *username = strtok_r(NULL, "\n", &saveptr);  // Extract second line
        char *password = strtok_r(NULL, "\n", &saveptr);  // Extract third line


        if ((line != NULL && strcmp(line, "AUTH") == 0)) {
            /*
            free(line);
            char *username = evbuffer_readln(bufferevent_get_input(event), &read_size,eol_style);
            char *password = evbuffer_readln(bufferevent_get_input(event), &read_size,eol_style);
             */
            do {
                if (username == NULL || password == NULL) {
                    send_err("WRONG_CREDENT\n", event);
                    break;
                }
                if (check_credent(username, password)) {
                    struct bufferevent *prev_bev = get_bev_by_username(username);
                    if (prev_bev != NULL) {
                        bufferevent_free(prev_bev);
                        remove_credent(username);
                    }
                    send_success("CORRECT_CREDENT\n", event);
                    char *mall_username = strdup(username);
                    bufferevent_setcb(event, serv_dispatch, NULL, event_cb, mall_username);
                    set_credent(username, bufferevent_getfd(event), event);
                } else {
                    send_err("WRONG_CREDENT\n", event);
                }
            } while (0);
        } else {
            send_err("NO_CREDENT\n", event);
        }
        free(msg_copy);
        free(msg);
    }
}
