//
// Created by asnic on 9/7/2023.
//

#ifndef CHATERMINAL_CLIENT_AUTH_CB_H
#define CHATERMINAL_CLIENT_AUTH_CB_H

#include <event2/bufferevent.h>
#include <stdio.h>
#include <string.h>
#include <event2/event.h>
#include "defines.h"
#include "get_serv_msg.h"

extern int success;
extern struct event_base *base;


void request_auth(struct bufferevent *event, void *data);

#endif //CHATERMINAL_CLIENT_AUTH_CB_H
