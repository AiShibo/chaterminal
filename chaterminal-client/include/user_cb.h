//
// Created by asnic on 9/7/2023.
//

#ifndef CHATERMINAL_CLIENT_USER_CB_H
#define CHATERMINAL_CLIENT_USER_CB_H

#include <event2/bufferevent.h>
#include "get_serv_msg.h"
#include "process_response.h"
#include <event2/event.h>

extern struct event_base *base;

void get_user (struct bufferevent *event, void *data);

#endif //CHATERMINAL_CLIENT_USER_CB_H
