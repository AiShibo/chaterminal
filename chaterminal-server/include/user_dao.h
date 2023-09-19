//
// Created by asnic on 9/3/2023.
//

#ifndef CHATERMINAL_SERVER_USER_DAO_H
#define CHATERMINAL_SERVER_USER_DAO_H

#include <stdio.h>
#include <mysql/mysql.h>
#include <string.h>
extern MYSQL *conn;
extern MYSQL_STMT *stmt;

char *get_passwd_by_usr_name(const char *user_name);
char *get_all_users();
int check_user_exists(const char *user_name);


#endif //CHATERMINAL_SERVER_USER_DAO_H
