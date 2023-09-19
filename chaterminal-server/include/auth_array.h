//
// Created by asnic on 9/3/2023.
//

#ifndef CHATERMINAL_SERVER_AUTH_ARRAY_H
#define CHATERMINAL_SERVER_AUTH_ARRAY_H


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <event2/bufferevent.h>
#include <event2/event.h>


typedef struct {
    char *username;
    int fd;
    struct bufferevent *bev;
} user_credent;



void set_credent(const char *username, int fd, struct bufferevent *);
int init_auth_arr();
int get_fd_by_username(const char *username);
struct bufferevent* get_bev_by_username(const char *username);
void remove_credent(const char *username);
void destroy();
const char* get_username_from_bufferevent(struct bufferevent *bev);


#endif //CHATERMINAL_SERVER_AUTH_ARRAY_H
