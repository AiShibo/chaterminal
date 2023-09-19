//
// Created by asnic on 9/7/2023.
//


#include "user_cb.h"

void print_user(char *start, char *end) {
    char *str = malloc(end - start + 1);
    memcpy(str, start, end - start);
    str[end - start] = '\0';
    printf("USER: %s\n", str);
    free(str);
}


void get_user (struct bufferevent *event, void *data) {
    char *serv_msga = read_bufferevent_string(event);
    if (serv_msga == NULL) {
        return;
    }
    success = 0;
    if (!process_response(serv_msga, print_user)) {
        free(serv_msga);
        return;
    }
    free(serv_msga);
    event_base_loopbreak(base);
}