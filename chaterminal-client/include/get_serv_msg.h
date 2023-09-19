//
// Created by asnic on 9/7/2023.
//

#ifndef CHATERMINAL_CLIENT_GET_SERV_MSG_H
#define CHATERMINAL_CLIENT_GET_SERV_MSG_H


#include <event2/bufferevent.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "defines.h"

char* read_bufferevent_string(struct bufferevent *bev);


#endif //CHATERMINAL_CLIENT_GET_SERV_MSG_H
