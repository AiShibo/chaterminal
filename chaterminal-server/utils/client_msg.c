//
// Created by asnic on 9/4/2023.
//
#include "client_msg.h"

client_msg *client_msgs;
int array_size = 0;

int init_client_msg() {
    client_msgs = (client_msg *)malloc(sizeof(client_msg) * 65);
    if(client_msgs == NULL) {
        return 0;
    }
    array_size = 65;
    return 1;
}

char *read_msg(struct bufferevent *bv) {
    char buffer[MAX_REQ_SIZ]; // Temporary buffer
    int n = bufferevent_read(bv, buffer, sizeof(buffer));

    if(n <= 0) {
        return NULL; // Error or no data
    }

    int fd = bufferevent_getfd(bv);
    client_msg *cm = &client_msgs[fd % array_size]; // hash

    // Check for New Message Keywords
    if(strncmp(buffer, "AUTH", 4) == 0 || strncmp(buffer, "REQUEST", 7) == 0 || strncmp(buffer, "MODIFY", 6) == 0) {
        cm->curr_msg_size = 0; // Reset current message size
    }

    // Reallocate if current message size exceeds buffer
    if(cm->curr_msg_size + n > MAX_REQ_SIZ) {
        free(cm->prev_msg);
        cm->prev_msg = NULL;
        cm->curr_msg_size = 0;
        return 0;
    }

    // Allocate if prev_msg is NULL
    if(cm->prev_msg == NULL) {
        cm->prev_msg = (char *)malloc(MAX_REQ_SIZ);
        if(cm->prev_msg == NULL) {
            return 0;
        }
        cm->curr_msg_size = 0;
    }

    // Copy new data
    memcpy(cm->prev_msg + cm->curr_msg_size, buffer, n);
    cm->curr_msg_size += n;

    // Check for END_MARKER
    if(strstr(cm->prev_msg, END_MARKER)) {
        cm->prev_msg[cm->curr_msg_size - strlen(END_MARKER)] = '\0';
        char *result = strdup(cm->prev_msg);
        cm->curr_msg_size = 0;
        return result;
    }

    return NULL; // Message is incomplete
}