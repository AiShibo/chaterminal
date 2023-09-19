//
// Created by asnic on 9/3/2023.
//


#include "user_dao.h"

MYSQL_BIND bind[1];

char *get_passwd_by_usr_name(const char *user_name) {
    if (!stmt) {
        fprintf(stderr, "failed to initialize sql stmt: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    // compile the sql statement
    const char *query = "SELECT Password FROM Users WHERE Username=?";
    if (mysql_stmt_prepare(stmt, query, strlen(query))) {
        fprintf(stderr, "mysql_stmt_prepare() failed: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    bzero(bind, sizeof(bind));

    bind[0].buffer_type = MYSQL_TYPE_STRING;
    bind[0].buffer = (char *)user_name;
    bind[0].buffer_length = strlen(user_name);

    if (mysql_stmt_bind_param(stmt, bind)) {
        fprintf(stderr, "mysql_stmt_bind_param() failed: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    if (mysql_stmt_execute(stmt)) {
        fprintf(stderr, "mysql_stmt_execute() failed: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    char password_buffer[51];
    unsigned long length;

    MYSQL_BIND result[1]; // at most one result
    bzero(result, sizeof(result));

    result[0].buffer_type = MYSQL_TYPE_STRING;
    result[0].buffer = password_buffer;
    result[0].buffer_length = sizeof(password_buffer);
    result[0].length = &length;

    mysql_stmt_bind_result(stmt, result);

    if (mysql_stmt_fetch(stmt) != 0) {
        mysql_stmt_close(stmt);
        return NULL; // no record found
    }

    password_buffer[length] = '\0';  // end the string
    char *password = strdup(password_buffer); // freed in the service layer
    return password;
}

char *get_all_users() {
    char query[] = "SELECT Username FROM Users";
    MYSQL_BIND result[1];
    unsigned long len;
    int index = 0;
    char *all_users = NULL; // Dynamic string to store all users
    size_t total_len = 0; // Total length of all_users

    if (mysql_stmt_prepare(stmt, query, strlen(query))) {
        printf("Prepare error: %s\n", mysql_stmt_error(stmt));
        return NULL;
    }

    if (mysql_stmt_execute(stmt)) {
        printf("Execute error: %s\n", mysql_stmt_error(stmt));
        return NULL;
    }

    memset(result, 0, sizeof(result));
    result[0].buffer_type = MYSQL_TYPE_STRING;
    char buffer[50];
    result[0].buffer = buffer;
    result[0].buffer_length = sizeof(buffer);
    result[0].length = &len;

    if (mysql_stmt_bind_result(stmt, result)) {
        printf("Bind error: %s\n", mysql_stmt_error(stmt));
        return NULL;
    }

    while (mysql_stmt_fetch(stmt) == 0) {
        size_t new_len = total_len + len + 1; // +1 for the '\n'
        char *new_all_users = realloc(all_users, new_len + 1); // +1 for the '\0'

        if (new_all_users == NULL) {
            free(all_users);
            printf("Memory allocation error\n");
            return NULL;
        }

        all_users = new_all_users;
        memcpy(all_users + total_len, buffer, len);
        all_users[new_len - 1] = '\n';
        all_users[new_len] = '\0';
        total_len = new_len;
    }

    mysql_stmt_free_result(stmt);
    mysql_stmt_reset(stmt);

    return all_users;
}

int check_user_exists(const char *user_name) {
    if (!stmt) {
        fprintf(stderr, "failed to initialize sql stmt: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    // compile the sql statement
    const char *query = "SELECT Username FROM Users WHERE Username=?";
    if (mysql_stmt_prepare(stmt, query, strlen(query))) {
        fprintf(stderr, "mysql_stmt_prepare() failed: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    MYSQL_BIND bind[1];
    bzero(bind, sizeof(bind));

    bind[0].buffer_type = MYSQL_TYPE_STRING;
    bind[0].buffer = (char *)user_name;
    bind[0].buffer_length = strlen(user_name);

    if (mysql_stmt_bind_param(stmt, bind)) {
        fprintf(stderr, "mysql_stmt_bind_param() failed: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    if (mysql_stmt_execute(stmt)) {
        fprintf(stderr, "mysql_stmt_execute() failed: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    MYSQL_BIND result[1];
    unsigned long length;
    char buffer[51];  // assuming usernames are at most 50 characters long

    bzero(result, sizeof(result));

    result[0].buffer_type = MYSQL_TYPE_STRING;
    result[0].buffer = buffer;
    result[0].buffer_length = sizeof(buffer);
    result[0].length = &length;

    if (mysql_stmt_bind_result(stmt, result)) {
        fprintf(stderr, "mysql_stmt_bind_result() failed: %s\n", mysql_stmt_error(stmt));
        exit(-1);
    }

    if (mysql_stmt_fetch(stmt) == 0) {
        mysql_stmt_free_result(stmt);
        mysql_stmt_reset(stmt);
        return 1;  // record found, user exists
    } else {
        mysql_stmt_free_result(stmt);
        mysql_stmt_reset(stmt);
        return 0;  // no record found, user does not exist
    }
}
