#include <stdio.h>
#include <pthread.h>

#include "server_connect_service.h"
#include "defines.h"
#include "user_cb.h"
#include "chat_cb.h"
#include <termios.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>

struct event_base *base;
struct bufferevent *event;
int success;
pthread_t chat_thread;
pthread_mutex_t client_msg_mutex = PTHREAD_MUTEX_INITIALIZER;
char terminal_user_input[10240]; // Global buffer
char g_username[50];
int stop;




// Initialize terminal to read one char at a time
void init_terminal(struct termios *oldt) {
    struct termios newt;

    // Get current terminal settings
    tcgetattr(STDIN_FILENO, oldt);

    // Make new settings
    newt = *oldt;
    newt.c_lflag &= ~(ICANON | ECHO);

    // Apply new settings
    tcsetattr(STDIN_FILENO, TCSANOW, &newt);
}

void process_user_input(char ch, int *idx, char *message, const char *username) {
    if (ch == '\n') {  // Enter key
        // Remove trailing newline, if any
        pthread_mutex_lock(&client_msg_mutex);
        terminal_user_input[*idx] = '\0';
        pthread_mutex_unlock(&client_msg_mutex);


        // Append the user's message
        pthread_mutex_lock(&client_msg_mutex);
        strncat(message, terminal_user_input, sizeof(message) - strlen(message) - 1);
        pthread_mutex_unlock(&client_msg_mutex);
        strncat(message, END_MARKER, sizeof(message) - strlen(message) - 1);

        // Here you would send `message` to its destination using bufferevent_write()
        // For demonstration, just printing it

        bufferevent_write(event, message, strlen(message));
        printf("\033[2K\r");
        pthread_mutex_lock(&client_msg_mutex);
        printf("%s\n", terminal_user_input);
        pthread_mutex_unlock(&client_msg_mutex);

        printf("\033[2K\r");
        // printf("chat <%s> > ", username);
        fflush(stdout);

        // Reset message and terminal_user_input for next iteration
        strncpy(message, "SENDMSG\n", 8);
        message[8] = '\0';
        strncat(message, username, sizeof(message) - strlen(message) - 1);
        strncat(message, "\n", sizeof(message) - strlen(message) - 1);
        pthread_mutex_lock(&client_msg_mutex);
        memset(terminal_user_input, 0, sizeof(terminal_user_input));
        pthread_mutex_unlock(&client_msg_mutex);
        *idx = 0;

    } else if (ch == 8 || ch == 127) {  // Delete or Backspace
        if (*idx > 0 && !stop) {
            pthread_mutex_lock(&client_msg_mutex);
            terminal_user_input[--(*idx)] = '\0';
            printf("\033[2K\r");
            printf("chat <%s> > %s", username, terminal_user_input);
            pthread_mutex_unlock(&client_msg_mutex);
        }
    } else {  // Regular character
        if (!stop) {
            pthread_mutex_lock(&client_msg_mutex);
            terminal_user_input[(*idx)++] = ch;
            terminal_user_input[(*idx)] = '\0';  // Null-terminate

            printf("\033[2K\r");
            printf("chat <%s> > %s", username, terminal_user_input);
            pthread_mutex_unlock(&client_msg_mutex);
        }
    }
}

void prompt_for_chat(const char *username) {
    struct termios oldt;
    char ch;
    int idx = 0;
    char message[1024];

    // Initialize terminal for non-canonical input
    init_terminal(&oldt);

    // Initialize message with "SENDMSG\n"
    strncpy(message, "SENDMSG\n", 8);
    message[8] = '\0';

    // Append username and a newline
    strncat(message, username, sizeof(message) - strlen(message) - 1);
    strncat(message, "\n", sizeof(message) - strlen(message) - 1);

    stop = 0;
    while (!stop) {
        // Print the prompt
        pthread_mutex_lock(&client_msg_mutex);
        if (strlen(terminal_user_input) == 0)
            printf("\rchat <%s> > ", username);
        pthread_mutex_unlock(&client_msg_mutex);
        fflush(stdout);

        // Read a character
        if ((read(STDIN_FILENO, &ch, 1) > 0) && !stop) {
            process_user_input(ch, &idx, message, username);
        }
    }

    // Restore terminal settings
    tcsetattr(STDIN_FILENO, TCSANOW, &oldt);

}

static void sigint_cb(evutil_socket_t sig, short events, void *user_data) {
    event_base_loopbreak(base);
    pthread_join(chat_thread, NULL);
    stop = 1;
    printf("\nexited! press any key to back to menu!\n");
}


struct ThreadArgs {
    struct bufferevent *bev;
    char *username;
};

