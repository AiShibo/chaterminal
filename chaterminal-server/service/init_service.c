//
// Created by asnic on 9/3/2023.
//
#include "init_service.h"

int serv_init() {
    int okay = 1;
    okay = okay & db_connect();
    okay = okay & init_stmt();
    okay = okay & init_auth_arr();
    okay = okay & init_client_msg();
    return okay;
}

