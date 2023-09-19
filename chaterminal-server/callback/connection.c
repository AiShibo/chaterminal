//
// Created by asnic on 9/3/2023.
//

#include "connection.h"

void connect_cb(struct evconnlistener *listener, evutil_socket_t fd,
                       struct sockaddr *sa, int socklen, void *v_base) {

    struct event_base *base = v_base;
    struct bufferevent *bev = bufferevent_socket_new(base, fd, BEV_OPT_CLOSE_ON_FREE);
    if (!bev) {
        fprintf(stderr, "failed to initialize bufferevent for the new connection...");
        exit(-1);
    }

    bufferevent_setcb(bev, authentication, NULL, event_cb, NULL);
    bufferevent_enable(bev, EV_WRITE | EV_READ);
}

void event_cb(struct bufferevent *bev, short events, void *user_data) {
    if (events & BEV_EVENT_EOF) {
        printf("Connection closed.\n");
        if (user_data != NULL) {
            const char *username = user_data;
            remove_credent(username);
            free(user_data);
        }
    } else if (events & BEV_EVENT_ERROR) {
        printf("Got an error on the connection: %s\n", strerror(errno));
    }
    bufferevent_free(bev);
}