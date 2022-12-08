#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>
#include <unistd.h>
#include <libelf.h>
#include <fcntl.h>
#include "types.h"
#include "structs.h"
#include "functions.h"

const char *sys_errlist[];




s32 readRaw(Segment* seg) {
    Path* p; // linked list (files?)
    s32 fd;
    s32 offset;
    off_t fileSize;
    off_t totalSize;
    struct stat statBuffer;

    totalSize = 0;
    offset = seg->romOffset;

    for (p = seg->pathList; p != NULL; p = p->next) {
        if ((fd = open(p->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", p->name, sys_errlist[errno]);
            return -1;
        }
        if (fstat(fd, &statBuffer) == -1) {
            fprintf(stderr, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }

        fileSize = statBuffer.st_size;
        totalSize += fileSize;
        if (totalSize > seg->dataSize) {
            fprintf(stderr, "makerom: %s: segment size changed\n", seg->name);
            return -1;
        }
        if (read(fd, B_10016A60 + offset, fileSize) != fileSize) {
            fprintf(stderr, "makerom: %s: read failed (%s)\n", p->name, sys_errlist[errno]);
            return -1;
        }

        close(fd);
        offset += fileSize;
    }

    return 0;
}


int sizeObject(Segment* segment) {
    u32 address1;
    u32 address2;
    int elfid;
    Elf* cur_elf;
    Elf_Scn* scn;
    Elf32_Ehdr* ehdr;
    Elf32_Shdr* shdr;
    Path* cur_file;
    u32 section_index;                                       /* compiler-managed */
    char* section_name;
    s32 currAddress;
    s32 firstSection;

    firstSection = 1;
    segment->textAlign = 0x10;

    if (debug) {
        if ((segment->align != 0x10) && (segment->align != 0)) {
            printf("Segment %s: alignment %x\n", segment->name, segment->align);
        }
        if ((segment->romalign != 0x10) && (segment->romalign != 0)) {
            printf("Segment %s: romalign %x\n", segment->name, segment->romalign);
        }
    }

    for (cur_file = segment->pathList; cur_file != NULL; cur_file = cur_file->next) {
        cur_file->textSize = 0;
        cur_file->dataSize = 0;
        cur_file->sdataSize = 0;
        cur_file->sbssSize = 0;
        cur_file->bssSize = 0;
        cur_file->textAlign = 0;
        cur_file->dataAlign = 0;
        cur_file->sdataAlign = 0;
        cur_file->sbssAlign = 0;
        cur_file->bssAlign = 0;

        if ((elfid = open(cur_file->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", cur_file->name, sys_errlist[errno]);
            return -1;
        }

        if (debug) {
            printf("Scanning %s\n", cur_file->name);
        }
        cur_elf = elf_begin(elfid, ELF_C_READ, NULL);
        if ((elf_kind(cur_elf) != 3) || ((ehdr = elf32_getehdr(cur_elf)) == NULL)) {
            fprintf(stderr, "makerom: %s: not a valid ELF object file\n", cur_file->name);
            return -1;
        }

        for (section_index = 1; section_index < ehdr->e_shnum; section_index++) {
            if (((scn = _elf_getscn(cur_elf, section_index)) == NULL) || ((shdr = elf32_getshdr(scn)) == NULL)) {
                fprintf(stderr, "makerom: %s: can't get section index %d\n", cur_file->name, section_index);
                return -1;
            }

            section_name = elf_strptr(cur_elf, ehdr->e_shstrndx, shdr->sh_name);
            if (strcmp(section_name, ".text") == 0) {
                segment->textSize += shdr->sh_size;
                cur_file->textAlign = shdr->sh_addralign;
                cur_file->textSize = shdr->sh_size;
                cur_file->sectionsExisting |= SECTION_TEXT;
                segment->sectionsExisting |= SECTION_TEXT;
                if (cur_file->textAlign > segment->textAlign) {
                    segment->textAlign = cur_file->textAlign;
                }
                if (debug) {
                    printf("  text size  = %x\n", shdr->sh_size);
                    printf("       align = %x\n", shdr->sh_addralign);
                }
            } else if ((strcmp(section_name, ".data") == 0) || (strcmp(section_name, ".rodata") == 0)) {
                segment->dataSize += shdr->sh_size;
                cur_file->dataAlign = shdr->sh_addralign;
                cur_file->dataSize += shdr->sh_size;
                cur_file->sectionsExisting |= SECTION_DATA_RODATA;
                segment->sectionsExisting |= SECTION_DATA_RODATA;
                if (cur_file->dataAlign > segment->dataAlign) {
                    segment->dataAlign = cur_file->dataAlign;
                }
                if (debug) {
                    printf("  data&rodata size  = %x\n", shdr->sh_size);
                    printf("       align = %x\n", shdr->sh_addralign);
                }
            } else if (strcmp(section_name, ".sdata") == 0) {
                segment->sdataSize += shdr->sh_size;
                cur_file->sdataAlign = shdr->sh_addralign;
                cur_file->sdataSize = shdr->sh_size;
                segment->sectionsExisting |= SECTION_SDATA;
                cur_file->sectionsExisting |= SECTION_SDATA;
                if (cur_file->sdataAlign > segment->sdataAlign) {
                    segment->sdataAlign = cur_file->sdataAlign;
                }
                if (debug) {
                    printf("  sdata size  = %x\n", shdr->sh_size);
                    printf("        align = %x\n", shdr->sh_addralign);
                }
            } else if (strcmp(section_name, ".sbss") == 0) {
                segment->sbssSize += shdr->sh_size;
                cur_file->sbssAlign = shdr->sh_addralign;
                cur_file->sbssSize = shdr->sh_size;
                cur_file->sectionsExisting |= SECTION_SBSS;
                segment->sectionsExisting |= SECTION_SBSS;
                if (cur_file->sbssAlign > segment->sbssAlign) {
                    segment->sbssAlign = cur_file->sbssAlign;
                }
                if (debug) {
                    printf("  sbss size  = %x\n", shdr->sh_size);
                    printf("       align = %x\n", shdr->sh_addralign);
                }
            } else if (strcmp(section_name, ".bss") == 0) {
                segment->bssSize += shdr->sh_size;
                cur_file->bssAlign = shdr->sh_addralign;
                cur_file->bssSize = shdr->sh_size;
                cur_file->sectionsExisting |= SECTION_BSS;
                segment->sectionsExisting |= SECTION_BSS;
                if (cur_file->bssAlign > segment->bssAlign) {
                    segment->bssAlign = cur_file->bssAlign;
                }
                if (debug) {
                    printf("  bss size  = %x\n", shdr->sh_size);
                    printf("      align = %x\n", shdr->sh_addralign);
                }
            }
        }

        close(elfid);
    }

    switch (segment->addrFunc) {
        case 2:
            address1 = segment->afterSeg1->address + segment->afterSeg1->totalSize;
            address2 = segment->afterSeg2->address + segment->afterSeg2->totalSize;
            currAddress = (address1 > address2) ? address1 : address2;
            break;
    
        case 3:
            address1 = segment->afterSeg1->address + segment->afterSeg1->totalSize;
            address2 = segment->afterSeg2->address + segment->afterSeg2->totalSize;
            currAddress = (address1 < address2) ? address1 : address2;
            break;
    
        case 1:
            address1 = segment->afterSeg1->address + segment->afterSeg1->totalSize;
            currAddress = address1;
            break;
    
        case 4:
            currAddress = segment->address;
            break;
    
        case 5:
            currAddress = segment->address;
            break;
    
        default:
            break;
    }

    currAddress = ALIGNn(segment->align, currAddress);
    segment->address = currAddress;
    if (segment->flags & 1) {
        currAddress = ALIGNn(segment->textAlign, currAddress);
        segment->romOffset = ALIGNn(segment->textAlign, segment->romOffset);
        segment->romOffset = ALIGNn(segment->align, segment->romOffset);
    }

    if (segment->sectionsExisting & SECTION_TEXT) {
        currAddress = ALIGNn(segment->textAlign, currAddress);
        segment->textStart = currAddress;
        segment->address = currAddress;
        firstSection = 0;

        for (cur_file = segment->pathList; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sectionsExisting & SECTION_TEXT) {
                currAddress = ALIGNn(cur_file->textAlign, currAddress);
                cur_file->textStart = currAddress;
                currAddress += cur_file->textSize;
            }
        }
    } else {
        segment->textStart = currAddress;
    }
    if (segment->sectionsExisting & SECTION_DATA_RODATA) {
        currAddress = ALIGNn(segment->dataAlign, currAddress);
        segment->dataStart = currAddress;
        if (firstSection) {
            segment->address = currAddress;
            firstSection = 0;
        }
        for (cur_file = segment->pathList; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sectionsExisting & SECTION_DATA_RODATA) {
                currAddress = ALIGNn(cur_file->dataAlign, currAddress);
                cur_file->dataStart = currAddress;
                currAddress += cur_file->dataSize;
            }
        }
    } else {
        segment->dataStart = currAddress;
    }
    if (segment->sectionsExisting & SECTION_SDATA) {
        currAddress = ALIGNn(segment->sdataAlign, currAddress);
        segment->sdataStart = currAddress;
        if (firstSection) {
            segment->address = currAddress;
            firstSection = 0;
        }
        for (cur_file = segment->pathList; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sectionsExisting & SECTION_SDATA) {
                currAddress = ALIGNn(cur_file->sdataAlign, currAddress);
                cur_file->sdataStart = currAddress;
                currAddress += cur_file->sdataSize;
            }
        }
    } else {
        segment->sdataStart = currAddress;
    }
    if (segment->sectionsExisting & SECTION_SBSS) {
        currAddress = ALIGNn(segment->sbssAlign, currAddress);
        segment->sbssStart = currAddress;
        if (firstSection) {
            segment->address = currAddress;
            firstSection = 0;
        }
        for (cur_file = segment->pathList; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sectionsExisting & SECTION_SBSS) {
                currAddress = ALIGNn(cur_file->sbssAlign, currAddress);
                cur_file->bssSize = currAddress;
                currAddress += cur_file->sbssSize;
            }
        }
    } else {
        segment->sbssStart = currAddress;
    }
    if (segment->sectionsExisting & SECTION_BSS) {
        currAddress = ALIGNn(segment->bssAlign, currAddress);
        segment->bssStart = currAddress;
        if (firstSection) {
            segment->address = currAddress;
            firstSection = 0;
        }
        for (cur_file = segment->pathList; cur_file != NULL; cur_file = cur_file->next) {
            if (cur_file->sectionsExisting & SECTION_BSS) {
                currAddress = ALIGNn(cur_file->bssAlign, currAddress);
                cur_file->bssStart = currAddress;
                currAddress += cur_file->bssSize;
            }
        }
    } else {
        segment->bssStart = currAddress;
    }

    segment->textSize = segment->dataStart - segment->address;
    segment->dataSize = segment->sdataStart - segment->dataStart;
    segment->sdataSize = segment->sbssStart - segment->sdataStart;
    segment->sbssSize = segment->bssStart - segment->sbssStart;
    segment->bssSize = currAddress - segment->bssStart;
    segment->totalSize = currAddress - segment->address;
    return 0;
}

#define TO_PHYSICAL(addr) ((u32)(addr) & 0x1FFFFFFF)

int checkOverlaps(void) {
    Wave* w;
    SegmentChain* sp38;
    SegmentChain* sp34;
    Segment* sp30;
    Segment* sp2C;
    int sp28;

    sp28 = 0;
    
    for (w = waveList; w != NULL; w = w->next) {
        for (sp38 = w->segmentChain; sp38 != NULL; sp38 = sp38->next) {
            for (sp34 = sp38->next; sp34 != NULL; sp34 = sp34->next) {
                sp30 = sp38->segment;
                sp2C = sp34->segment;
                if ((sp30->address >= 0x80000000) && (sp30->address < 0xC0000000) 
                        && (sp2C->address >= 0x80000000) && (sp2C->address < 0xC0000000) 
                        && ((TO_PHYSICAL(sp30->address) + sp30->totalSize) > TO_PHYSICAL(sp2C->address)) 
                        && ((TO_PHYSICAL(sp2C->address) + sp2C->totalSize) > TO_PHYSICAL(sp30->address))) {
                    fprintf(stderr, "makerom: segment \"%s\" [0x%x, 0x%x) overlaps with\n", sp30->name, sp30->address, sp30->address + sp30->totalSize);
                    fprintf(stderr, "         segment \"%s\" [0x%x, 0x%x)\n", sp2C->name, sp2C->address, sp2C->address + sp2C->totalSize);
                    fprintf(stderr, "         in wave \"%s\"\n", w->name);
                    sp28 = 1;
                }
            }
        }
    }
    return sp28;
}

int createRomImage(const char* filename, const char* file) {
    FILE* stream;
    Segment* seg;
    s32 pad;
    char* sp50;
    u32 sp4C;
    s32 sp48;
    Elf* sp44;
    Elf32_Ehdr* sp40;
    Elf_Scn* sp3C;
    Elf32_Shdr* sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    char* sp28;
    s32 ptr;

    if ((sp48 = open(file, 0)) == -1) {
        fprintf(stderr, "makerom: %s: %s\n", file, sys_errlist[errno]);
        return -1;
    }
    sp44 = elf_begin(sp48, ELF_C_READ, NULL);
    sp40 = elf32_getehdr(sp44);

    for (sp34 = 1; sp34 < sp40->e_shnum; sp34++) {
                sp3C = elf_getscn(sp44, sp34);
        sp38 = elf32_getshdr(sp3C);
        sp50 = elf_strptr(sp44, (u32) sp40->e_shstrndx, sp38->sh_name);

        if (strcmp(sp50, ".text") == 0) {
            break;
        }
    }

    //Checking some conditions
    if (sp38->sh_size > 0x50) {
        fprintf(stderr, "makerom: entr size %d is larger than %d\n", sp38->sh_size, 0x50);
        return -1;
    }
    if (lseek(sp48, sp38->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: lseek of entry section failed\n");
        return -1;
    }
    if (read(sp48, B_10016A60, sp38->sh_size) != sp38->sh_size) {
        fprintf(stderr, "makerom: read of entry section failed\n");
        return -1;
    }
    if (func_0040F214() != 0) {
        return -1;
    }
    for (seg = SegmentList; seg != NULL; seg = seg->next) {
        if (seg->unk_28 & 2) {
            func_0040F758(seg);
        } else if (seg->unk_28 & 4) {
            func_0040FDE0(seg);
        }
        sp4C = seg->unk_24 + seg->text_size + seg->data_rodata_size + seg->sdata_size;
    }
    if ((stream = fopen(filename, "w+")) == NULL) {
        fprintf(stderr, "makerom: %s: %s\n", filename, sys_errlist[errno]);
        return -1;
    }
    if (offset != 0) {
        if ((fseek(stream, offset, 0) != 0)) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
            return -1;
        }
    }
    if (fwrite(headerBuf, 1U, headerWordAlignedByteSize, stream) != headerWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", filename);
        return -1;
    }
    if (fseek(stream, offset + 8, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(&bootAddress, 4U, 1U, stream) != 1) {
        fprintf(stderr, "makerom: %s: write error\n", filename);
        return -1;
    }
    if (changeclock != 0) {
        ptr = 0;
        if (fseek(stream, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
            return -1;
        }
        if (fread(&ptr, 4U, 1U, stream) != 1) {
            fprintf(stderr, "makerom: %s: read error \n", filename);
            return -1;
        }
        clockrate |=  ptr;
        if (fseek(stream, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(&clockrate, 4U, 1U, stream) != 1) {
            fprintf(stderr, "makerom: %s: write error\n", filename);
            return -1;
        }
    }
    if (fseek(stream, offset + 0x40, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(bootBuf, 1U, bootWordAlignedByteSize, stream) != bootWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", filename);
        return -1;
    }
    if (nofont == 0) {
        if (fseek(stream, offset + 0xB70, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(fontBuf, 1U, fontdataWordAlignedByteSize, stream) != fontdataWordAlignedByteSize) {
            fprintf(stderr, "makerom: %s: write error\n", filename);
            return -1;
        }
    }
    if (fseek(stream, offset + 0x1000, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", filename, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(B_10016A60, 1, sp4C, stream) != sp4C) {
        fprintf(stderr, "makerom: %s: write error\n", filename);
        return -1;
    }

    sp30 = sp4C + offset + 0x1000;
    finalromSize <<= 0x11;
    if ((finalromSize != 0) && (sp30 < finalromSize)) {
        if ((sp28 = malloc(0x2000)) == NULL) {
            fprintf(stderr, "malloc failed\n");
            return -1;
        }

        for (sp2C = 0; sp2C < 0x2000; sp2C++) {
            sp28[sp2C] = fillData;
        }
        while (sp30 < finalromSize) {
            if ((finalromSize - sp30) > 0x2000) {
                if (fwrite(sp28, 1, 0x2000, stream) != 0x2000) {
                    fprintf(stderr, "makerom: %s: write error %x\n", filename, sp30);
                    return -1;
                }
                sp30 += 0x2000;
            } else {
                if (fwrite(sp28, 1, finalromSize - sp30, stream) != (finalromSize - sp30)) {
                    fprintf(stderr, "makerom: %s: write error\n", filename);
                    return -1;
                }
                sp30 += finalromSize - sp30;
            }
        }
    }

    return 0;
}
