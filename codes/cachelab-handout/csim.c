#define  _POSIX_C_SOURCE 200809L

#include "cachelab.h"

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <getopt.h>
#include <string.h>
#include <ctype.h>


static int S = 1;
static int E = 1;
static int B = 1;
static int s = 1;
static int b = 1;


typedef struct line{
    int valid;
    long tag;
    char* blocks;
    int count;
} line;

typedef struct set{
    line* lines;
    int count;
} set;

typedef struct cache{
    int v;
    int hits;
    int misses;
    int evictions;
    set* sets;
} cache;


void init_line(line* self){
    self->blocks = (char *) malloc(B * sizeof(char));
    self->valid = 1;
    self->tag = 0;
    self->count = 0;
}

void init_set(set* self){
    self->lines = (line*) malloc(E * sizeof(line));
    self->count = 0;
    for(int i = 0; i < E; ++i) {
        init_line(&self->lines[i]);
    }
}

void init_cache(cache* self){
    self->hits = 0;
    self->misses = 0;
    self->evictions = 0;
    self->sets = (set*) malloc(S * sizeof(set));
    for(int i = 0; i < S; ++i) {
        init_set(&self->sets[i]);
    }
}

// return value:
//  0 --- miss
//  1 --- hit
//  2 --- eviction
int read_in(cache* self, long address) {
    long s_in = (address >> b) & ((1 << s) - 1);
    long t_in = address >> (s + b);
    for (int i = 0; i < E; ++i) {
        if (self->sets[s_in].lines[i].valid == 0 && self->sets[s_in].lines[i].tag == t_in) {
            self->sets[s_in].lines[i].count = ++(self->sets[s_in].count);
            return 1;
        }
    }
    for (int i = 0; i < E; ++i) {
        if (self->sets[s_in].lines[i].valid == 1) {
            self->sets[s_in].lines[i].valid = 0;
            self->sets[s_in].lines[i].tag = t_in;
            self->sets[s_in].lines[i].count = ++(self->sets[s_in].count);
            return 0;
        }
    }

    int replace = 0;
    for (int i = 0; i < E; ++i) {
        if (self->sets[s_in].lines[i].count < self->sets[s_in].lines[replace].count) {
            replace = i;
        }
    }
    self->sets[s_in].lines[replace].tag = t_in;
    self->sets[s_in].lines[replace].count = ++(self->sets[s_in].count);
    return 2;
}


int main(int argc, char* argv[])
{
    cache* c_sim = (cache*)malloc(sizeof(cache));
    c_sim->v = 0;
    char* trace;
    char c;
    while((c=getopt(argc, argv, ":s:E:b:t:vh")) != -1) {
        switch(c){
            case 's':
                s = atoi(optarg);
                S = 1 << s;
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                B = 1 << b;
                break;
            case 't':
                trace = optarg;
                break;
            case 'v':
                c_sim->v = 1;
                break;
            case 'h':
                printf("fuck\n");
                exit(1);
                break;
            default:
                printf("./ failed to parse its options.\n");
                exit(1);
        }
    }

    init_cache(c_sim);

    FILE *f = fopen(trace, "r");
    if (f == NULL) {
        printf("no such file!");
        exit(1);
    }

    char* line_read = NULL;
    ssize_t line_len;
    size_t len = 0;
    while ((line_len = getline(&line_read, &len, f)) != -1) {
        if (line_read[0] == 'I') continue;

        long address = 0;
        for (int i = 2; line_read[i] != ','; ++i) {
            long now;
            if (isdigit(line_read[i])) now = line_read[i] - '0';
            else now = line_read[i] - 'a' + 10;
            address = address * 16 + now;
        }

        if (c_sim->v == 1) {
            for (int i = 1; line_read[i] != '\n'; ++i){
                printf("%c", line_read[i]);
            }
            printf(" ");
        }

        int result = read_in(c_sim, address);

        if (result == 0) {
            ++(c_sim->misses);
            if (c_sim->v == 1) {
                printf("miss ");
            }
        }
        else if (result == 1) {
            ++(c_sim->hits);
            if (c_sim->v == 1) {
                printf("hit ");
            }
        }
        else {
            ++(c_sim->misses);
            ++(c_sim->evictions);
            if (c_sim->v == 1) {
                printf("miss eviction ");
            }
        }

        if (line_read[1] == 'M') {
            ++c_sim->hits;
            if (c_sim->v == 1) {
                printf("hit");
            }
        }

        printf("\n");
    }

    printSummary(c_sim->hits, c_sim->misses, c_sim->evictions);

    for (int i = 0; i < S; ++i) {
        for (int j = 0; j < E; ++j) {
            free(c_sim->sets[i].lines[j].blocks);
        }
        free(c_sim->sets[i].lines);
    }
    free(c_sim->sets);
    free(c_sim);
    fclose(f);
    if (line_read) free(line_read);

    return 0;
}
