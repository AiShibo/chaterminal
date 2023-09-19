//
// Created by asnic on 9/7/2023.
//

#ifndef CHATERMINAL_CLIENT_EVENT_CB_H
#define CHATERMINAL_CLIENT_EVENT_CB_H

#include <event2/bufferevent.h>
#include <stdio.h>
#include <stdlib.h>
#include <event2/event.h>

extern struct event_base *base;
extern int success;

void event_cb(struct bufferevent *bev, short events, void *ptr);

#endif //CHATERMINAL_CLIENT_EVENT_CB_H
