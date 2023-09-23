#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    // Run the batch program
    system("spark.bat");

    // Get the current time
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);
    char timestamp[20];
    strftime(timestamp, sizeof(timestamp), "%Y-%m-%d %H:%M:%S", tm);

    // Open the log file in append mode
    FILE *logFile = fopen("Clog.txt", "a");
    if (logFile == NULL) {
        printf("Error opening log file.\n");
        return 1;
    }

    // Write the timestamp to the log file
    fprintf(logFile, "Batch program executed at: %s\n", timestamp);

    // Close the log file
    fclose(logFile);

    return 0;
}
