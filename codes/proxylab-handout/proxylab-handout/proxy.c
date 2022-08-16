#include <stdio.h>
#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *connection_close = "Connection: close\r\nProxy-Connection: close\r\n";

void proxy(int connfd) {
    char *hostname = Malloc(30*sizeof(char));
    char *port = Malloc(8*sizeof(char));
    strcpy(port, "80");

    int clientfd;
    size_t n;
    char buf[MAXLINE];
    char host_line[MAXLINE];
    char get_line[MAXLINE];
    rio_t rio;

    Rio_readinitb(&rio, connfd);
    while ((n = Rio_readlineb(&rio, buf, MAXLINE)) != 0) {
        char tmp[8];
        strncpy(tmp, buf, 5);
        if (strcmp(tmp, "Host:") == 0) {
            strcpy(host_line, buf);
            buf[n] = 0;
            for (char *t = buf; (*t) != 0; t++) {
                if ((*t) == ':') {
                    char *tmp2 = t + 1;
                    while (isdigit(*tmp2)) tmp2++;
                    *tmp2 = 0;
                    strcpy(port, t + 1);
                    *t = 0;
                }
                if ((*t) == '/') {
                    *t = 0;
                }
            }
            strcpy(hostname, buf + 6);
        }
        tmp[3] = 0;
        if (strcmp(tmp, "GET") == 0) {
            strcpy(get_line, buf);
            if (get_line[n - 1] == '1') {
                get_line[n - 1] = '0';
            }
        }
    }
    if (hostname[strlen(hostname) - 1] == '\n') {
        hostname[strlen(hostname) - 1] = '\0';
    }

    clientfd = Open_clientfd(hostname, port);
    Rio_writen(clientfd, get_line, strlen(get_line));
    Rio_writen(clientfd, (void*)user_agent_hdr, sizeof(user_agent_hdr));
    Rio_writen(clientfd, (void*)connection_close, sizeof(connection_close));
    Rio_writen(clientfd, host_line, strlen(host_line));

    Rio_readinitb(&rio, clientfd);
    while ((n = Rio_readlineb(&rio, buf, MAXLINE)) != 0) {
        Rio_writen(connfd, buf, n);
    }

    Free(hostname);
    Free(port);
}

void *thread(void *vargp) {
    int connfd = *((int*) vargp);
    Pthread_detach(pthread_self());
    Free(vargp);
    proxy(connfd);
    Close(connfd);
    return NULL;
}

int main(int argc, char **argv)
{
    printf("%s", user_agent_hdr);

    int listen_fd, *connfdp;
    socklen_t clientlen;
    struct sockaddr_storage client_addr;
    pthread_t tid;

    if (argc > 2) {
        fprintf(stderr, "usage: \n");
        exit(0);
    }
    if (argc == 2) {
        listen_fd = Open_listenfd(argv[1]);
    }
    else {
        listen_fd = Open_listenfd("15213");
    }

    while (1) {
        clientlen = sizeof(struct sockaddr_storage);
        connfdp = Malloc(sizeof(int));
        *connfdp = Accept(listen_fd, (SA *) &client_addr, &clientlen);
        Pthread_create(&tid, NULL, thread, connfdp);
    }

    return 0;
}
