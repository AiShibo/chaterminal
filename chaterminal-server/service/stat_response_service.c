//
// Created by asnic on 9/3/2023.
//
#include "stat_response_service.h"

void send_err(const char *err_msg, struct bufferevent *event) {
    bufferevent_write(event, "ERROR\n", sizeof("ERROR\n") - 1);
    bufferevent_write(event, err_msg, strlen(err_msg));
    bufferevent_write(event, END_MARKER, sizeof(END_MARKER));
}

void send_success(const char *msg, struct bufferevent *event) {
    bufferevent_write(event, "SUCCESS\n", sizeof("SUCCESS\n") - 1);
    if (msg != NULL)
        bufferevent_write(event, msg, strlen(msg));
    bufferevent_write(event, END_MARKER, sizeof(END_MARKER));
}

void send_msg(const char *msg, struct bufferevent *event) {
    bufferevent_write(event, "INCOMING\n", sizeof("INCOMING\n") - 1);
    bufferevent_write(event, msg, strlen(msg));
    bufferevent_write(event, END_MARKER, sizeof(END_MARKER) - 1);
}
