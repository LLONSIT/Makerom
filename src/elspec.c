

s32 runLinker(arg0Struct* arg0, const char* arg1, const char* arg2) {
    char* sp34;
    sp30Struct* sp30;
    sp2CStruct* sp2C;
    StringLinkedList* sp28;
    FILE* sp24;

    if ((sp34 = malloc(sysconf(1))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }
    strcpy(sp34, "$ROOT/usr/lib/PR/nld -32 -g -non_shared -G 0 -elspec ");
    
    strcat(sp34, arg0->unk14);
    strcat(sp34, " -rom ");
    if (loadMap) {
        strcat(sp34, " -m ");
    }
    strcat(sp34, " -o ");
    strcat(sp34, arg0->unk4);
    strcat(sp34, " ");
    strcat(sp34, arg1);
    strcat(sp34, " -objectlist ");
    strcat(sp34, arg2);
    sp24 = fopen(arg2, "w");

    for (sp30 = arg0->unk8; sp30 != NULL; sp30 = sp30->next) {
        sp2C = sp30->unk4;
        if (!(sp2C->unk28 & 2)) {
            continue;
        }
        for (sp28 = sp2C->unk8; sp28 != NULL; sp28 = sp28->next) {
            fprintf(sp24, "%s\n", sp28->name);
        }
    }
    fclose(sp24);
    if (debug) {
        printf("Linking to ELF wave file\n");
        printf("  %s\n", sp34);
    }
    return execCommand(sp34);
}




//Creating a ld script, not compatible with GCC
int createElspec(UnkStruct* arg0) {
    FILE* sp2C;
    sp28UnkStruct* sp28;
    Section* sp24;
    sp20UnkStruct* sp20;

    if ((sp2C = fopen(arg0->unk14, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", arg0->unk14);
        return -1;
    }
    fprintf(sp2C, "$ignoreoverlaps = true\n\n");
    for (sp28 = arg0->unk8; sp28 != NULL; sp28 = sp28->unk0) {
        sp24 = sp28->unk4;

        if (!(sp24->unk28 & 2)) {
            continue;
        }

        fprintf(sp2C, "beginseg\n");
        fprintf(sp2C, "\tsegtype LOAD\n");
        fprintf(sp2C, "\tsegflags R X\n");
        fprintf(sp2C, "\tvaddr 0x%x\n", sp24->unk10);
        fprintf(sp2C, "\tcontents\n");
        fprintf(sp2C, "\tbeginscn .%s.text\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk4C != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk4C);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC EXECINSTR\n");

        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .text in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.data\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk50 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk50);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC WRITE\n");

        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .data in object %s\n", sp20->unk4);
            fprintf(sp2C, "\t\tsection .rodata in object %s\n", sp20->unk4);
        }
        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.sdata\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype PROGBITS\n");
        if (sp24->unk54 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk54);
        }
        fprintf(sp2C, "\t\tscnflags GPREL ALLOC WRITE\n");
        
        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .sdata in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.sbss\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype NOBITS\n");
        if (sp24->unk58 != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk58);
        }
        fprintf(sp2C, "\t\tscnflags GPREL ALLOC WRITE\n");

        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .sbss in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "\tbeginscn .%s.bss\n", sp24->obj);
        fprintf(sp2C, "\t\tscntype NOBITS\n");
        if (sp24->unk5C != 0) {
            fprintf(sp2C, "\t\tscnalign %d\n", sp24->unk5C);
        }
        fprintf(sp2C, "\t\tscnflags ALLOC WRITE\n");

        for (sp20 = sp24->section; sp20 != NULL; sp20 = sp20->unk0) {
            fprintf(sp2C, "\t\tsection .bss in object %s\n", sp20->unk4);
        }

        fprintf(sp2C, "\tendscn\n");
        fprintf(sp2C, "endseg\n");
    }

    fprintf(sp2C, "beginseg\n");
    fprintf(sp2C, "\tsegtype noload\n");
    fprintf(sp2C, "\tcontents\n");
    fprintf(sp2C, "\tdefault\n");
    fprintf(sp2C, "\tbeginscn .MIPS.options\n");
    fprintf(sp2C, "\t\tscntype 0x7000000d\n");
    fprintf(sp2C, "\t\tsection .MIPS.options in ldobj\n");
    fprintf(sp2C, "\tendscn\n");
    fprintf(sp2C, "\tbeginscn .reginfo\n");
    fprintf(sp2C, "\t\tscntype 0x70000006\n");
    fprintf(sp2C, "\t\tsection .reginfo in ldobj\n");
    fprintf(sp2C, "\tendscn\n");
    fprintf(sp2C, "endseg\n");

    fclose(sp2C);

    return 0;
}
