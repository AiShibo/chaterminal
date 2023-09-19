//
// Created by asnic on 9/3/2023.
//

#ifndef CHATERMINAL_SERVER_REQ_DISPATCHER_H
#define CHATERMINAL_SERVER_REQ_DISPATCHER_H

#include <event2/bufferevent.h>
#include <stdio.h>
#include <unistd.h>
#include "client_msg.h"
#include "request_service.h"
#include "auth_array.h"

void serv_dispatch(struct bufferevent * event, void *data);

#endif //CHATERMINAL_SERVER_REQ_DISPATCHER_H
