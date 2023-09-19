//
// Created by asnic on 9/4/2023.
//

#ifndef CHATERMINAL_SERVER_CLIENT_MSG_H
#define CHATERMINAL_SERVER_CLIENT_MSG_H

#include <event2/bufferevent.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#ifdef DEBUG
#define END_MARKER "EOS"
#else
#define END_MARKER "X1Z9a7F4U2"
#endif

#define MAX_REQ_SIZ 10240


typedef struct {
    int curr_msg_size;
    char *prev_msg;
    int fd;
} client_msg;



int init_client_msg();

char *read_msg(struct bufferevent *bv);

#endif //CHATERMINAL_SERVER_CLIENT_MSG_H


