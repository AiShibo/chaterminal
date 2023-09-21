//
// Created by asnic on 9/3/2023.
//

#ifndef CHATERMINAL_SERVER_DB_CONNECT_H
#define CHATERMINAL_SERVER_DB_CONNECT_H

#include <mysql/mysql.h>
#include <stdio.h>
#include <stdlib.h>
#include "settings.h"

int db_connect();
int init_stmt();

#endif //CHATERMINAL_SERVER_DB_CONNECT_H
