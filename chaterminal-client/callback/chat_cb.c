//
// Created by asnic on 9/7/2023.
//



#include "chat_cb.h"

void print_message(char *start, char *end) {
    char *str = malloc(end - start + 1);
    memcpy(str, start, end - start);
    str[end - start] = '\0';

    // Find the ':' and the subsequent space, which separates the username and the message
    char *colon = strchr(str, ':');
    if (colon && *(colon + 1) == ' ') {
        // Null-terminate and isolate the username part for comparison
        *colon = '\0';
        if (strcmp(str, g_username) == 0) {
            // Username matches the global username, print in default color
            printf("%s\n", colon + 2);  // skip ": " to print only the message
        } else {
            // Username does not match the global username, print in green
            printf("\033[32m%s\033[0m\n", colon + 2);  // skip ": " to print only the message
        }
    } else {
        // Format does not match "username: message", so print as is (here in default color)
        printf("%s\n", str);
    }

    free(str);
}

void show_history(struct bufferevent *event, void *data) {
    char *serv_msg = read_bufferevent_string(event);
    if (serv_msg == NULL) {
        return;
    }
    success = 0;
    if (!process_response(serv_msg, print_message)) {
        free(serv_msg);
        return;
    }
    free(serv_msg);
    event_base_loopbreak(base);
}

// Global variable to hold user input; this is admittedly not ideal in production code,
// but simplifies the example.
extern char terminal_user_input[10240];



void show_incoming(struct bufferevent *bev, void *data) {
    pthread_mutex_lock(&client_msg_mutex);
    struct evbuffer *input = bufferevent_get_input(bev);
    size_t len = evbuffer_get_length(input);
    if (len == 0) return;

    char my_buffer[len + 1];
    char *buffer = my_buffer;
    evbuffer_copyout(input, buffer, len);
    buffer[len] = '\0';
    if (*buffer == '\0' && *(buffer + 1) != '\0') {
        buffer++;
    }

    if (strncmp(buffer, "INCOMING\n", 9) != 0) {
        return;
    }

    char *end = strstr(buffer, END_MARKER);
    if (end) {
        *end = '\0';

        // Step 1: Print a newline to move user's input to the next line.
        printf("\n");

        // Step 2: Print the incoming message in green.
        printf("\033[32m");  // Set text to green
        printf("\033[A\033[2K");
        printf("%s\n", buffer + 9);
        printf("\033[0m");  // Reset text color

        // Step 3: Reprint the prompt and the text the user was typing.
        printf("chat <%s> > %s", (char*)data, terminal_user_input);

        // Flush to make sure it all gets printed now
        fflush(stdout);

        // Drain the processed message from the input buffer
        evbuffer_drain(input, (end - buffer) + strlen(END_MARKER));
    } else {
        fprintf(stderr, "Warning: Received incomplete message.\n");
    }
    pthread_mutex_unlock(&client_msg_mutex);
}




