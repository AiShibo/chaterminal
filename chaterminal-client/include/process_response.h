//
// Created by asnic on 9/7/2023.
//

#ifndef CHATERMINAL_CLIENT_PROCESS_RESPONSE_H
#define CHATERMINAL_CLIENT_PROCESS_RESPONSE_H

#include <string.h>
#include "defines.h"
#include <stdio.h>

extern int success;
int process_response(char *complete_response, void (*handler)(char *, char *));

#endif //CHATERMINAL_CLIENT_PROCESS_RESPONSE_H
