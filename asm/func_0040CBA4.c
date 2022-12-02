u32 ALIGNn(u32, u32);                               /* extern */
s32 _elf_getscn(s32, u32);                          /* extern */
? close(s32);                                       /* extern */
void *elf32_getehdr(s32);                           /* extern */
void *elf32_getshdr(s32);                           /* extern */
s32 elf_begin(s32, ?, ?);                           /* extern */
s32 elf_kind(s32);                                  /* extern */
s32 elf_strptr(s32, u16, s32);                      /* extern */
? fprintf(void *, ? *, u32, u32);                   /* extern */
s32 open(u32, ?);                                   /* extern */
? printf(? *, u32, u32);                            /* extern */
s32 strcmp(s32, ? *);                               /* extern */
extern ? __iob;
extern s32 debug;
extern s32 errno;
extern ? sys_errlist;

? func_0040CBA4(void *arg0) {
    u32 sp4C;
    u32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    void *sp38;
    void *sp34;
    void *sp30;
    u32 sp2C;
    s32 sp28;
    u32 sp24;
    s32 sp20;
    s32 temp_t3;
    u32 temp_t1;
    u32 temp_t2;
    u32 temp_t4;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t1_2;
    void *temp_t1_3;
    void *temp_t2_2;
    void *temp_t3_2;
    void *temp_t3_3;
    void *temp_t4_2;
    void *temp_t6;
    void *temp_t6_2;
    void *temp_t6_3;
    void *temp_t6_4;
    void *temp_t6_5;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t8;
    void *temp_t8_2;

    sp20 = 1;
    arg0->unk4C = 0x10U;
    if (debug != 0) {
        temp_t1 = arg0->unk20;
        if ((temp_t1 != 0x10) && (temp_t1 != 0)) {
            printf("Segment %s: alignment %x\n", arg0->unk4, arg0->unk20);
        }
        temp_t4 = arg0->unk48;
        if ((temp_t4 != 0x10) && (temp_t4 != 0)) {
            printf("Segment %s: romalign %x\n", arg0->unk4, arg0->unk48);
        }
    }
    temp_t7 = arg0->unk8;
    sp30 = temp_t7;
    if (temp_t7 != NULL) {
loop_8:
        sp30->unk8 = 0U;
        sp30->unkC = 0;
        sp30->unk10 = 0U;
        sp30->unk14 = 0U;
        sp30->unk18 = 0U;
        sp30->unk1C = 0U;
        sp30->unk20 = 0U;
        sp30->unk24 = 0U;
        sp30->unk28 = 0U;
        sp30->unk2C = 0U;
        sp44 = open(sp30->unk4, 0);
        if (sp44 == -1) {
            fprintf(&__iob + 0x20, "makerom: %s: %s\n", sp30->unk4, *((errno * 4) + &sys_errlist));
            return -1;
        }
        if (debug != 0) {
            printf("Scanning %s\n", sp30->unk4);
        }
        sp40 = elf_begin(sp44, 1, 0);
        if ((elf_kind(sp40) != 3) || (sp38 = elf32_getehdr(sp40), (sp38 == NULL))) {
            fprintf(&__iob + 0x20, "makerom: %s: not a valid ELF object file\n", sp30->unk4);
            return -1;
        }
        sp2C = 1;
        if ((u16) sp38->unk30 >= 2U) {
loop_16:
            sp3C = _elf_getscn(sp40, sp2C);
            if ((sp3C == 0) || (sp34 = elf32_getshdr(sp3C), (sp34 == NULL))) {
                fprintf(&__iob + 0x20, "makerom: %s: can't get section index %d\n", sp30->unk4, sp2C);
                return -1;
            }
            sp28 = elf_strptr(sp40, sp38->unk32, sp34->unk0);
            if (strcmp(sp28, ".text") == 0) {
                arg0->unk2C = (s32) (arg0->unk2C + sp34->unk14);
                sp30->unk1C = (u32) sp34->unk20;
                sp30->unk8 = (u32) sp34->unk14;
                sp30->unk44 = (s32) (sp30->unk44 | 1);
                arg0->unk60 = (s32) (arg0->unk60 | 1);
                if ((u32) arg0->unk4C < (u32) sp30->unk1C) {
                    arg0->unk4C = (u32) sp30->unk1C;
                }
                if (debug != 0) {
                    printf("  text size  = %x\n", sp34->unk14);
                    printf("       align = %x\n", sp34->unk20);
                }
            } else if ((strcmp(sp28, ".data") == 0) || (strcmp(sp28, ".rodata") == 0)) {
                arg0->unk30 = (s32) (arg0->unk30 + sp34->unk14);
                sp30->unk20 = (u32) sp34->unk20;
                sp30->unkC = (s32) (sp30->unkC + sp34->unk14);
                sp30->unk44 = (s32) (sp30->unk44 | 2);
                arg0->unk60 = (s32) (arg0->unk60 | 2);
                if ((u32) arg0->unk50 < (u32) sp30->unk20) {
                    arg0->unk50 = (u32) sp30->unk20;
                }
                if (debug != 0) {
                    printf("  data&rodata size  = %x\n", sp34->unk14);
                    printf("       align = %x\n", sp34->unk20);
                }
            } else if (strcmp(sp28, ".sdata") == 0) {
                arg0->unk34 = (s32) (arg0->unk34 + sp34->unk14);
                sp30->unk24 = (u32) sp34->unk20;
                sp30->unk10 = (u32) sp34->unk14;
                arg0->unk60 = (s32) (arg0->unk60 | 4);
                sp30->unk44 = (s32) (sp30->unk44 | 4);
                if ((u32) arg0->unk54 < (u32) sp30->unk24) {
                    arg0->unk54 = (u32) sp30->unk24;
                }
                if (debug != 0) {
                    printf("  sdata size  = %x\n", sp34->unk14);
                    printf("        align = %x\n", sp34->unk20);
                }
            } else if (strcmp(sp28, ".sbss") == 0) {
                arg0->unk38 = (s32) (arg0->unk38 + sp34->unk14);
                sp30->unk28 = (u32) sp34->unk20;
                sp30->unk14 = (u32) sp34->unk14;
                sp30->unk44 = (s32) (sp30->unk44 | 0x10);
                arg0->unk60 = (s32) (arg0->unk60 | 0x10);
                if ((u32) arg0->unk58 < (u32) sp30->unk28) {
                    arg0->unk58 = (u32) sp30->unk28;
                }
                if (debug != 0) {
                    printf("  sbss size  = %x\n", sp34->unk14);
                    printf("       align = %x\n", sp34->unk20);
                }
            } else if (strcmp(sp28, ".bss") == 0) {
                arg0->unk3C = (s32) (arg0->unk3C + sp34->unk14);
                sp30->unk2C = (u32) sp34->unk20;
                sp30->unk18 = (u32) sp34->unk14;
                sp30->unk44 = (s32) (sp30->unk44 | 8);
                arg0->unk60 = (s32) (arg0->unk60 | 8);
                if ((u32) arg0->unk5C < (u32) sp30->unk2C) {
                    arg0->unk5C = (u32) sp30->unk2C;
                }
                if (debug != 0) {
                    printf("  bss size  = %x\n", sp34->unk14);
                    printf("      align = %x\n", sp34->unk20);
                }
            }
            temp_t2 = sp2C + 1;
            sp2C = temp_t2;
            if (temp_t2 >= (u16) sp38->unk30) {
                goto block_50;
            }
            goto loop_16;
        }
block_50:
        close(sp44);
        temp_t6 = sp30->unk0;
        sp30 = temp_t6;
        if (temp_t6 == NULL) {
            goto block_51;
        }
        goto loop_8;
    }
block_51:
    temp_t3 = arg0->unk14;
    switch (temp_t3) {
    case 2:
        temp_t4_2 = arg0->unk18;
        sp4C = temp_t4_2->unk10 + temp_t4_2->unk40;
        temp_t6_2 = arg0->unk1C;
        sp48 = temp_t6_2->unk10 + temp_t6_2->unk40;
        if (sp48 < sp4C) {
            sp24 = sp4C;
        } else {
            sp24 = sp48;
        }
        break;
    case 3:
        temp_t0 = arg0->unk18;
        sp4C = temp_t0->unk10 + temp_t0->unk40;
        temp_t8 = arg0->unk1C;
        sp48 = temp_t8->unk10 + temp_t8->unk40;
        if (sp4C < sp48) {
            sp24 = sp4C;
        } else {
            sp24 = sp48;
        }
        break;
    case 1:
        temp_t7_2 = arg0->unk18;
        sp4C = temp_t7_2->unk10 + temp_t7_2->unk40;
        sp24 = sp4C;
        break;
    case 4:
        sp24 = arg0->unk10;
        break;
    case 5:
        sp24 = arg0->unk10;
        break;
    default:
        break;
    }
    sp24 = ALIGNn(arg0->unk20, sp24);
    arg0->unk10 = sp24;
    if (arg0->unk28 & 1) {
        sp24 = ALIGNn(arg0->unk4C, sp24);
        arg0->unk24 = ALIGNn(arg0->unk4C, arg0->unk24);
        arg0->unk24 = ALIGNn(arg0->unk20, arg0->unk24);
    }
    if (arg0->unk60 & 1) {
        sp24 = ALIGNn(arg0->unk4C, sp24);
        arg0->unk64 = sp24;
        arg0->unk10 = sp24;
        sp20 = 0;
        temp_t6_3 = arg0->unk8;
        sp30 = temp_t6_3;
        if (temp_t6_3 != NULL) {
            do {
                if (sp30->unk44 & 1) {
                    sp24 = ALIGNn(sp30->unk1C, sp24);
                    sp30->unk30 = sp24;
                    sp24 += sp30->unk8;
                }
                temp_t3_2 = sp30->unk0;
                sp30 = temp_t3_2;
            } while (temp_t3_2 != NULL);
        }
    } else {
        arg0->unk64 = sp24;
    }
    if (arg0->unk60 & 2) {
        sp24 = ALIGNn(arg0->unk50, sp24);
        arg0->unk68 = sp24;
        if (sp20 != 0) {
            arg0->unk10 = sp24;
            sp20 = 0;
        }
        temp_t1_2 = arg0->unk8;
        sp30 = temp_t1_2;
        if (temp_t1_2 != NULL) {
            do {
                if (sp30->unk44 & 2) {
                    sp24 = ALIGNn(sp30->unk20, sp24);
                    sp30->unk34 = sp24;
                    sp24 += sp30->unkC;
                }
                temp_t2_2 = sp30->unk0;
                sp30 = temp_t2_2;
            } while (temp_t2_2 != NULL);
        }
    } else {
        arg0->unk68 = sp24;
    }
    if (arg0->unk60 & 4) {
        sp24 = ALIGNn(arg0->unk54, sp24);
        arg0->unk6C = sp24;
        if (sp20 != 0) {
            arg0->unk10 = sp24;
            sp20 = 0;
        }
        temp_t6_4 = arg0->unk8;
        sp30 = temp_t6_4;
        if (temp_t6_4 != NULL) {
            do {
                if (sp30->unk44 & 4) {
                    sp24 = ALIGNn(sp30->unk24, sp24);
                    sp30->unk38 = sp24;
                    sp24 += sp30->unk10;
                }
                temp_t8_2 = sp30->unk0;
                sp30 = temp_t8_2;
            } while (temp_t8_2 != NULL);
        }
    } else {
        arg0->unk6C = sp24;
    }
    if (arg0->unk60 & 0x10) {
        sp24 = ALIGNn(arg0->unk58, sp24);
        arg0->unk70 = sp24;
        if (sp20 != 0) {
            arg0->unk10 = sp24;
            sp20 = 0;
        }
        temp_t1_3 = arg0->unk8;
        sp30 = temp_t1_3;
        if (temp_t1_3 != NULL) {
            do {
                if (sp30->unk44 & 0x10) {
                    sp24 = ALIGNn(sp30->unk28, sp24);
                    sp30->unk3C = sp24;
                    sp24 += sp30->unk14;
                }
                temp_t0_2 = sp30->unk0;
                sp30 = temp_t0_2;
            } while (temp_t0_2 != NULL);
        }
    } else {
        arg0->unk70 = sp24;
    }
    if (arg0->unk60 & 8) {
        sp24 = ALIGNn(arg0->unk5C, sp24);
        arg0->unk74 = sp24;
        if (sp20 != 0) {
            arg0->unk10 = sp24;
            sp20 = 0;
        }
        temp_t6_5 = arg0->unk8;
        sp30 = temp_t6_5;
        if (temp_t6_5 != NULL) {
            do {
                if (sp30->unk44 & 8) {
                    sp24 = ALIGNn(sp30->unk2C, sp24);
                    sp30->unk40 = sp24;
                    sp24 += sp30->unk18;
                }
                temp_t3_3 = sp30->unk0;
                sp30 = temp_t3_3;
            } while (temp_t3_3 != NULL);
        }
    } else {
        arg0->unk74 = sp24;
    }
    arg0->unk2C = (s32) (arg0->unk68 - arg0->unk10);
    arg0->unk30 = (s32) (arg0->unk6C - arg0->unk68);
    arg0->unk34 = (s32) (arg0->unk70 - arg0->unk6C);
    arg0->unk38 = (s32) (arg0->unk74 - arg0->unk70);
    arg0->unk3C = (s32) (sp24 - arg0->unk74);
    arg0->unk40 = (s32) (sp24 - arg0->unk10);
    return 0;
}
