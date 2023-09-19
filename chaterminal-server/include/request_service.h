//
// Created by asnic on 9/4/2023.
//

#ifndef CHATERMINAL_SERVER_REQUEST_SERVICE_H
#define CHATERMINAL_SERVER_REQUEST_SERVICE_H

#include <string.h>
#include "stat_response_service.h"
#include "user_dao.h"
#include "auth_array.h"
#include "user_dao.h"
#include "chat_dao.h"

void request_sub_dispatcher(char *msg, struct bufferevent *event);

#endif //CHATERMINAL_SERVER_REQUEST_SERVICE_H
