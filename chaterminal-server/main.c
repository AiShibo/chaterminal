

#include "auth.h"
#include "connection.h"
#include "init_service.h"
#include "settings.h"


int main(int argc, char **argv) {
    if (!serv_init()) {
        fprintf(stderr, "failed to init the program, make sure you run chaterminal-init before starting the server !");
    }
    struct event_base *base = event_base_new();
    if (!base) {
        fprintf(stderr, "Failed to initialize event base!\n");
        return -1;
    }
    struct sockaddr_in sin = {0}; // initialize server parameter
    sin.sin_family = AF_INET; // use tcp protocol
    sin.sin_port = htons(PORT); // set server listen port

    struct evconnlistener *listener = evconnlistener_new_bind(base, connect_cb, (void *)base,
            LEV_OPT_REUSEABLE|LEV_OPT_CLOSE_ON_FREE, -1,(struct sockaddr*)&sin, sizeof(sin));
    event_base_dispatch(base);
}
