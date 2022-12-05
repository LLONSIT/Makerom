/***************************************************************************
 *
 *
 *
 *            MakeRom Application:  Segment Functionality
 *
 *
 *
 *
 * ***********************************************************************/



#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <libelf.h>
#include <fcntl.h>
#include "../include/types.h"
#include "../include/structs.h"


u32 Address;
u32 Data0;
u32 Data1;
struct ldfile* LDPtr;
char* OFileName;
struct scnhdr SHeader;
char* SName;
s32 Swap;
static void Allocate;



s32 ALIGNn(u32 align, s32 offset) {
    if (align == 0) {
        align = 0x10; //The 0x10 Alignment
    }
      return ((u32) ((offset + align) - 1) / align) * align;
}


s32 func_0041093C(func_0041093C_arg0* arg0) {

    // LDPtr = ldopen(OFileName, NULL);
    if ((LDPtr = ldopen(OFileName, NULL)) == NULL) {
        fprintf(stderr, "Extract(): Cannot open %s.\n", OFileName);
        return -1;
    }

    switch (LDPtr->header.f_magic) {                              /* irregular */
        case 0x140:
        case 0x160:
        case 0x163:
            Swap = gethostsex() == 1;
            break;

        case 0x142:
        case 0x162:
        case 0x166:
            Swap = gethostsex() == 0;
            break;
    }
    if (ldnshread(LDPtr, SName, &SHeader) == 0) {

    } else {
        ldfseek(LDPtr, SHeader.s_scnptr, 0);
        for (Address = SHeader.s_paddr; (Address - SHeader.s_paddr) < SHeader.s_size; Address += 8) {
                ldfread((char*)&Data0, 1, 4, LDPtr); // Could use a union instead but this seems more likely
                if (Swap) {
                    Data0 = ((Data0 << 0x18) | ((Data0 << 8) & 0xFF0000) | ((Data0 >> 8) & 0xFF00) | (Data0 >> 0x18));
                }
                ldfread((char*)&Data1, 1, 4, LDPtr);
                if (Swap) {
                    Data1 = ((Data1 << 0x18) | ((Data1 << 8) & 0xFF0000) | ((Data1 >> 8) & 0xFF00) | (Data1 >> 0x18));
                }
                if (Swap) {
                    arg0->unk0 = Data1;
                    arg0->unk4 = Data0;
                } else {
                    arg0->unk0 = Data0;
                    arg0->unk4 = Data1;
                }
                arg0++;

        }
    }
    ldclose(LDPtr);
    return SHeader.s_size;
}


void func_0040AC0C(char* arg0) {
    int sp2AC;
    char sp1AC[0x100]; //Segment
    struct stat sp124;
    char sp24[0x100];

    if ((arg0 == NULL) && (func_0040B780(sp1AC, "/usr/lib/PR", "Boot") != 0)) {
        arg0 = sp1AC;
    }
    if (arg0 != NULL) {
        if ((sp2AC = open(arg0, 0x800)) < 0) {
            sprintf(sp24, "%s: unable to open %s", B_10016A20, arg0);
            perror(sp24);
            exit(1);
        }
        if (fstat(sp2AC, &sp124) < 0) {
            sprintf(sp24, "%s unable to stat %s", B_10016A20, arg0);
            perror(sp24);
            close(sp2AC);
            exit(1);
        }
        bootBuf = malloc(sp124.st_size);
        if (bootBuf == 0) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", B_10016A20, sp124.st_size);
            close(sp2AC);
            exit(1);
        }
        close(sp2AC);
        bootWordAlignedByteSize = readCoff(arg0, bootBuf);
    } else {
        bootBuf = 0;
    }
}



int scanSegments() {
    struct Segment* seg;
    u32 offset;
    s32 ptr; //Guess

    offset = 0x50;

    if (elf_version(1) == 0) {
        fprintf(stderr, "makerom: out of date\n");
        return -1;
    }


    for (seg = SegmentList; seg != NULL; seg = seg->unk0) {
        if (seg->unkC == 0) {
            fprintf(stderr, "makerom: segment \"%s\": not found in any wave\n", seg->unk4);
            return -1;
        }

        seg->unk24 = offset;
        if (seg->unk28 & 2) {
            if (func_0040CBA4(seg) == -1) {
                return -1;
            }

        } else if (seg->unk28 & 4) {
            if (func_0040DA68(seg) == -1) {
                return -1;
            }
        }

        offset = seg->unk24;
        offset += seg->text_size + seg->unk30 + seg->unk34;
        offset = ALIGNn(seg->align, offset); //Segment 0x10 alignment
    }

    ptr = (offset > 0x50) ? offset : 0x50;

    Allocate = calloc(ptr, 1);

    if (Allocate == NULL) { //if the memory allocation fails.
        fprintf(stderr, "makerom: malloc failed [RomSize= %d kB]\n", (ptr + 0x3FF) / 0x400);
        return -1;
    }
    return 0;
}

