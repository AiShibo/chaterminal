//
// Created by asnic on 9/3/2023.
//

#ifndef CHATERMINAL_SERVER_STAT_RESPONSE_SERVICE_H
#define CHATERMINAL_SERVER_STAT_RESPONSE_SERVICE_H

#include <event2/bufferevent.h>
#include <stdio.h>
#include <string.h>
#include "client_msg.h"

void send_err(const char *err_msg, struct bufferevent *event);
void send_success(const char *msg, struct bufferevent *event);
void send_msg(const char *msg, struct bufferevent *event);

#endif //CHATERMINAL_SERVER_STAT_RESPONSE_SERVICE_H
