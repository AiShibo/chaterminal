//
// Created by asnic on 9/7/2023.
//

#include "auth_cb.h"

void request_auth(struct bufferevent *event, void *data) {;
    char *serv_message = read_bufferevent_string(event);
    if (serv_message == NULL) {
        return;
    }
    size_t msg_len = strlen(serv_message);
    size_t marker_len = strlen(END_MARKER);
    char *marker_pos = serv_message + msg_len - marker_len;
    if ((msg_len > marker_len) && (strcmp(END_MARKER, marker_pos) == 0) && (strncmp(serv_message, "SUCCESS", strlen("SUCCESS")) == 0)) {
        success = 1;
    } else if ((msg_len > marker_len) && (strcmp(END_MARKER, marker_pos) == 0) && (strncmp(serv_message, "INCOMING", strlen("INCOMING")) == 0)) {
        free(serv_message);
        return;
    } else {
            success = 0;
    }
    event_base_loopbreak(base);
    free(serv_message);
}
