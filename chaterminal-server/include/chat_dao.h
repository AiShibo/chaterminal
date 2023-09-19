//
// Created by asnic on 9/7/2023.
//

#ifndef CHATERMINAL_SERVER_CHAT_DAO_H
#define CHATERMINAL_SERVER_CHAT_DAO_H

#include <mysql/mysql.h>
#include <stdio.h>
#include <stdlib.h>

#include <event2/bufferevent.h>
#include <event2/event.h>
#include <string.h>

extern MYSQL *conn;
extern MYSQL_STMT *stmt;

char *get_chat_history(const char *senderUsername, const char *receiverUsername);
int insert_chat(const char *senderUsername, const char *receiverUsername, const char *chat_msg);


#endif //CHATERMINAL_SERVER_CHAT_DAO_H
