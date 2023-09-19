//
// Created by asnic on 9/3/2023.
//
#include "auth_service.h"

int check_credent(const char *username, const char *password) {
    char *corr_password = get_passwd_by_usr_name(username);
    if (strcmp(password, corr_password) != 0) {
        free(corr_password);
        return 0;
    }
    free(corr_password);
    return 1;
}
