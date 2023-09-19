//
// Created by asnic on 9/7/2023.
//

#include "process_response.h"

int process_response(char *complete_response, void (*handler)(char *, char *)) {
    if (strncmp(complete_response, "INCOMING\n", strlen("INCOMING\n")) == 0) {
        return 0;
    }
    if (strncmp(complete_response, "SUCCESS\n", strlen("SUCCESS\n")) != 0) {
        success = 0;
        return 1;
    } else {
        success = 1;
    }
    complete_response += strlen("SUCCESS\n");

    char *start_of_line = complete_response;
    char *end_of_line = NULL;

    while ((end_of_line = strchr(start_of_line, '\n')) != NULL) {
        // Temporarily null-terminate the line for the string comparison
        *end_of_line = '\0';

        if (strcmp(start_of_line, END_MARKER) == 0) {
            // Restore the '\n' (if it was present) before returning
            if (end_of_line != complete_response + strlen(complete_response)) {
                *end_of_line = '\n';
            }
            return 1;
        }

        // Call the handler function to process this line
        handler(start_of_line, end_of_line);

        // Restore the '\n' and move the start pointer to the next line
        *end_of_line = '\n';
        start_of_line = end_of_line + 1;
    }

    // Special handling for END_MARKER at the end of the complete response
    if (strcmp(start_of_line, END_MARKER) == 0) {
        return 1;
    }
    printf("Warning: END_MARKER not found.\n");
    return 1;
}
