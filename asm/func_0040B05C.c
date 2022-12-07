
s32 gloadFindFile(char *dest, char *arg1, char *arg2);                   /* extern */


extern s32 B_10016A20;

extern s32 headerBuf;
extern s32 headerWordAlignedByteSize;

void func_0040B05C(? *arg0) {
    s32 sp2BC;
    char *sp1BC;
    struct stat sp134;
    char *sp34;
    void *sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 temp_t6;
    s32 temp_t8;
    u8 *temp_t6_2;

    if ((arg0 == NULL) && (gloadFindFile(&sp1BC, "/usr/lib/PR", "romheader") != 0)) {
        arg0 = &sp1BC;
    }
    if (arg0 != NULL) {
        sp2BC = open(arg0, 0x800);
        if (sp2BC < 0) {
            sprintf(&sp34, "%s unable to open %s", B_10016A20, arg0);
            perror(&sp34);
            exit(1);
        }
        if (fstat(sp2BC, &sp134) < 0) {
            sprintf(&sp34, "%s unable to stat %s", B_10016A20, arg0);
            perror(&sp34);
            close(sp2BC);
            exit(1);
        }
        headerWordAlignedByteSize = sp164;
        headerBuf = malloc(headerWordAlignedByteSize);
        if (headerBuf == 0) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", B_10016A20, headerWordAlignedByteSize);
            close(sp2BC);
            exit(1);
        }
        sp30.unk1 = 0;
        sp28 = 0;
        sp24 = 0;
        if (headerWordAlignedByteSize > 0) {
            do {
                sp20 = read(sp2BC, &sp30, 1);
                if (sp20 != 1) {
                    fprintf(stderr, "%s: short read from %s.\n", B_10016A20, (s32) arg0);
                    free(headerBuf);
                    close(sp2BC);
                    exit(1);
                }
                if (sp30.unk0 == 0xA) {
                    temp_t8 = sp24 + 1;
                    sp24 = temp_t8;
                    if (temp_t8 < headerWordAlignedByteSize) {
                        sp20 = read(sp2BC, &sp30, 1);
                        if (sp20 != 1) {
                            fprintf(stderr, "%s: short read from %s.\n", B_10016A20, (s32) arg0);
                            free(headerBuf);
                            close(sp2BC);
                            exit(1);
                        }
                    }
                }
                sp2C = strtol(&sp30, 0, 0x10);
                if ((sp28 % 2) != 0) {
                    temp_t6_2 = (sp28 >> 1) + headerBuf;
                    *temp_t6_2 |= sp2C;
                } else {
                    *(headerBuf + (sp28 >> 1)) = sp2C * 0x10;
                }
                temp_t6 = sp24 + 1;
                sp28 += 1;
                sp24 = temp_t6;
            } while (temp_t6 < headerWordAlignedByteSize);
        }
        headerWordAlignedByteSize = (s32) (sp28 - 1) >> 1;
        if (headerWordAlignedByteSize & 3) {
            headerWordAlignedByteSize += 4;
            headerWordAlignedByteSize &= ~3;
        }
        close(sp2BC);
    } else {
        headerBuf = 0;
    }
}
