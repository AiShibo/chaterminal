//
// Created by asnic on 9/3/2023.
//

#ifndef CHATERMINAL_SERVER_CONNECTION_H
#define CHATERMINAL_SERVER_CONNECTION_H



#include "auth.h"

void connect_cb(struct evconnlistener *, evutil_socket_t, struct sockaddr *, int socklen, void *);
void event_cb(struct bufferevent *, short, void *);

#endif //CHATERMINAL_SERVER_CONNECTION_H
