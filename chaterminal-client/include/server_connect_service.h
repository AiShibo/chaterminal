//
// Created by asnic on 9/7/2023.
//

#ifndef CHATERMINAL_CLIENT_REBORN_SERVER_CONNECT_SERVICE_H
#define CHATERMINAL_CLIENT_REBORN_SERVER_CONNECT_SERVICE_H

#include <event2/event.h>
#include <event2/bufferevent.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>

#include "event_cb.h"
#include "auth_cb.h"


extern struct event_base *base;

struct bufferevent *connect_chat_server(char *ip, unsigned int port);

#endif //CHATERMINAL_CLIENT_REBORN_SERVER_CONNECT_SERVICE_H
