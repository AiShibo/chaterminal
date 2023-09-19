//
// Created by asnic on 9/7/2023.
//




#include "event_cb.h"

void event_cb(struct bufferevent *bev, short events, void *ptr) {
    if (events & BEV_EVENT_CONNECTED) {
        success = 1;
    } else if (events & BEV_EVENT_ERROR) {
        /* An error occurred while connecting */
        int err = bufferevent_socket_get_dns_error(bev);
        if (err) {
            printf("DNS error: %s\n", evutil_gai_strerror(err));
        }
        perror("Error! ");
        success = 0;
    } else {
        perror("Unknown error!");
        success = 0;
    }
    event_base_loopbreak(base);
}
