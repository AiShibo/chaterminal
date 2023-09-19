//
// Created by asnic on 9/7/2023.
//

#include "chat_dao.h"


char *get_chat_history(const char *senderUsername, const char *receiverUsername) {
    char query[] = "SELECT SenderUsername, Text FROM Chats WHERE (SenderUsername=? AND ReceiverUsername=?) "
                   "OR (SenderUsername=? AND ReceiverUsername=?) ORDER BY CreatedAt DESC LIMIT 100";
    MYSQL_BIND params[4], result[2];
    unsigned long len[2];
    size_t total_len = 0;
    char *chat_history = NULL; // Dynamic string to store chat history
    char *temp_history = NULL;

    // Prepare the statement
    if (mysql_stmt_prepare(stmt, query, strlen(query))) {
        printf("Prepare error: %s\n", mysql_stmt_error(stmt));
        return NULL;
    }

    // Bind parameters
    memset(params, 0, sizeof(params));
    params[0].buffer_type = MYSQL_TYPE_STRING;
    params[0].buffer = (void *)senderUsername;
    params[0].buffer_length = strlen(senderUsername);

    params[1].buffer_type = MYSQL_TYPE_STRING;
    params[1].buffer = (void *)receiverUsername;
    params[1].buffer_length = strlen(receiverUsername);

    params[2].buffer_type = MYSQL_TYPE_STRING;
    params[2].buffer = (void *)receiverUsername;
    params[2].buffer_length = strlen(receiverUsername);

    params[3].buffer_type = MYSQL_TYPE_STRING;
    params[3].buffer = (void *)senderUsername;
    params[3].buffer_length = strlen(senderUsername);

    if (mysql_stmt_bind_param(stmt, params)) {
        printf("Bind error: %s\n", mysql_stmt_error(stmt));
        return NULL;
    }

    // Execute query
    if (mysql_stmt_execute(stmt)) {
        printf("Execute error: %s\n", mysql_stmt_error(stmt));
        return NULL;
    }

    // Bind results
    memset(result, 0, sizeof(result));
    char senderBuffer[50], textBuffer[500];  // Assuming text can be up to 500 characters

    result[0].buffer_type = MYSQL_TYPE_STRING;
    result[0].buffer = senderBuffer;
    result[0].buffer_length = sizeof(senderBuffer);
    result[0].length = &len[0];

    result[1].buffer_type = MYSQL_TYPE_STRING;
    result[1].buffer = textBuffer;
    result[1].buffer_length = sizeof(textBuffer);
    result[1].length = &len[1];

    if (mysql_stmt_bind_result(stmt, result)) {
        printf("Bind error: %s\n", mysql_stmt_error(stmt));
        return NULL;
    }

    // Fetch rows and append to temp_history
    while (mysql_stmt_fetch(stmt) == 0) {
        size_t new_len = len[0] + 2 + len[1] + 1; // +2 for ': ', +1 for '\n'
        char *record = malloc(new_len + 1); // +1 for '\0'

        if (record == NULL) {
            free(temp_history);
            printf("Memory allocation error\n");
            return NULL;
        }

        snprintf(record, new_len + 1, "%.*s: %.*s\n", (int)len[0], senderBuffer, (int)len[1], textBuffer);

        char *new_chat_history = realloc(chat_history, total_len + new_len + 1); // +1 for '\0'

        if (new_chat_history == NULL) {
            free(chat_history);
            free(record);
            printf("Memory allocation error\n");
            return NULL;
        }

        chat_history = new_chat_history;
        memmove(chat_history + new_len, chat_history, total_len);
        memcpy(chat_history, record, new_len);

        free(record);

        total_len += new_len;
        chat_history[total_len] = '\0';
    }

    mysql_stmt_free_result(stmt);
    mysql_stmt_reset(stmt);

    return chat_history;
}



int insert_chat(const char *senderUsername, const char *receiverUsername, const char *chat_msg) {
    char query[] = "INSERT INTO Chats (SenderUsername, ReceiverUsername, Text) VALUES (?, ?, ?)";
    MYSQL_BIND params[3];
    int success = 1;

    // Prepare the statement
    if (mysql_stmt_prepare(stmt, query, strlen(query))) {
        printf("Prepare error: %s\n", mysql_stmt_error(stmt));
        success = 0;
        goto cleanup;
    }

    // Bind parameters
    memset(params, 0, sizeof(params));

    params[0].buffer_type = MYSQL_TYPE_STRING;
    params[0].buffer = (void *)senderUsername;
    params[0].buffer_length = strlen(senderUsername);

    params[1].buffer_type = MYSQL_TYPE_STRING;
    params[1].buffer = (void *)receiverUsername;
    params[1].buffer_length = strlen(receiverUsername);

    params[2].buffer_type = MYSQL_TYPE_STRING;
    params[2].buffer = (void *)chat_msg;
    params[2].buffer_length = strlen(chat_msg);

    if (mysql_stmt_bind_param(stmt, params)) {
        printf("Bind error: %s\n", mysql_stmt_error(stmt));
        success = 0;
        goto cleanup;
    }

    // Execute query
    if (mysql_stmt_execute(stmt)) {
        printf("Execute error: %s\n", mysql_stmt_error(stmt));
        success = 0;
        goto cleanup;
    }

    cleanup:
    mysql_stmt_reset(stmt);

    return success;
}