//IDO special flags here?
s32 readCoff(s32 obj, void *arg1) {
    s32 section;
    s32 pad[0x2];


    OFileName = obj;

    SName = ".text"; //Section Name

    section = Extract(arg1);

    if (section < 0) {
        return -1;
    }
    return section;
}

s32 func_0040FDE0(struct Segment* seg) {
    UnkStruct* spBC; // linked list (files?)
    s32 spB8;
    s32 spB4;
    u32 spB0;
    u32 spAC;
    struct stat sp24;

    spAC = 0;
    spB4 = seg->unk24;

    for (spBC = seg->unk8; spBC != NULL; spBC = spBC->unk0) {
        if ((spB8 = open(spBC->unk4, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", spBC->unk4, sys_errlist[errno]);
            return -1;
        }
        if (fstat(spB8, &sp24) == -1) {
            fprintf(stderr, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }

        spB0 = sp24.st_size;
        spAC += spB0;
        if (spAC > seg->unk30) {
            fprintf(stderr, "makerom: %s: segment size changed\n", seg->unk4);
            return -1;
        }
        if (read(spB8, B_10016A60 + spB4, spB0) != spB0) {
            fprintf(stderr, "makerom: %s: read failed (%s)\n", spBC->unk4, sys_errlist[errno]);
            return -1;
        }

        close(spB8);
        spB4 += spB0;
    }

    return 0;
}

int func_0040CBA4(Segment* segment) {
    u32 sp4C;
    u32 sp48;
    int sp44;
    Elf* sp40;
    Elf_Scn* sp3C;
    Elf32_Ehdr* sp38;
    Elf32_Shdr* sp34;
    SegmentFile* cur_file;
    u32 sp2C;                                       /* compiler-managed */
    char* sp28;
    u32 sp24;
    s32 sp20;

    sp20 = 1;
    segment->text_addralign = 0x10;

    if (debug) {
        if ((segment->alignment != 0x10) && (segment->alignment != 0)) {
            printf("Segment %s: alignment %x\n", segment->name, segment->alignment);
        }
        if ((segment->romalign != 0x10) && (segment->romalign != 0)) {
            printf("Segment %s: romalign %x\n", segment->name, segment->romalign);
        }
    }

    for (cur_file = segment->files; cur_file != NULL; cur_file = cur_file->next) {
        cur_file->text_size = 0;
        cur_file->data_rodata_size = 0;
        cur_file->sdata_size = 0;
        cur_file->sbss_size = 0;
        cur_file->bss_size = 0;
        cur_file->text_addralign = 0;
        cur_file->data_rodata_addralign = 0;
        cur_file->sdata_addralign = 0;
        cur_file->sbss_addralign = 0;
        cur_file->bss_addralign = 0;

        if ((sp44 = open(cur_file->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", cur_file->name, sys_errlist[errno]);
            return -1;
        }

        if (debug) {
            printf("Scanning %s\n", cur_file->name);
        }
        sp40 = elf_begin(sp44, ELF_C_READ, NULL);
        if ((elf_kind(sp40) != 3) || ((sp38 = elf32_getehdr(sp40)) == NULL)) {
            fprintf(stderr, "makerom: %s: not a valid ELF object file\n", cur_file->name);
            return -1;
        }

        for (sp2C = 1; sp2C < sp38->e_shnum; sp2C++) {
            if (((sp3C = _elf_getscn(sp40, sp2C)) == NULL) || ((sp34 = elf32_getshdr(sp3C)) == NULL)) {
                fprintf(stderr, "makerom: %s: can't get section index %d\n", cur_file->name, sp2C);
                return -1;
            }

            sp28 = elf_strptr(sp40, sp38->e_shstrndx, sp34->sh_name);
            if (strcmp(sp28, ".text") == 0) {
                segment->text_size += sp34->sh_size;
                cur_file->text_addralign = sp34->sh_addralign;
                cur_file->text_size = sp34->sh_size;
                cur_file->sections |= 1;
                segment->sections |= 1;
                if (cur_file->text_addralign > segment->text_addralign) {
                    segment->text_addralign = cur_file->text_addralign;
                }
                if (debug) {
                    printf("  text size  = %x\n", sp34->sh_size);
                    printf("       align = %x\n", sp34->sh_addralign);
                }
            } else if ((strcmp(sp28, ".data") == 0) || (strcmp(sp28, ".rodata") == 0)) {
                segment->data_rodata_size += sp34->sh_size;
                cur_file->data_rodata_addralign = sp34->sh_addralign;
                cur_file->data_rodata_size += sp34->sh_size;
                cur_file->sections |= 2;
                segment->sections |= 2;
                if (cur_file->data_rodata_addralign > segment->data_rodata_addralign) {
                    segment->data_rodata_addralign = cur_file->data_rodata_addralign;
                }
                if (debug) {
                    printf("  data&rodata size  = %x\n", sp34->sh_size);
                    printf("       align = %x\n", sp34->sh_addralign);
                }
            } else if (strcmp(sp28, ".sdata") == 0) {
                segment->sdata_size += sp34->sh_size;
                cur_file->sdata_addralign = sp34->sh_addralign;
                cur_file->sdata_size = sp34->sh_size;
                segment->sections |= 4;
                cur_file->sections |= 4;
                if (cur_file->sdata_addralign > segment->sdata_addralign) {
                    segment->sdata_addralign = cur_file->sdata_addralign;
                }
                if (debug) {
                    printf("  sdata size  = %x\n", sp34->sh_size);
                    printf("        align = %x\n", sp34->sh_addralign);
                }
            } else if (strcmp(sp28, ".sbss") == 0) {
                segment->sbss_size += sp34->sh_size;
                cur_file->sbss_addralign = sp34->sh_addralign;
                cur_file->sbss_size = sp34->sh_size;
                cur_file->sections |= 0x10;
                segment->sections |= 0x10;
                if (cur_file->sbss_addralign > segment->sbss_addralign) {
                    segment->sbss_addralign = cur_file->sbss_addralign;
                }
                if (debug) {
                    printf("  sbss size  = %x\n", sp34->sh_size);
                    printf("       align = %x\n", sp34->sh_addralign);
                }
            } else if (strcmp(sp28, ".bss") == 0) {
                segment->bss_size += sp34->sh_size;
                cur_file->bss_addralign = sp34->sh_addralign;
                cur_file->bss_size = sp34->sh_size;
                cur_file->sections |= 8;
                segment->sections |= 8;
                if (cur_file->bss_addralign > segment->bss_addralign) {
                    segment->bss_addralign = cur_file->bss_addralign;
                }
                if (debug) {
                    printf("  bss size  = %x\n", sp34->sh_size);
                    printf("      align = %x\n", sp34->sh_addralign);
                }
            }
        }

        close(sp44);
    }

    switch (segment->unk_14) {
        case 2:
            sp4C = segment->unk_18->unk_10 + segment->unk_18->unk_40;
            sp48 = segment->unk_1C->unk_10 + segment->unk_1C->unk_40;
            sp24 = (sp4C > sp48) ? sp4C : sp48;
            break;
    
        case 3:
            sp4C = segment->unk_18->unk_10 + segment->unk_18->unk_40;
            sp48 = segment->unk_1C->unk_10 + segment->unk_1C->unk_40;
            sp24 = (sp4C < sp48) ? sp4C : sp48;
            break;
    
        case 1:
            sp4C = segment->unk_18->unk_10 + segment->unk_18->unk_40;
            sp24 = sp4C;
            break;
    
        case 4:
            sp24 = segment->unk_10;
            break;
    
        case 5:
            sp24 = segment->unk_10;
            break;
    
        default:
            break;
    }

    sp24 = ALIGNn(segment->alignment, sp24);
    segment->unk_10 = sp24;
    if (segment->unk_28 & 1) {
        sp24 = ALIGNn(segment->text_addralign, sp24);
        segment->unk_24 = ALIGNn(segment->text_addralign, segment->unk_24);
        segment->unk_24 = ALIGNn(segment->alignment, segment->unk_24);
    }
    if (segment->sections & 1) {
        sp24 = ALIGNn(segment->text_addralign, sp24);
        segment->text_offset = sp24;
        segment->unk_10 = sp24;
        sp20 = 0;

        for (cur_file = segment->files; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sections & 1) {
                sp24 = ALIGNn(cur_file->text_addralign, sp24);
                cur_file->unk_30 = sp24;
                sp24 += cur_file->text_size;
            }
        }
    } else {
        segment->text_offset = sp24;
    }
    if (segment->sections & 2) {
        sp24 = ALIGNn(segment->data_rodata_addralign, sp24);
        segment->data_rodata_offset = sp24;
        if (sp20 != 0) {
            segment->unk_10 = sp24;
            sp20 = 0;
        }
        for (cur_file = segment->files; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sections & 2) {
                sp24 = ALIGNn(cur_file->data_rodata_addralign, sp24);
                cur_file->unk_34 = sp24;
                sp24 += cur_file->data_rodata_size;
            }
        }
    } else {
        segment->data_rodata_offset = sp24;
    }
    if (segment->sections & 4) {
        sp24 = ALIGNn(segment->sdata_addralign, sp24);
        segment->sdata_offset = sp24;
        if (sp20 != 0) {
            segment->unk_10 = sp24;
            sp20 = 0;
        }
        for (cur_file = segment->files; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sections & 4) {
                sp24 = ALIGNn(cur_file->sdata_addralign, sp24);
                cur_file->unk_38 = sp24;
                sp24 += cur_file->sdata_size;
            }
        }
    } else {
        segment->sdata_offset = sp24;
    }
    if (segment->sections & 0x10) {
        sp24 = ALIGNn(segment->sbss_addralign, sp24);
        segment->sbss_offset = sp24;
        if (sp20 != 0) {
            segment->unk_10 = sp24;
            sp20 = 0;
        }
        for (cur_file = segment->files; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sections & 0x10) {
                sp24 = ALIGNn(cur_file->sbss_addralign, sp24);
                cur_file->unk_3C = sp24;
                sp24 += cur_file->sbss_size;
            }
        }
    } else {
        segment->sbss_offset = sp24;
    }
    if (segment->sections & 8) {
        sp24 = ALIGNn(segment->bss_addralign, sp24);
        segment->bss_offset = sp24;
        if (sp20) {
            segment->unk_10 = sp24;
            sp20 = 0;
        }
        for (cur_file = segment->files; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sections & 8) {
                sp24 = ALIGNn(cur_file->bss_addralign, sp24);
                cur_file->unk_40 = sp24;
                sp24 += cur_file->bss_size;
            }
        }
    } else {
        segment->bss_offset = sp24;
    }

    segment->text_size = segment->data_rodata_offset - segment->unk_10;
    segment->data_rodata_size = segment->sdata_offset - segment->data_rodata_offset;
    segment->sdata_size = segment->sbss_offset - segment->sdata_offset;
    segment->sbss_size = segment->bss_offset - segment->sbss_offset;
    segment->bss_size = sp24 - segment->bss_offset;
    segment->unk_40 = sp24 - segment->unk_10;
    return 0;
}

