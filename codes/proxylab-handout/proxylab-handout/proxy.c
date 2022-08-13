#include <stdio.h>
#include <csapp.h>

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";


void proxy(int connfd) {
    char *hostname = Malloc(30*sizeof(char));
    char *port = Malloc(8*sizeof(char));
    int clientfd;

    while (Rio_readn(connfd, )) {

    }

    clientfd = Open_clientfd(hostname, port);
    Rio_writen(clientfd, );
    while (Rio_readn(clientfd, )) {

    }
    Rio_writen(connfd, );
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
