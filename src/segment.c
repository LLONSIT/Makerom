#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/stat.h>
#include <unistd.h>
#include <libelf.h>
#include <fcntl.h>
#include "types.h"
#include "makerom.h"

const char *sys_errlist[];

extern Wave* waveList;
extern Segment* SegmentList;

#define SECTION_TEXT (1 << 0)
#define SECTION_DATA_RODATA (1 << 1)
#define SECTION_SDATA (1 << 2)
#define SECTION_BSS (1 << 3)
#define SECTION_SBSS (1 << 4)


s32 readRaw(Segment* seg) {
    Path* p; // linked list (files?)
    int fd;
    int offset;
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


#if 0 //non_matching
Elf32_Shdr* lookupShdr(Wave* wave, unsigned char* segSectName) {
    Elf_Scn* scn;
    Elf32_Shdr* shdr;
    u32 index;
    s8* sectName;


    index = 1;
    if ((u16) wave->ehdr->e_shnum >= 2U) {
loop_1:
        scn = _elf_getscn(wave->elf, index);
        if ((scn == NULL) || (shdr = elf32_getshdr(scn), (shdr == NULL))) {
            fprintf(stderr, "makerom: %s: can't get section index %d\n", wave->name, index);
            return NULL;
        }
        sectName = elf_strptr(wave->elf, (u32) wave->ehdr->e_shstrndx, shdr->sh_name);
        if (strcmp(sectName, segSectName) == 0) {
            goto block_7;
        }
       // temp_t8 = index + 1;
        //index = temp_t8;
        if (index >= (u16) wave->ehdr->e_shnum) {
            goto block_7;
        }
        goto loop_1;
    }
block_7:
    if (index >= (u16) wave->ehdr->e_shnum) {
        fprintf(stderr, "makerom: %s: cannot find %s section\n", wave->name, segSectName);
        return NULL;
    }
    return shdr;
}
#endif

#define TO_PHYSICAL(addr) ((u32)(addr) & 0x1FFFFFFF)

int checkOverlaps(void) {
    Wave* w;
    SegmentChain* sc;
    SegmentChain* tc;
    Segment* s;
    Segment* t;
    int isOverlap;

    isOverlap = 0;
    
    for (w = waveList; w != NULL; w = w->next) {
        for (sc = w->segmentChain; sc != NULL; sc = sc->next) {
            for (tc = sc->next; tc != NULL; tc = tc->next) {
                s = sc->segment;
                t = tc->segment;
                if ((s->address >= 0x80000000) && (s->address < 0xC0000000) 
                        && (t->address >= 0x80000000) && (t->address < 0xC0000000) 
                        && ((TO_PHYSICAL(s->address) + s->totalSize) > TO_PHYSICAL(t->address)) 
                        && ((TO_PHYSICAL(t->address) + t->totalSize) > TO_PHYSICAL(s->address))) {
                    fprintf(stderr, "makerom: segment \"%s\" [0x%x, 0x%x) overlaps with\n", s->name, s->address, s->address + s->totalSize);
                    fprintf(stderr, "         segment \"%s\" [0x%x, 0x%x)\n", t->name, t->address, t->address + t->totalSize);
                    fprintf(stderr, "         in wave \"%s\"\n", w->name);
                    isOverlap = 1;
                }
            }
        }
    }
    return isOverlap;
}

s32 readObject(Segment* seg) {    
    unsigned char* segSectName;
    Elf32_Shdr* shdr;

  
    if ((segSectName = malloc(strlen((s8* ) seg->name) + 9)) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }
    sprintf(segSectName, ".%s.text", seg->name);
    
    if ((shdr = func_0040F5C0(seg->w, segSectName)) == NULL) {
        return -1;
    }
    if (shdr->sh_size != seg->textSize) {
        fprintf(stderr, "makerom: %s: section size for %s does not match input section sizes\n", seg->w->name, segSectName);
        fprintf(stderr, "makerom:   shdr = %d, textSize = %d\n", shdr->sh_size, seg->textSize);
        free(segSectName);
        return -1;
    }
    if (lseek(seg->w->fd, shdr->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: %s: seek to section %s failed\n", seg->w->name, segSectName);
        free(segSectName);
        return -1;
    }
    if (read(seg->w->fd, seg->romOffset + B_10016A60, shdr->sh_size) != shdr->sh_size) {
        fprintf(stderr, "makerom: %s: read of section %s failed\n", seg->w->name, segSectName);
        free(segSectName);
        return -1;
    }
    sprintf(segSectName, ".%s.data", seg->name);
    
    if ((shdr = func_0040F5C0(seg->w, segSectName)) == NULL) {
        return -1;
    }
    if (shdr->sh_size != seg->dataSize) {
        fprintf(stderr, "makerom: %s: section size for %s does not match input section sizes\n", seg->w->name, segSectName);
        fprintf(stderr, "large data failed\n");
        fprintf(stderr, "%s, file large=%x, our dataSize=%x\n", seg->name, shdr->sh_size, seg->dataSize);
        free(segSectName);
        return -1;
    }
    if (lseek(seg->w->fd, shdr->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: %s: seek to section %s failed\n", seg->w->name, segSectName);
        free(segSectName);
        return -1;
    }
    if (read(seg->w->fd, seg->romOffset + B_10016A60 + seg->textSize, shdr->sh_size) != shdr->sh_size) {
        fprintf(stderr, "makerom: %s: read of section %s failed\n", seg->w->name, segSectName);
        free(segSectName);
        return -1;
    }
    sprintf(segSectName, ".%s.sdata", seg->name);
    
    if ((shdr = func_0040F5C0(seg->w, segSectName)) == NULL) {
        return -1;
    }
    if (shdr->sh_size != seg->sdataSize) {
        fprintf(stderr, "makerom: %s: section size for %s does not match input section sizes\n", seg->w->name, segSectName);
        fprintf(stderr, "small data failed\n");
        free(segSectName);
        return -1;
    }
    if (lseek(seg->w->fd, shdr->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: %s: seek to section %s failed\n", seg->w->name, segSectName);
        free(segSectName);
        return -1;
    }
    if (read(seg->w->fd, seg->romOffset + B_10016A60 + seg->textSize + seg->dataSize, shdr->sh_size) != shdr->sh_size) {
        fprintf(stderr, "makerom: %s: read of section %s failed\n", seg->w->name, segSectName);
        free(segSectName);
        return -1;
    }
    free(segSectName);
    return 0;
}

int createRomImage(unsigned char* romFile, unsigned char* object) {
    FILE* f;
    Segment* seg;
    s32 bootStack; //???
    unsigned char* sectName;
    size_t romSize;
    int fd;
    Elf* elf;
    Elf32_Ehdr* ehdr;
    Elf_Scn* scn;
    Elf32_Shdr* shdr;
    int index;
    int end;
    int i;
    unsigned char* fillbuffer;

    int tmp_clock;
        
    if ((fd = open(object, 0)) == -1) {
        fprintf(stderr, "makerom: %s: %s\n", object, sys_errlist[errno]);
        return -1;
    }
    elf = elf_begin(fd, ELF_C_READ, NULL);
    ehdr = elf32_getehdr(elf);

    for (index = 1; index < ehdr->e_shnum; index++) {
                scn = _elf_getscn(elf, index);
        shdr = elf32_getshdr(scn);
        sectName = elf_strptr(elf, (u32) ehdr->e_shstrndx, shdr->sh_name);
        if (strcmp(sectName, ".text") == 0) {
            break;
        }
    }

    if (shdr->sh_size > 0x50) {
        fprintf(stderr, "makerom: entr size %d is larger than %d\n", shdr->sh_size, 0x50);
        return -1;
    }
    if (lseek(fd, shdr->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: lseek of entry section failed\n");
        return -1;
    }
    if (read(fd, B_10016A60, shdr->sh_size) != shdr->sh_size) {
        fprintf(stderr, "makerom: read of entry section failed\n");
        return -1;
    }
    if (lookupShdr() != 0) {
        return -1;
    }
    
    for (seg = SegmentList; seg != NULL; seg = seg->next) {
        if (seg->flags & 2) {
            func_0040F758(seg);
        } else if (seg->flags & 4) {
            readRaw(seg);
        }
        romSize = seg->romOffset + seg->textSize + seg->dataSize + seg->sdataSize;
    }
    
    if ((f = fopen(romFile, "w+")) == NULL) {
        fprintf(stderr, "makerom: %s: %s\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (offset != 0) {
        if ((fseek(f, offset, 0) != 0)) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
    }
    
    if (fwrite(headerBuf, 1, headerWordAlignedByteSize, f) != headerWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", romFile);
        return -1;
    }
    if (fseek(f, offset + 8, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(&bootAddress, 4, 1, f) != 1) {
        fprintf(stderr, "makerom: %s: write error\n", romFile);
        return -1;
    }
    if (changeclock != 0) {
        tmp_clock = 0;
        if (fseek(f, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fread(&tmp_clock, 4, 1, f) != 1) {
            fprintf(stderr, "makerom: %s: read error \n", romFile);
            return -1;
        }
        clockrate |= tmp_clock;
        if (fseek(f, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(&clockrate, 4, 1, f) != 1) {
            fprintf(stderr, "makerom: %s: write error\n", romFile);
            return -1;
        }
    }
    if (fseek(f, offset + 0x40, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(bootBuf, 1, bootWordAlignedByteSize, f) != bootWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", romFile);
        return -1;
    }
    if (nofont == 0) {
        if (fseek(f, offset + 0xB70, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(fontBuf, 1, fontdataWordAlignedByteSize, f) != fontdataWordAlignedByteSize) {
            fprintf(stderr, "makerom: %s: write error\n", romFile);
            return -1;
        }
    }
    if (fseek(f, offset + 0x1000, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(B_10016A60, 1, romSize, f) != romSize) {
        fprintf(stderr, "makerom: %s: write error\n", romFile);
        return -1;
    }

    end = romSize + offset + 0x1000;
    finalromSize <<= 0x11;
    if ((finalromSize != 0) && (end < finalromSize)) {
        if ((fillbuffer = malloc(0x2000)) == NULL) {
            fprintf(stderr, "malloc failed\n");
            return -1;
        }

        for (i = 0; i < 0x2000; i++) {
            fillbuffer[i] = fillData;
        }
 
       while (end < finalromSize) {
            if ((finalromSize - end) > 0x2000) {
                if (fwrite(fillbuffer, 1, 0x2000, f) != 0x2000) {
                    fprintf(stderr, "makerom: %s: write error %x\n", romFile, end);
                    return -1;
                }
                end += 0x2000;
            } else {
                if (fwrite(fillbuffer, 1, finalromSize - end, f) != (finalromSize - end)) {
                    fprintf(stderr, "makerom: %s: write error\n", romFile);
                    return -1;
                }
                end += finalromSize - end;
            }
        }
    }

    return 0;
}
