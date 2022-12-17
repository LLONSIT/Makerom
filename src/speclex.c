/******************************************************************
*
*
*
*       Makerom Application: flex and bison functionality
*
*
*
*
*
*******************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include "types.h"

extern int lineNumber;
extern const char *yytext[0x800];
int yylineno = 1;
char* yysptr = 0x10016AC0;
s32 yytchar;
extern char yysbuf[0x800];
extern s32 yyout;

void yyunput(s32 arg0) {
    yytchar = arg0;
    if (yytchar == '\n') {
        yylineno--;
    }
    *yysptr++ = yytchar;
}


s32 yylex() {
    s32 sp24;

    while ((sp24 = yylook()) >= 0) {

        switch (sp24) {
        case 0:
            if (yywrap() != 0) {
                return 0;
            }
            break;

        case 1:
            lineNumber += 1;
            break;

        case 2:
            func_0041109C();
            break;

        case 3:
            func_004114EC();
            break;

        case 4:
            break;
       
        case 5:
            yylval = 0x101;
            return 0x101;
            break;
        case 6:
            yylval = 0x102;
            return 0x102;
            break;
        case 7:
            yylval = 0x103;
            return 0x103;
            break;
        case 8:
            yylval = 0x104;
            return 0x104;
            break;
        case 9:
            yylval = 0x105;
            return 0x105;
            break;
        case 10:
            yylval = 0x106;
            return 0x106;
            break;
        case 11:
            yylval = 0x107;
            return 0x107;
            break;
        case 12:
            yylval = 0x109;
            return 0x109;
            break;
        case 13:
            yylval = 0x10A;
            return 0x10A;
            break;
        case 14:
            yylval = 0x10B;
            return 0x10B;
            break;
        case 15:
            yylval = 0x10C;
            return 0x10C;
            break;
        case 16:
            yylval = 0x10D;
            return 0x10D;
            break;
        case 17:
            yylval = 0x10E;
            return 0x10E;
            break;
        case 18:
            yylval = 0x10F;
            return 0x10F;
            break;
        case 19:
            yylval = 0x110;
            return 0x110;
            break;
        case 20:
            yylval = 0x111;
            return 0x111;
            break;
        case 21:
            yylval = 0x112;
            return 0x112;
            break;
        case 22:
            yylval = 0x113;
            return 0x113;
            break;
        case 23:
            yylval = 0x114;
            return 0x114;
            break;
        case 24:
            yylval = 0x115;
            return 0x115;
            break;
        case 25:
            yylval = 0x116;
            return 0x116;
            break;
        case 26:
            yylval = 0x117;
            return 0x117;
            break;
        case 27:
            yylval = 0x118;
            return 0x118;
            break;
        case 28:
            yylval = 0x119;
            return 0x119;
            break;
        case 29:
            sscanf(yytext, "%x", &yylval);
            return 0x108;
            break;
        case 30:
            yylval = atoi(yytext);
            return 0x108;
            break;
        case 31:
            yylval = malloc(strlen(yytext) + 1);
            strcpy(yylval, yytext);
            return 0x11A;
            break;
        case 32:
            yytext[strlen(yytext) - 1] = 0;
            yylval = malloc(strlen(yytext) - 1);
            strcpy(yylval, yytext + 1);
            return 0x11A;
            break;
        case 33:
            yyerror("Illegal character");
            break;

        case -1:
            break;
        default:
            fprintf(yyout, "bad switch yylook %d", sp24);
        }
    }


    return 0;
}

s32 yyinput(void) {
    return (
        (
            (
                (
                    yytchar = (yysptr > yysbuf) 
                        ? *--yysptr 
                        : getc(yyin)
                ) == '\n'
            ) 
                ? (yylineno++, yytchar) 
                : yytchar
        ) == -1// EOF
    )
        ? 0 
        : yytchar;
}



int yyback(int* p, int m) {
    if (p == NULL) {
        return 0;
    }
    while (*p != 0) {
        if (*p++ == m) {
            return 1;
        }
    }
    return 0;
}