s32 checkSizes(void) {
    Segment* seg;
    s32 sp30;

    sp30 = 0;
    for (seg = SegmentList; seg != NULL; seg = seg->next) {
            if ((seg->unk_28 & 1) && ((seg->text_size + seg->data_rodata_size + seg->sdata_size) > 0x100000)) {
                fprintf(stderr, "makerom: segment \"%s\" (text+data) size ", sp34->name);
                fprintf(stderr, "(%d+%d) = %d (0x%x)\n         ",
                    seg->text_size,
                    seg->unk30 + seg->unk34,
                    seg->text_size + seg->unk30 + seg->unk34,
                    seg->text_size + seg->unk30 + seg->unk34
                    );
                fprintf(stderr, "exceeds maximum BOOT segment size %d (0x%x)\n", 0x100000, 0x100000);
                sp30 = 1;
            }
            if (seg->unk_40 > seg->unk44) {
                fprintf(stderr, "makerom: segment \"%s\" (text+data+bss) size ", seg->name);
                fprintf(stderr, "(%d+%d+%d) = %d (0x%x)\n         ",
                    seg->text_size,
                    seg->unk30 + seg->unk34,
                    seg->unk3C + seg->unk38,
                    seg->unk40, seg->unk40
                    );
                fprintf(stderr, "exceeds given maximum segment size %d (0x%x)\n", sp34->unk44, sp34->unk44);
                sp30 = 1;
            }

    }

    if (sp30 != 0) {
        return -1;
    } else {
        return 0;
    }
}

