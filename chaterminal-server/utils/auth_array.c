//
// Created by asnic on 9/3/2023.
//


#include "auth_array.h"

int arr_size = 64;
user_credent *credents;
int current_size = 0;

int init_auth_arr() {
    credents = (user_credent *)malloc(arr_size * sizeof(user_credent));
    return (credents != NULL) ? 1 : 0;
}

const char* get_username_from_bufferevent(struct bufferevent *bev) {
    if (bev == NULL) {
        return NULL;
    }

    int fd = bufferevent_getfd(bev);
    if (fd < 0) {
        return NULL;
    }

    for (int i = 0; i < current_size; i++) {
        if (credents[i].fd == fd) {
            return credents[i].username;
        }
    }

    return NULL;
}

void set_credent(const char *username, int fd, struct bufferevent *bev) {
    if (current_size == arr_size) {
        arr_size *= 2;
        credents = (user_credent *)realloc(credents, arr_size * sizeof(user_credent));
    }
    credents[current_size].username = strdup(username);
    credents[current_size].fd = fd;
    credents[current_size].bev = bev;
    current_size++;
    //-------------------------------------------
    printf("User '%s' has logged in.\n", username);
    printf("Current logged-in users: ");
    for(int i = 0; i < current_size; i++) {
        printf("%s ", credents[i].username);
    }
    printf("\n");
}

int get_fd_by_username(const char *username) {
    for (int i = 0; i < current_size; i++) {
        if (strcmp(credents[i].username, username) == 0) {
            return credents[i].fd;
        }
    }
    return -1;
}

struct bufferevent* get_bev_by_username(const char *username) {
    for (int i = 0; i < current_size; i++) {
        if (strcmp(credents[i].username, username) == 0) {
            return credents[i].bev;
        }
    }
    return NULL; // Not found
}


void remove_credent(const char *username) {
    int index = -1;
    for (int i = 0; i < current_size; i++) {
        if (strcmp(credents[i].username, username) == 0) {
            index = i;
            break;
        }
    }

    if (index == -1) {
        return;
    }

    free(credents[index].username);

    for (int i = index; i < current_size - 1; i++) {
        credents[i] = credents[i + 1];
    }

    current_size--;

    if (current_size < arr_size / 4) {
        arr_size /= 2;
        credents = (user_credent *)realloc(credents, arr_size * sizeof(user_credent));
    }
    //-------------------------------------------
    printf("User '%s' has logged out.\n", username);
    printf("Current logged-in users: ");
    for(int i = 0; i < current_size; i++) {
        printf("%s ", credents[i].username);
    }
    printf("\n");
}

void destroy() {
    for (int i = 0; i < current_size; i++) {
        free(credents[i].username);
    }
    free(credents);
    credents = NULL;
}
