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
#include "makerom_common.h"

//Static
const char *sys_errlist[];
extern Segment* segmentList;
extern unsigned int ALIGNn(unsigned int romalign, int n);
static void* B_10016A60;

#define SECTION_TEXT (1 << 0)
#define SECTION_DATA_RODATA (1 << 1)
#define SECTION_SDATA (1 << 2)
#define SECTION_BSS (1 << 3)
#define SECTION_SBSS (1 << 4)


int scanSegments() {
    Segment* seg;
    u32 offset;
    s32 rom_size; 

    offset = 0x50;
    if (elf_version(1) == 0) {  //Libelf stuff, Checks a version standart?
        fprintf(stderr, "makerom: out of date\n");
        return -1;
    }
    // s = segmentList;
    for (seg = segmentList; seg != NULL; seg = seg->next) {
        if (seg->w == 0) { //???
            fprintf(stderr, "makerom: segment \"%s\": not found in any wave\n", seg->name);
            return -1;
        }
        seg->romOffset = offset;
        if (seg->flags & 2) {
            if (sizeObject(seg) == -1) {
                return -1;
            }
        } else if (seg->flags & 4) {
            if (sizeRaw(seg) == -1) {
                return -1;
            }
        }

        offset = seg->romOffset;
        offset += seg->textSize + seg->dataSize + seg->sdataSize;
        offset = ALIGNn(seg->align, offset);
    }
    rom_size = (offset > 0x50) ? offset : 0x50;
    Allocate = calloc(rom_size, 1);
    if (Allocate == NULL) {
        fprintf(stderr, "makerom: malloc failed [RomSize= %d kB]\n", (rom_size + 0x3FF) / 0x400);
        return -1;
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

int sizeRaw(Segment* seg) {
    u32 address1;
    u32 address2;
    u32 currAddress;
    s32 fd;
    Path* p;
    struct stat statBuffer;

    seg->dataAlign = 0x10;
    seg->sectionsExisting = 2;
    for (p = seg->pathList; p != NULL; p = p->next) {
        p->textSize = 0;
        p->dataSize = 0;
        p->sdataSize = 0;
        p->sbssSize = 0;
        p->bssSize = 0;
        p->textAlign = 0;
        p->dataAlign = 0x10;
        p->sdataAlign = 0;
        p->sbssAlign = 0;
        p->bssAlign = 0;
        p->sectionsExisting = 2;
        
        if ((fd = open(p->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", p->name, sys_errlist[errno]);
            return -1;
        }
        if (fstat(fd, &statBuffer) == -1) {
            fprintf(stderr, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }
        seg->dataSize = (s32) (seg->dataSize + statBuffer.st_size);
        close(fd);
   

    }

 
    seg->totalSize = seg->dataSize = ((u32) (seg->dataSize + 0xF) >> 4) * 0x10;

    switch (seg->addrFunc) {
    case 2:
     
        address1 = seg->afterSeg1->address + seg->afterSeg1->totalSize;
        address2 = seg->afterSeg2->address + seg->afterSeg2->totalSize;
        currAddress = (address1 > address2) ? address1 : address2;
        break;
    case 3:
        address1 = seg->afterSeg1->address + seg->afterSeg1->totalSize;
        address2 = seg->afterSeg2->address + seg->afterSeg2->totalSize;
        currAddress = (address1 < address2) ? address1 : address2;
        break;
    case 1:
        address1 = seg->afterSeg1->address + seg->afterSeg1->totalSize;
        currAddress = address1;
        break;
    case 4:
        currAddress = seg->address;
        break;
    case 5:
        currAddress = seg->address;
        break;
    default:
        break;
    }
    currAddress = ALIGNn(seg->align, currAddress);
    currAddress = ALIGNn(seg->dataAlign, currAddress);
    seg->address = currAddress;
    return 0;
}

s32 checkSizes(void) {
    Segment* seg; //was s, but changed for seg 
    s32 sizeViolation;

    sizeViolation = 0;
    for (seg = segmentList; seg != NULL; seg = seg->next) {
            if ((seg->flags & 1) && ((seg->textSize + seg->dataSize + seg->sdataSize) > 0x100000)) {
                fprintf(stderr, "makerom: segment \"%s\" (text+data) size ", seg->name);
                fprintf(stderr, "(%d+%d) = %d (0x%x)\n         ", 
                    seg->textSize, 
                    seg->dataSize + seg->sdataSize, 
                    seg->textSize + seg->dataSize + seg->sdataSize, 
                    seg->textSize + seg->dataSize + seg->sdataSize
                    );
                fprintf(stderr, "exceeds maximum BOOT segment size %d (0x%x)\n", 0x100000, 0x100000);
                sizeViolation = 1;
            }
            if (seg->totalSize > seg->maxSize) {
                fprintf(stderr, "makerom: segment \"%s\" (text+data+bss) size ", seg->name);
                fprintf(stderr, "(%d+%d+%d) = %d (0x%x)\n         ", 
                    seg->textSize, 
                    seg->dataSize + seg->sdataSize, 
                    seg->bssSize + seg->sbssSize, 
                    seg->totalSize, seg->totalSize
                    );
                fprintf(stderr, "exceeds given maximum segment size %d (0x%x)\n", seg->maxSize, seg->maxSize);
                sizeViolation = 1;
            }
        
    }

    if (sizeViolation != 0) {
        return -1;
    } else {
        return 0;
    }
}

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

s32 createSegmentSymbols(u8* source, u8* object) {
    FILE* f;
    Segment* seg;
    s8* cmd;

  
    if ((f = fopen(source, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", source);
        return -1;
    }
   
    for(seg = segmentList ; seg != NULL ; seg = seg->next) {
    
            fprintf(f, ".globl _%sSegmentRomStart; ", seg->name);
            fprintf(f, "_%sSegmentRomStart = 0x%08x\n", seg->name, seg->romOffset + offset + 0x1000);
            fprintf(f, ".globl _%sSegmentRomEnd; ", seg->name);
            fprintf(f, "_%sSegmentRomEnd = 0x%08x\n", seg->name, seg->romOffset + offset + seg->textSize + seg->dataSize + seg->sdataSize + 0x1000);
            if (seg->flags & COMMON_UNKNOWN_FLAG) {
                fprintf(f, ".globl _%sSegmentStart; ", seg->name);
                fprintf(f, "_%sSegmentStart = 0x%08x\n", seg->name, seg->address);
                if (seg->textSize != 0) {
                    fprintf(f, ".globl _%sSegmentTextStart; ", seg->name);
                    fprintf(f, "_%sSegmentTextStart = 0x%08x\n", seg->name, seg->textStart);
                    fprintf(f, ".globl _%sSegmentTextEnd; ", seg->name);
                    fprintf(f, "_%sSegmentTextEnd = 0x%08x\n", seg->name, seg->textStart + seg->textSize);
                }
                if ((seg->dataSize + seg->sdataSize) != 0) {
                    fprintf(f, ".globl _%sSegmentDataStart; ", seg->name);
                    fprintf(f, "_%sSegmentDataStart = 0x%08x\n", seg->name, seg->dataStart);
                    fprintf(f, ".globl _%sSegmentDataEnd; ", seg->name);
                    fprintf(f, "_%sSegmentDataEnd = 0x%08x\n", seg->name, seg->dataStart + seg->dataSize + seg->sdataSize);
                }
                if ((seg->bssSize + seg->sbssSize) != 0) {
                    fprintf(f, ".globl _%sSegmentBssStart; ", seg->name);
                    fprintf(f, "_%sSegmentBssStart = 0x%08x\n", seg->name, seg->sbssStart);
                    fprintf(f, ".globl _%sSegmentBssEnd; ", seg->name);
                    fprintf(f, "_%sSegmentBssEnd = 0x%08x\n", seg->name, seg->sbssStart + seg->sbssSize + seg->bssSize);
                }
                fprintf(f, ".globl _%sSegmentEnd; ", seg->name);
                fprintf(f, "_%sSegmentEnd = 0x%08x\n", seg->name, seg->bssStart + seg->bssSize);
            }
      
        } 
    
    fclose(f);
    
    if ((cmd = malloc(sysconf(1))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }
    
    strcpy(cmd, "$TOOLROOT/usr/bin/cc -c -non_shared -o ");
    strcat(cmd, object);
    strcat(cmd, " ");
    strcat(cmd, source);
    if (debug != 0) {
        printf("  %s\n", cmd);
    }
    return execCommand(cmd);
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
        sectName = elf_strptr(elf, (size_t) ehdr->e_shstrndx, shdr->sh_name);
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
    if (func_0040F214() != 0) { //openAuots
        return -1;
    }
    for (seg = segmentList; seg != NULL; seg = seg->next) {
        if (seg->flags & 2) {
            func_0040F758(seg);
        } else if (seg->flags & 4) {
            func_0040FDE0(seg);
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

    end = offset + (0, romSize) + 0x1000; //end = offset + romSize + 0x1000;
    finalromSize <<= 0x11;
    if ((finalromSize != 0) && (finalromSize > end)) {
        if ((fillbuffer = malloc(0x2000)) == NULL) {
            fprintf(stderr, "malloc failed\n");
            return -1;
        }

        for (i = 0; i < 0x2000; i++) {
            fillbuffer[i] = fillData;
        }
        while ((end < finalromSize )) {
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

int openAuots() {
    
    Wave* wave;
    s32 stackPad;
    unsigned char gcordFileBuf[252];
   

   for (wave = waveList ; wave != NULL; wave = wave->next) {
        if (gcord != 0) {
            strcat(strcpy(gcordFileBuf, wave->name), ".cord");
        } else {
            strcpy(gcordFileBuf, wave->name);
        }
        
        if ((wave->fd =  open(wave->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", wave->name, sys_errlist[errno]);
            return -1;
        }

            wave->elf = elf_begin(wave->fd, 1, 0);
        if ((elf_kind(wave->elf) != ELF_T_EHDR) || ((wave->ehdr = elf32_getehdr(wave->elf)) == NULL)) {
            fprintf(stderr, "makerom: %s: not a valid ELF object file\n", wave->name);
            
            return -1;
        
        }
          
    }

    return 0;
}

s32 lookupSymbol(Wave* wave, s8* name) {
    s32 scn;
    Elf32_Shdr* shdr;
    Elf_Data* data;
    Elf32_Sym* sym;
    u32 index;
    s32 i;
    s32 count;



    for (index = 1; index < wave->ehdr->e_shnum; index++) {

        
        if (((scn = _elf_getscn(wave->elf, index)) == 0) || (shdr = elf32_getshdr(scn), (shdr == NULL))) {
            return 0;
        }
        if (shdr->sh_type != 2) {
              continue;
        }

    
        data = NULL;
       
        if ((data = elf_getdata(scn, data))== NULL) {
            return 0;
        }
        
        
        count =  data->d_size >> 4;
        sym = data->d_buf;
        sym ++;
        
        
        for (i = 1; i < count; i++) {
            if (strcmp(name, elf_strptr(wave->elf, shdr->sh_link, sym->st_name)) == 0) {
                return sym->st_value;
            }
            sym++;
        }

 
       

    }

    return 0;
}

Elf32_Shdr* lookupShdr(Wave* wave, unsigned char* segSectName) {
    Elf_Scn* scn;
    Elf32_Shdr* shdr;
    size_t index;
    unsigned char* sectName;

  for(index = 1 ; index < wave->ehdr->e_shnum; index++) {
        if (((scn = elf_getscn(wave->elf, index)) == NULL) || (shdr = elf32_getshdr(scn), (shdr == NULL))) {
            fprintf(stderr, "makerom: %s: can't get section index %d\n", wave->name, index);
            return NULL;
        }
        sectName = elf_strptr(wave->elf, wave->ehdr->e_shstrndx, shdr->sh_name);
        if (strcmp(sectName, segSectName) == 0) {
            break;
        }

    }
      if (index >= wave->ehdr->e_shnum) {
        fprintf(stderr, "makerom: %s: cannot find %s section\n", wave->name, segSectName);
        return NULL;
    }
    return shdr;
}
 

int readObject(Segment* seg) {
    unsigned char* segSectName;
    Elf32_Shdr* shdr;

  
    if ((segSectName = malloc(strlen((s8* ) seg->name) + 9)) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }
    sprintf(segSectName, ".%s.text", seg->name);
    
    if ((shdr = lookupShdr(seg->w, segSectName)) == NULL) {
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
    
    if ((shdr = lookupShdr(seg->w, segSectName)) == NULL) {
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
    
    if ((shdr = lookupShdr(seg->w, segSectName)) == NULL) {
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

int createEntryFile(char* entryFilename, char* outFile) {
    Segment* curSeg;
    FILE* entryFile; // 50
    char* compile_cmd; // 4C
    char* segSectName;
    unsigned int BssStart;
    Wave* wave;
    unsigned int entryAddr = 0; // bootEntry
    unsigned int stackAddr = 0; // bootStack
    char romsymbol[14] = "__osFinalrom"; // string is only 13 chars

    if ((entryFile = fopen(entryFilename, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", entryFilename);
        return -1;
    }

    for (curSeg = segmentList; curSeg != NULL; curSeg = curSeg->next) {
        if (curSeg->flags & 1) { // BOOT flag?
            wave = curSeg->w;
            if ((wave->fd = open(wave->name, 0)) == -1) {
                fprintf(stderr, "makerom: %s: %s\n", wave->name, sys_errlist[errno]);
                return -1;
            }
            wave->elf = elf_begin(wave->fd, ELF_C_READ, NULL);
            if ((elf_kind(wave->elf) != 3) || ((wave->ehdr = elf32_getehdr(wave->elf)) == 0)) {
                fprintf(stderr, "makerom: %s: not a valid ELF object file\n", wave->name);
                return -1;
            }
            if ((finalromSize != 0) && (lookupSymbol(curSeg->w, romsymbol) == 0)) {
                fprintf(stderr, "makerom: use libultra_rom.a to build real game cassette\n");
                return -1;
            }
            if (bootEntryName != NULL) {
                entryAddr = lookupSymbol(curSeg->w, bootEntryName);
                if (entryAddr == 0) {
                    fprintf(stderr, "makerom: %s: cannot find entry symbol %s\n", curSeg->w->name, bootEntryName);
                    return -1;
                }
            }
            if (bootStackName != NULL) {
                if ((stackAddr = lookupSymbol(curSeg->w, bootStackName)) == 0) {
                    fprintf(stderr, "makerom: %s: cannot find stack symbol %s\n", curSeg->w->name, bootStackName);
                    return -1;
                }
            } else {
                stackAddr = 0;
            }

            stackAddr += bootStackOffset;
            if ((curSeg->bssSize != 0) && (cosim == 0)) {
                if ((segSectName = malloc(strlen(curSeg->name) + 0x10)) == NULL) {
                    fprintf(stderr, "malloc failed\n");
                    return -1;
                }
                sprintf(segSectName, "_%sSegmentBssStart", curSeg->name);
                BssStart = lookupSymbol(curSeg->w, segSectName);
                fprintf(entryFile, " la\t$8 0x%x\n", BssStart);
                fprintf(entryFile, " li\t$9 0x%x\n", curSeg->bssSize);
                fprintf(entryFile, ".ent entryPoint\n");
                fprintf(entryFile, "entryPoint:\n");
                fprintf(entryFile, " sw $0, 0($8)\n");
                fprintf(entryFile, " sw $0, 4($8)\n");
                fprintf(entryFile, " addi $8, 8\n");
                fprintf(entryFile, " addi $9, 0xfff8\n");
                fprintf(entryFile, " bne  $9, $0, entryPoint\n");
            }
            if (stackAddr != 0) {
                fprintf(entryFile, " la\t$29 0x%x\n", stackAddr);
            }
            if (entryAddr != 0) {
                fprintf(entryFile, " la $10  0x%x\n", entryAddr);
                fprintf(entryFile, " j $10\n");
            }
            fprintf(entryFile, ".end\n");
        }
    }

    free(segSectName);
    fclose(entryFile);
    if ((compile_cmd = malloc(sysconf(1))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }

    strcpy(compile_cmd, "$TOOLROOT/usr/bin/cc -c -non_shared -o ");
    strcat(compile_cmd, outFile);
    strcat(compile_cmd, " ");
    strcat(compile_cmd, entryFilename);

    if (debug) {
        printf("Compiling entry source file\n");
        printf("  %s\n", compile_cmd);
    }
    return execCommand(compile_cmd);
}
                                        /* offset*/
unsigned int ALIGNn(unsigned int romalign, int n) { 
    if (romalign == 0) {
        romalign = 0x10; //0x10 Alignment
    }
    return ((n + romalign - 1) / romalign) * romalign;
}

