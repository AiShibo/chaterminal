//
// Created by asnic on 9/7/2023.
//

#ifndef CHATERMINAL_CLIENT_CHAT_CB_H
#define CHATERMINAL_CLIENT_CHAT_CB_H

#include <event2/bufferevent.h>
#include "get_serv_msg.h"
#include "process_response.h"
#include <event2/event.h>
#include <string.h>
#include <stdio.h>
#include <event2/buffer.h>
#include <ncurses.h>
#include <ncurses.h> // include the ncurses header
#include <pthread.h>

extern pthread_mutex_t client_msg_mutex;

extern struct event_base *base;
extern char g_username[50];

void show_history(struct bufferevent *event, void *data);
void show_incoming(struct bufferevent *bev, void *data);

#endif //CHATERMINAL_CLIENT_CHAT_CB_H
