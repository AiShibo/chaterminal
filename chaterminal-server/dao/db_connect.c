//
// Created by asnic on 9/3/2023.
//
#include "db_connect.h"

MYSQL *conn;
MYSQL_STMT *stmt;

int db_connect() {
    const char *server = DB_SERVER_IP;
    const char *user = DB_USERNAME;
    const char *password = DB_PASSWORD;
    const char *database = DB_NAME;

    conn = mysql_init(NULL);

    /* Connect to database */
    if (mysql_real_connect(conn, server, user, password, database, 0, NULL, 0) == NULL) {
        fprintf(stderr, "mysql_real_connect() failed: %s\n", mysql_error(conn));
        mysql_close(conn);
        return 0;
    }
    return 1;
}

int init_stmt() {
    stmt = mysql_stmt_init(conn);
    return stmt != NULL;
}
