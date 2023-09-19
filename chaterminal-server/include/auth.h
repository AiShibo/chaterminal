//
// Created by asnic on 9/3/2023.
//

#ifndef CHATERMINAL_SERVER_AUTH_H
#define CHATERMINAL_SERVER_AUTH_H

#include "auth_array.h"
#include "client_msg.h"
#include "config.h"
#include "req_dispatcher.h"
#include "connection.h"
#include "auth_service.h"
#include "stat_response_service.h"
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <stdlib.h>
#include <event2/util.h>
#include <event2/bufferevent.h>
#include <event2/buffer.h>
#include <event2/listener.h>
#include <event2/event.h>

void authentication(struct bufferevent *, void *);

#endif //CHATERMINAL_SERVER_AUTH_H