void* start_event_loop(void *arg) {
    struct ThreadArgs *threadArgs = (struct ThreadArgs *) arg;
    struct bufferevent *bev = threadArgs->bev;
    char *username = threadArgs->username;

    // Create a signal event for SIGINT on the existing base
    struct event *signal_event = evsignal_new(base, SIGINT, sigint_cb, NULL);

    if (!signal_event || event_add(signal_event, NULL) < 0) {
        fprintf(stderr, "Could not create/add a signal event!\n");
        return NULL; // or handle error differently
    }

    bufferevent_setcb(bev, show_incoming, NULL, NULL, (void*)username);  // passing username as data

    // Dispatch the event loop
    event_base_dispatch(base);

    // Free the signal event; no need to free the base if it's global
    event_free(signal_event);

    // Free the allocated memory for thread arguments
    free(threadArgs);

    return NULL;
}


void handle_chat(const char *username) {
    char str[150];
    sprintf(str, "REQUEST\nHISTORY\n%s\n"END_MARKER, username);
    bufferevent_setcb(event, show_history, NULL, event_cb, (void*)username);
    bufferevent_write(event, str, strlen(str));
    event_base_dispatch(base);

    if (success) {
        // Allocate memory for thread arguments and set them
        struct ThreadArgs *threadArgs = (struct ThreadArgs *) malloc(sizeof(struct ThreadArgs));
        threadArgs->bev = event;
        threadArgs->username = strdup(username);  // Create a copy of the username

        pthread_create(&chat_thread, NULL, start_event_loop, (void *)threadArgs);
        prompt_for_chat(username);
    } else {
        printf("no such user!\n");
    }
}

void handle_show_users() {
    char *str = "REQUEST\nUSERS\n"END_MARKER;
    bufferevent_setcb(event, get_user, NULL, event_cb, NULL);
    bufferevent_write(event, str, strlen(str));
    event_base_dispatch(base);

}

void handle_add_user() {
    // TODO: Implement your logic for adding a user here
    printf("You chose to add a user\n");
}

void handle_delete_user() {
    // TODO: Implement your logic for deleting the current user here
    printf("You chose to delete the current user\n");
}

void handle_help() {
    printf("Available commands:\n");
    printf("chat <username>  : Chat with a user.\n");
    printf("show users       : Show list of users.\n");
    printf("add user         : Add a new user.\n");
    printf("delete user      : Delete the current account.\n");
}


int main() {
    setbuf(stdout, NULL); // for clion ide debugging
    char ip[16];
    unsigned int port;
    success = 0;
    while (!success) {
        printf("please enter the IP address of the server:\n");
        scanf("%15s", ip);
        printf("please enter the port number:\n");
        scanf("%d", &port);
        event = connect_chat_server(ip, port);
        event_base_dispatch(base);
    }


    success = 0;
    printf("connected to the server!\n");

    char username[51];
    while (!success) {
        printf("please enter your username: \n");
        char password[51];
        scanf("%50s", username);
        strncpy(g_username, username, strlen(username));
        g_username[strlen(username)] = '\0';

        printf("please enter your password: \n");
        scanf("%50s", password);
        char login_request[150];
        sprintf(login_request, "AUTH\n%s\n%s\n"END_MARKER, username, password);
        bufferevent_write(event, login_request, strlen(login_request));
        event_base_dispatch(base);
        if (!success) {
            printf("hmmm... that not seems to be right, lets try again!\n");
        }
    }
    printf("login successful! Hello %s\n", username);

    char input[256];
    char *cmd, *arg;

    while (1) {
        printf("> ");
        if (fgets(input, sizeof(input), stdin) == NULL) {
            printf("An error occurred while reading input.\n");
            continue;
        }

        // Remove trailing newline character
        size_t len = strlen(input);
        if (len > 0 && input[len - 1] == '\n') {
            input[len - 1] = '\0';
        }

        cmd = strtok(input, " ");
        arg = strtok(NULL, " ");

        if (cmd) {
            if (strcmp(cmd, "chat") == 0) {
                if (arg) {
                    if (strcmp(arg, username) == 0) {
                        printf("You can chat with yourself without using this program.\n");
                    } else {
                        handle_chat(arg);
                    }
                } else {
                    printf("Username not provided for chat.\n");
                }
            } else if (strcmp(cmd, "show") == 0 && arg && strcmp(arg, "users") == 0) {
                handle_show_users();
            } else if (strcmp(cmd, "add") == 0 && arg && strcmp(arg, "user") == 0) {
                handle_add_user();
            } else if (strcmp(cmd, "delete") == 0 && arg && strcmp(arg, "user") == 0) {
                handle_delete_user();
            } else if (strcmp(cmd, "help") == 0) {
                handle_help();
            } else {
                printf("Unknown command. Type 'help' for a list of commands.\n");
            }
        }
    }


}
