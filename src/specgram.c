#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include "types.h"



void printError(unsigned char* fmt, void* ...) {
    unsigned char* ap;

    fprintf(stderr, "makerom: error at line %d: ", lineNumber);
    ap = &fmt + 1;
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
}

void yyerror(char *s) {
    fprintf(stderr, "makerom: %s at line %d [%s]\n", s, lineNumber, &yytext);
}



