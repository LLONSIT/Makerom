#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include "makerom_common.h"



void printError(unsigned char* fmt, void* rest) {
    unsigned char* ap;

    fprintf(stderr, "makerom: error at line %d: ", lineNumber);
    ap = &fmt + 1;
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
}

void yyerror(char *s) {
    fprintf(stderr, "makerom: %s at line %d [%s]\n", s, lineNumber, &yytext);
}



#if 0

static void printError( unsigned char* fmt, ...) {} //printError
static void ExpandPath(char *in, char *out) {} //ExpandPath
extern Segment* B_10019FCC;
extern Segment* gCurrentSegment;
extern Wave* B_10019FD4;
extern Wave* B_10019FD8;
extern SegmentChain* B_10019FDC;
extern Path* B_10019FE0;
extern s32 D_10015180;
extern s32 D_10015184;
extern s32 D_10015190;
extern s32 yyval;
extern u32 bootAddress;
extern u32 bootEntryName;
extern u32 bootStackName;
extern u32 bootStackOffset;
extern s32 cosim;
extern s32 emulator;

#define DEFAULT_VRAM 0x80000400
extern s32 yytmp;



    //checking

int yyparse(void) {
    s32 sp190;
    s32 sp18C;
    s32 sp188;
    s32 sp184;
    s32 sp180;
     u32* sp17C;
    u32* sp178;
    u32* sp174;
    u32 sp168;
    Path* sp164;
    u8 *pathname;
    Segment* seg;
    Segment* seg1;
    Segment* seg2;
    SegmentChain* segChain;
    s8* sp44;
    
    u32 temp_v0_2;

    register int* yyvsp;
    void* var_s1;

    /*
    yyvsp = saved_reg_s0;
    yypv = yyv - 4;
    yyps = yys - 4;
    yystate = 0;
    yytmp = 0;
    yynerrs = 0;
    yyerrflag = 0;
    yychar = -1;
loop_2:
    var_s1 = yypv;
    var_s2 = yyps;
    var_s3 = yystate;
loop_3:
    var_s2 += 4;
    if ((u32) var_s2 >= (u32) (yys + (D_10015190 * 4))) {
        sp188 = (s32) (yyvsp - yyv) >> 2;
        sp184 = (s32) (var_s1 - yyv) >> 2;
        sp180 = (s32) (yypv - yyv) >> 2;
        sp17C = yys;
        sp190 = D_10015190 * 2;
        if (D_10015190 == 0x96) {
            sp178 = malloc(sp190 * 4);
            sp174 = malloc(sp190 * 4);
            if ((sp178 != NULL) && (sp174 != NULL)) {
                yys = memcpy(sp178, yys, sp190 * 4);
                yyv = memcpy(sp174, yyv, sp190 * 4);
            } else {
                sp190 = 0;
            }
        } else {
            yys = realloc(yys, sp190 * 4);
            yyv = realloc(yyv, sp190 * 4);
            if ((yys == 0) || (yyv == 0)) {
                sp190 = 0;
            }
        }
        if (D_10015190 >= sp190) {
            yyerror(gettxt("uxlibc:80", "Yacc stack overflow"));
            return 1;
        }
        D_10015190 = sp190;
        sp18C = (s32) (yys - sp17C) >> 2;
        var_s2 = &var_s2[sp18C];
        yyps = &yyps[sp18C];
        yyvsp = (sp188 * 4) + yyv;
        var_s1 = (sp184 * 4) + yyv;
        yypv = (sp180 * 4) + yyv;
        goto block_16;
    }
block_16:
    *var_s2 = var_s3;
    var_s1 += 4;
    var_s1->unk0 = (u32) yyval;
loop_17:
    temp_s4 = *((var_s3 * 4) + &yypact);
    if (temp_s4 < 0xFF676981) {
        goto block_29;
    }
    if (yychar < 0) {
        yychar = yylex();
        if (yychar < 0) {
            yychar = 0;
        }
    }
    temp_s4_2 = temp_s4 + yychar;
    if ((temp_s4_2 < 0) || (temp_s4_2 >= 0x65)) {
        goto block_29;
    }
    temp_s4_3 = *((temp_s4_2 * 4) + &yyact);
    if (*((temp_s4_3 * 4) + &yychk) == yychar) {
        yychar = -1;
        yyval = yylval;
        var_s3 = temp_s4_3;
        if (yyerrflag > 0) {
            yyerrflag -= 1;
        }
        goto loop_3;
    }
block_29:
    var_s4 = *((var_s3 * 4) + &yydef);
    if (var_s4 == -2) {
        if (yychar < 0) {
            yychar = yylex();
            if (yychar < 0) {
                yychar = 0;
            }
        }
        var_s5 = &yyexca;
        if ((yyexca.unk0 != -1) || (yyexca.unk4 != var_s3)) {
            do {
loop_35:
                var_s5 += 8;
                if (var_s5->unk0 != -1) {
                    goto loop_35;
                }
            } while (var_s5->unk4 != var_s3);
        }
        var_s5_2 = var_s5 + 8;
        if ((var_s5->unk8 >= 0) && (*var_s5_2 != yychar)) {
loop_39:
            temp_t0 = var_s5_2->unk8;
            var_s5_2 += 8;
            if (temp_t0 >= 0) {
                if (*var_s5_2 != yychar) {
                    goto loop_39;
                }
            }
        }
        var_s4 = var_s5_2->unk4;
        if (var_s4 < 0) {
            return 0;
        }
        goto block_43;
    }
block_43:
    if (var_s4 == 0) {
        switch (yyerrflag) {                        // switch 1; irregular 
        case 0:                                     // switch 1 
            sp44 = gettxt("uxlibc:81", "Syntax error");
            yyerror(sp44);
            // fallthrough 
        case 1:                                     // switch 1 
        case 2:                                     //switch 1 
            yyerrflag = 3;
            if ((u32) var_s2 >= (u32) yys) {
loop_52:
                temp_s4_4 = *((*var_s2 * 4) + &yypact) + 0x100;
                if ((temp_s4_4 >= 0) && (temp_s4_4 < 0x65) && (*((*((temp_s4_4 * 4) + &yyact) * 4) + &yychk) == 0x100)) {
                    var_s3 = *((temp_s4_4 * 4) + &yyact);
                    goto loop_3;
                }
                var_s2 -= 4;
                var_s1 -= 4;
                if ((u32) var_s2 < (u32) yys) {
                    goto block_57;
                }
                goto loop_52;
            }
block_57:
            return 1;
        case 3:                                     // switch 1 
            if (yychar == 0) {
                return 1;
            }
            yychar = -1;
            goto loop_17;
        }
    } else {
        yytmp = var_s4;
        yyvsp = var_s1;
        temp_s6 = *((var_s4 * 4) + &yyr2);
        if (!(temp_s6 & 1)) {
            temp_s6_2 = temp_s6 >> 1;
            var_s1 -= temp_s6_2 * 4;
            yyval = var_s1->unk4;
            temp_s7 = *((var_s4 * 4) + &yyr1);
            var_s2 -= temp_s6_2 * 4;
            temp_s3 = *var_s2 + *((temp_s7 * 4) + &yypgo) + 1;
            if ((temp_s3 >= 0x65) || (var_s3 = *((temp_s3 * 4) + &yyact), (*((var_s3 * 4) + &yychk) != -temp_s7))) {
                var_s3 = *((*((temp_s7 * 4) + &yypgo) * 4) + &yyact);
            }
            goto loop_3;
        }
        temp_s6_3 = temp_s6 >> 1;
        temp_s1 = var_s1 - (temp_s6_3 * 4);
        yyval = temp_s1->unk4;
        temp_s7_2 = *((var_s4 * 4) + &yyr1);
        temp_s2 = var_s2 - (temp_s6_3 * 4);
        temp_s3_2 = *temp_s2 + *((temp_s7_2 * 4) + &yypgo) + 1;
        if ((temp_s3_2 >= 0x65) || (var_s3_2 = *((temp_s3_2 * 4) + &yyact), (*((var_s3_2 * 4) + &yychk) != -temp_s7_2))) {
            var_s3_2 = *((*((temp_s7_2 * 4) + &yypgo) * 4) + &yyact);
        }
        yystate = var_s3_2;
        yyps = temp_s2;
        yypv = temp_s1;

        */ ///End of the nice yacc code
        
        switch (yytmp) {
         $A 
            if (gCurrentSegment->name == NULL) {
                printError("no segment name specified");
                return 1;
            }
            if (gCurrentSegment->pathList == NULL) {
                printError("no files included for segment");
                return 1;
            }
            if (gCurrentSegment->flags == -1) {
                gCurrentSegment->flags = 2;
            }
            if (gCurrentSegment->flags & 1) {
                if (cosim != 0) {
                    sp168 = 0x80002000;
                } else if (emulator != 0) {
                    sp168 = 0x20010000;
                } else {
                    sp168 = DEFAULT_VRAM;
                }
                if (gCurrentSegment->address == -1U) {
                    gCurrentSegment->address = sp168;
                    gCurrentSegment->addrFunc = 4;
                }
                bootAddress = gCurrentSegment->address;
                gCurrentSegment->address += 0x50;
                goto block_96;
            }
            if (segmentList == gCurrentSegment) {
                printError("first segment must be BOOT segment");
                return 1;
            }
            if (D_10015180 != 0) {
                printError("entry point specified on non-BOOT segment \"%s\"", (u32) gCurrentSegment->name);
                return 1;
            }
            if (D_10015184 != 0) {
                printError("stack specified on non-BOOT segment \"%s\"", (u32) gCurrentSegment->name);
                return 1;
            }
            if ((gCurrentSegment->flags & 2) && (gCurrentSegment->address == -1U) && (gCurrentSegment->addrFunc == 0)) {
                printError("no address specified for OBJECT segment \"%s\"", (u32) gCurrentSegment->name);
                return 1;
            }
block_96:
            if ((gCurrentSegment->flags & 4) && (gCurrentSegment->address != -1U)) {
                printError("address specified for RAW segment \"%s\"", (u32) gCurrentSegment->name);
                return 1;
            }
            if ((gCurrentSegment->align != 0) && (gCurrentSegment->addrFunc == 0)) {
                printError("\"align\" keyword is only valid with \"after\" keyword\n         for segment \"%s\"", (u32) gCurrentSegment->name);
                return 1;
            }
            if (gCurrentSegment->align == 0) {
                gCurrentSegment->align = 0x10;
            }
            B_10019FCC = gCurrentSegment;
            break;
        default:
block_223:
         //   goto loop_2;  
        case 5:
            
            if ((gCurrentSegment = malloc(0x78U)) == NULL) {
                fprintf(stderr, "makerom: malloc failed\n");
                return 1;
            }
            gCurrentSegment->next = NULL;
            gCurrentSegment->name = NULL;
            gCurrentSegment->pathList = NULL;
            gCurrentSegment->unk0C = 0; //Another nice wave
            gCurrentSegment->address = -1U;
            gCurrentSegment->addrFunc = 0;
            gCurrentSegment->romalign = 0;
            gCurrentSegment->align = 0;
            gCurrentSegment->flags = -1;
            gCurrentSegment->textSize = 0;
            gCurrentSegment->dataSize = 0;
            gCurrentSegment->sdataSize = 0;
            gCurrentSegment->sbssSize = 0;
            gCurrentSegment->bssSize = 0;
            gCurrentSegment->maxSize = 0x7FFFFFFF;
            gCurrentSegment->textAlign = 0;
            gCurrentSegment->dataAlign = 0;
            gCurrentSegment->sdataAlign = 0;
            gCurrentSegment->sbssAlign = 0;
            gCurrentSegment->bssAlign = 0;
            gCurrentSegment->sectionsExisting = 0;
            if (segmentList == NULL) {
                segmentList = gCurrentSegment;
            } else {
                B_10019FCC->next = gCurrentSegment;
            }
            D_10015180 = 0;
            D_10015184 = 0;
           break;
        case 8:
            if (yyvsp[0] & 0xF) {
                printError("address (0x%x) not a multiple of 16", yyvsp[0]);
                return 1;
            }
            if (((u32) yyvsp[0] >= 0x80000000U) && ((u32) yyvsp[0] < 0xC0000000U) && ((u32) (yyvsp[0] & 0x1FFFFFFF) < 0x400U)) {
                printError("address (0x%x) must be at least\n         0x%x (or 0x%x)", yyvsp[0], 0x80000400U, 0xA0000400);
                return 1;
            }
            if (gCurrentSegment->address != -1U) {
                printError("multiple address/number/after statement");
                return 1;
            }
            gCurrentSegment->addrFunc = 4;
            gCurrentSegment->address = yyvsp[0];
            break;
        case 9:
            if (((s32) yyvsp[0] < 0) || ((s32) yyvsp[0] >= 0x10)) {
                printError("segment number (%d) not in range [0-15]", yyvsp[0]);
                return 1;
            }
            if (gCurrentSegment->address != -1U) {
                printError("multiple address/number/after statement");
                return 1;
            }
            gCurrentSegment->addrFunc = 5;
            gCurrentSegment->address = yyvsp[0] << 0x18;
            break;
        case 10:
            if (gCurrentSegment->address != -1U) {
                printError("multiple address/number/after statement");
                return 1;
            }
            gCurrentSegment->address = -1U;
            break;
        case 11:
            if ((s32) yyvsp[0] < 0x10) {
                printError("rom alignment (%d or 0x%x) must be at least 16", yyvsp[0], yyvsp[0]);
                return 1;
            }
            if ((yyvsp[0] - 1) & yyvsp[0]) {
                printError("rom alignment (%d or 0x%x) must be a power of 2", yyvsp[0], yyvsp[0]);
                return 1;
            }
            gCurrentSegment->romalign = (s32) yyvsp[0];
            break;
        case 12:
            if ((s32) yyvsp[0] < 0x10) {
                printError("alignment (%d or 0x%x) must be at least 16", yyvsp[0], yyvsp[0]);
                return 1;
            }
            if ((yyvsp[0] - 1) & yyvsp[0]) {
                printError("alignment (%d or 0x%x) must be a power of 2", yyvsp[0], yyvsp[0]);
                return 1;
            }
            gCurrentSegment->align = yyvsp[0];
            break;
        case 13:
            if (gCurrentSegment->name != NULL) {
                printError("multiple segment name");
                return 1;
            }
           
            if ( (gCurrentSegment->name = strdup(yyvsp[0]) ) == 0) {
                fprintf(stderr, "makerom: malloc failed\n");
                exit(1);
            }
            break;
        case 14:
            if (D_10015180 != 0) {
                printError("multiple entry point");
                return 1;
            }
            D_10015180 = 1;
            bootEntryName = yyvsp[0];
            break;
        case 15:
            if (gCurrentSegment->flags != -1) {
                printError("multiple flags value specified");
                return 1;
            }
            if ((yyvsp[0] & 5) == 5) {
                printError("RAW segment cannot be a BOOT segment");
                return 1;
            }
            if ((yyvsp[0] & 6) == 6) {
                printError("RAW and OBJECT are mutually exclusive");
                return 1;
            }
            gCurrentSegment->flags = (s32) yyvsp[0];
            break;
        case 16:
            ExpandPath(yyvsp[0], &pathname);
             //malloc(seg->other)
            if (((sp164 = malloc(0x48U)) == 0) || (sp164 = strdup((u32) &pathname), (sp164 == NULL))) {
                fprintf(stderr, "makerom: malloc failed\n");
                exit(1);
            }
            sp164->next = NULL;
            sp164->sectionsExisting = 0;
            if (gCurrentSegment->pathList == NULL) {
                gCurrentSegment->pathList = sp164;
            } else {
                B_10019FE0->next = sp164;
            }
            B_10019FE0 = sp164;
           break;
        case 17:
            if (gCurrentSegment->maxSize != 0x7FFFFFFF) {
                printError("multiple maximum segment size value");
                return 1;
            }
            if (yyvsp[0] & 0xF) {
                printError("makerom: maxsize constant (%d) not a multiple of 16\n", yyvsp[0]);
                return 1;
            }
            gCurrentSegment->maxSize = yyvsp[0];
           break;
        case 18:
            if (D_10015184 != 0) {
                printError("multiple stack");
                return 1;
            }
            D_10015184 = 1;
           break;
        case 19:
            gCurrentSegment->addrFunc = 1;
        
            for (seg = segmentList; seg != NULL; seg = seg->next) {
                if (strcmp((s8* ) seg->name, (s8* ) yyvsp[0]) == 0) {
                  break;  
            }
        }
            if (seg == NULL) {
                printError("segment \"%s\" not (yet) defined", yyvsp[0]);
                return 1;
            }
            gCurrentSegment->afterSeg1 = gCurrentSegment->afterSeg2 = seg;
            
           break;
        case 20:
        for (seg1 = segmentList; seg1 != NULL; seg1 = seg1->next) {
                if (strcmp((s8* ) seg1->name, yyvsp[-0xC]) == 0) {
                        break;
            }
        }
            if (seg1 == NULL) {
                printError("segment \"%s\" not (yet) defined", (u32) yyvsp[11]);
                return 1;
            }
            gCurrentSegment->afterSeg1 = seg1;
        for (seg1 = segmentList; seg1 != NULL; seg1 = seg1->next) {
                if (strcmp((s8* ) seg1->name, yyvsp[4]) == 0) {
                    break;
          
            }
        }
            
            if (seg1 == NULL) {
                printError("segment \"%s\" not (yet) defined", (u32) yyvsp[4]);
                return 1;
            }
            gCurrentSegment->afterSeg2 = seg1;
            break;
        case 21:
            gCurrentSegment->addrFunc = 2;
           break;
        case 22:
            gCurrentSegment->addrFunc = 3;
           break;
        case 23:
            yyval = yyvsp[0];
           break;
        case 24:
            yyval = yyvsp[0] | (s32) yyvsp[4];
           break;
        case 25:
            yyval = 1;
           break;
        case 26:
            yyval = 2;
           break;
        case 27:
            yyval = 4;
           break;
        case 28:
            bootStackName = 0;
            bootStackOffset = yyvsp[0];
           break;
        case 29:
            bootStackName = yyvsp[-0x8];
            bootStackOffset = 0;
           break;
        case 30:
            bootStackName = yyvsp[8];
            bootStackOffset = yyvsp[0];
           break;
        case 33:
            B_10019FD4 = B_10019FD8;
           break;
        case 34:
          
            if ((B_10019FD8 = malloc(0x118U)) == NULL) {
                fprintf(stderr, "makerom: malloc failed\n");
                exit(1);
            }
            B_10019FD8->next = NULL;
            B_10019FD8->segmentChain = NULL;
            B_10019FD8->elf = NULL;
            if (waveList == NULL) {
                waveList = B_10019FD8;
            } else {
                B_10019FD4->next = B_10019FD8;
            }
           break;
        case 37:
            
            if (( B_10019FD8->name = strdup(yyvsp[0]) ) == 0) {
                fprintf(stderr, "makerom: malloc failed\n");
                exit(1);
            }
           break;
        case 38:
        
        for (seg2 = segmentList; seg2 != NULL; seg2 = seg2->next){
            
            if (strcmp((s8* ) seg2->name, (s8* ) yyvsp[0]) == 0) {
                break;
                }
            }
            if (seg2 == NULL) {
                printError("unknown segment \"%s\"", yyvsp[0]);
                return 1;
            }
            
            else if ((segChain = malloc(sizeof(segChain->segment))) == NULL) {
                fprintf(stderr, "makerom: malloc failed\n");
                exit(1);
            }
            
            seg2->unk0C = (s32) B_10019FD8;
            segChain->segment = seg2;
            segChain->next = NULL;
            
            if (B_10019FD8->segmentChain == NULL) {
                B_10019FD8->segmentChain = segChain;
            } else {
                B_10019FDC->next = segChain;
            }
            B_10019FDC = segChain;
           break;
        }
        //goto yacc_code; //YACC: "reset registers in driver code"
    }
#endif
