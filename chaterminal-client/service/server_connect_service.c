//
// Created by asnic on 9/7/2023.
//

#include "server_connect_service.h"

struct bufferevent *connect_chat_server(char *ip, unsigned int port) {
    base = event_base_new();
    if (!base) {
        fprintf(stderr, "error initializing event base!");
        exit(-1);
    }

    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(port);

    if (inet_pton(AF_INET, ip, &server_addr.sin_addr) <= 0) {
        return NULL;
    }
    struct bufferevent *event = bufferevent_socket_new(base, -1, BEV_OPT_CLOSE_ON_FREE);
    if (event == NULL) {
        fprintf(stderr, "error creating buffer event!");
        exit(-1);
    }
    bufferevent_enable(event, EV_READ|EV_WRITE|EV_PERSIST);
    bufferevent_setcb(event, request_auth, NULL, event_cb, base);
    bufferevent_enable(event, EV_READ|EV_WRITE);

    if (bufferevent_socket_connect(event, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
        /* Error starting connection */
        bufferevent_free(event);
        fprintf(stderr, "error connecting to server!");
        return NULL;
    }
    return event;
}
