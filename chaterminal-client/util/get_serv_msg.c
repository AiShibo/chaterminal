//
// Created by asnic on 9/7/2023.
//

#include "get_serv_msg.h"

char* read_bufferevent_string(struct bufferevent *bev) {
    static char *buffer = NULL;
    static size_t buffer_size = 0;

    // Read data from the bufferevent.
    char tmp[10240];
    int len = bufferevent_read(bev, tmp, sizeof(tmp) - 1);
    if (len <= 0) {
        return NULL;  // No data read.
    }

    // Null-terminate the read data.
    tmp[len] = '\0';

    // Reallocate the buffer to fit the new data.
    buffer = realloc(buffer, buffer_size + len + 1);
    if (!buffer) {
        // Handle allocation error.
        return NULL;
    }

    // Append the new data to the buffer.
    strcpy(buffer + buffer_size, tmp);
    buffer_size += len;

    // Check for the end marker.
    if (strstr(buffer, END_MARKER)) {
        char *message = strdup(buffer);
        if (!message) {
            // Handle allocation error.
            return NULL;
        }

        // Clear the buffer.
        free(buffer);
        buffer = NULL;
        buffer_size = 0;

        return message;  // Return the complete message.
    }

    return NULL;  // No complete message yet.
}
