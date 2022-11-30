.section .rodata
glabel STR_1000FFD4
/* 03FFD4 1000FFD4 */ .asciz "Segment %s: alignment %x\n"
                      .balign 4

glabel STR_1000FFF0
/* 03FFF0 1000FFF0 */ .asciz "Segment %s: romalign %x\n"
                      .balign 4

glabel STR_1001000C
/* 04000C 1001000C */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10010020
/* 040020 10010020 */ .asciz "Scanning %s\n"
                      .balign 4

glabel STR_10010030
/* 040030 10010030 */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_1001005C
/* 04005C 1001005C */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_10010088
/* 040088 10010088 */ .asciz ".text"
                      .balign 4

glabel STR_10010090
/* 040090 10010090 */ .asciz "  text size  = %x\n"
                      .balign 4

glabel STR_100100A4
/* 0400A4 100100A4 */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_100100B8
/* 0400B8 100100B8 */ .asciz ".data"
                      .balign 4

glabel STR_100100C0
/* 0400C0 100100C0 */ .asciz ".rodata"
                      .balign 4

glabel STR_100100C8
/* 0400C8 100100C8 */ .asciz "  data&rodata size  = %x\n"
                      .balign 4

glabel STR_100100E4
/* 0400E4 100100E4 */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_100100F8
/* 0400F8 100100F8 */ .asciz ".sdata"
                      .balign 4

glabel STR_10010100
/* 040100 10010100 */ .asciz "  sdata size  = %x\n"
                      .balign 4

glabel STR_10010114
/* 040114 10010114 */ .asciz "        align = %x\n"
                      .balign 4

glabel STR_10010128
/* 040128 10010128 */ .asciz ".sbss"
                      .balign 4

glabel STR_10010130
/* 040130 10010130 */ .asciz "  sbss size  = %x\n"
                      .balign 4

glabel STR_10010144
/* 040144 10010144 */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_10010158
/* 040158 10010158 */ .asciz ".bss"
                      .balign 4

glabel STR_10010160
/* 040160 10010160 */ .asciz "  bss size  = %x\n"
                      .balign 4

glabel STR_10010174
/* 040174 10010174 */ .asciz "      align = %x\n"
                      .balign 4

.section .late_rodata
glabel jtbl_10010E44
/* 040E44 10010E44 F03EF75C */ .gpword .L0040D49C
/* 040E48 10010E48 F03EF6A4 */ .gpword .L0040D3E4
/* 040E4C 10010E4C F03EF700 */ .gpword .L0040D440
/* 040E50 10010E50 F03EF784 */ .gpword .L0040D4C4
/* 040E54 10010E54 F03EF798 */ .gpword .L0040D4D8


.section .text
glabel func_0040CBA4 # 20
# _gp_disp: 0xFC1119C
.set noreorder; .cpload $t9; # .set reorder
/* 00CBB0 0040CBB0 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 00CBB4 0040CBB4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00CBB8 0040CBB8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00CBBC 0040CBBC AFA40050 */  sw          $a0, 0x50($sp)
/* 00CBC0 0040CBC0 240E0001 */  addiu       $t6, $zero, 0x1
/* 00CBC4 0040CBC4 AFAE0020 */  sw          $t6, 0x20($sp)
/* 00CBC8 0040CBC8 8FB80050 */  lw          $t8, 0x50($sp)
/* 00CBCC 0040CBCC 240F0010 */  addiu       $t7, $zero, 0x10
/* 00CBD0 0040CBD0 AF0F004C */  sw          $t7, 0x4C($t8)
/* 00CBD4 0040CBD4 8F99865C */  lw          $t9, %got(debug)($gp)
/* 00CBD8 0040CBD8 8F390000 */  lw          $t9, 0x0($t9)
/* 00CBDC 0040CBDC 1320001F */  beqz        $t9, .L0040CC5C
/* 00CBE0 0040CBE0 00000000 */   nop
/* 00CBE4 0040CBE4 8FA80050 */  lw          $t0, 0x50($sp)
/* 00CBE8 0040CBE8 24010010 */  addiu       $at, $zero, 0x10
/* 00CBEC 0040CBEC 8D090020 */  lw          $t1, 0x20($t0)
/* 00CBF0 0040CBF0 1121000B */  beq         $t1, $at, .L0040CC20
/* 00CBF4 0040CBF4 00000000 */   nop
/* 00CBF8 0040CBF8 11200009 */  beqz        $t1, .L0040CC20
/* 00CBFC 0040CBFC 00000000 */   nop
/* 00CC00 0040CC00 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00CC04 0040CC04 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00CC08 0040CC08 8F84802C */  lw          $a0, %got(STR_1000FFD4)($gp)
/* 00CC0C 0040CC0C 8D450004 */  lw          $a1, 0x4($t2)
/* 00CC10 0040CC10 8D460020 */  lw          $a2, 0x20($t2)
/* 00CC14 0040CC14 0320F809 */  jalr        $t9
/* 00CC18 0040CC18 2484FFD4 */   addiu      $a0, $a0, %lo(STR_1000FFD4)
/* 00CC1C 0040CC1C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040CC20:
/* 00CC20 0040CC20 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00CC24 0040CC24 24010010 */  addiu       $at, $zero, 0x10
/* 00CC28 0040CC28 8D6C0048 */  lw          $t4, 0x48($t3)
/* 00CC2C 0040CC2C 1181000B */  beq         $t4, $at, .L0040CC5C
/* 00CC30 0040CC30 00000000 */   nop
/* 00CC34 0040CC34 11800009 */  beqz        $t4, .L0040CC5C
/* 00CC38 0040CC38 00000000 */   nop
/* 00CC3C 0040CC3C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00CC40 0040CC40 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00CC44 0040CC44 8F84802C */  lw          $a0, %got(STR_1000FFF0)($gp)
/* 00CC48 0040CC48 8DA50004 */  lw          $a1, 0x4($t5)
/* 00CC4C 0040CC4C 8DA60048 */  lw          $a2, 0x48($t5)
/* 00CC50 0040CC50 0320F809 */  jalr        $t9
/* 00CC54 0040CC54 2484FFF0 */   addiu      $a0, $a0, %lo(STR_1000FFF0)
/* 00CC58 0040CC58 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040CC5C:
/* 00CC5C 0040CC5C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00CC60 0040CC60 8DCF0008 */  lw          $t7, 0x8($t6)
/* 00CC64 0040CC64 11E001D2 */  beqz        $t7, .L0040D3B0
/* 00CC68 0040CC68 AFAF0030 */   sw         $t7, 0x30($sp)
.L0040CC6C:
/* 00CC6C 0040CC6C 8FB80030 */  lw          $t8, 0x30($sp)
/* 00CC70 0040CC70 AF000008 */  sw          $zero, 0x8($t8)
/* 00CC74 0040CC74 8FB90030 */  lw          $t9, 0x30($sp)
/* 00CC78 0040CC78 AF20000C */  sw          $zero, 0xC($t9)
/* 00CC7C 0040CC7C 8FA80030 */  lw          $t0, 0x30($sp)
/* 00CC80 0040CC80 AD000010 */  sw          $zero, 0x10($t0)
/* 00CC84 0040CC84 8FA90030 */  lw          $t1, 0x30($sp)
/* 00CC88 0040CC88 AD200014 */  sw          $zero, 0x14($t1)
/* 00CC8C 0040CC8C 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00CC90 0040CC90 AD400018 */  sw          $zero, 0x18($t2)
/* 00CC94 0040CC94 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00CC98 0040CC98 AD60001C */  sw          $zero, 0x1C($t3)
/* 00CC9C 0040CC9C 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00CCA0 0040CCA0 AD800020 */  sw          $zero, 0x20($t4)
/* 00CCA4 0040CCA4 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00CCA8 0040CCA8 ADA00024 */  sw          $zero, 0x24($t5)
/* 00CCAC 0040CCAC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00CCB0 0040CCB0 ADC00028 */  sw          $zero, 0x28($t6)
/* 00CCB4 0040CCB4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00CCB8 0040CCB8 ADE0002C */  sw          $zero, 0x2C($t7)
/* 00CCBC 0040CCBC 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 00CCC0 0040CCC0 8FB80030 */  lw          $t8, 0x30($sp)
/* 00CCC4 0040CCC4 00002825 */  move        $a1, $zero
/* 00CCC8 0040CCC8 0320F809 */  jalr        $t9
/* 00CCCC 0040CCCC 8F040004 */   lw         $a0, 0x4($t8)
/* 00CCD0 0040CCD0 AFA20044 */  sw          $v0, 0x44($sp)
/* 00CCD4 0040CCD4 8FB90044 */  lw          $t9, 0x44($sp)
/* 00CCD8 0040CCD8 2401FFFF */  addiu       $at, $zero, -0x1
/* 00CCDC 0040CCDC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CCE0 0040CCE0 17210012 */  bne         $t9, $at, .L0040CD2C
/* 00CCE4 0040CCE4 00000000 */   nop
/* 00CCE8 0040CCE8 8F89804C */  lw          $t1, %got(errno)($gp)
/* 00CCEC 0040CCEC 8F8B8050 */  lw          $t3, %got(sys_errlist)($gp)
/* 00CCF0 0040CCF0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00CCF4 0040CCF4 8D290000 */  lw          $t1, 0x0($t1)
/* 00CCF8 0040CCF8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00CCFC 0040CCFC 8F85802C */  lw          $a1, %got(STR_1001000C)($gp)
/* 00CD00 0040CD00 8FA80030 */  lw          $t0, 0x30($sp)
/* 00CD04 0040CD04 00095080 */  sll         $t2, $t1, 2
/* 00CD08 0040CD08 014B6021 */  addu        $t4, $t2, $t3
/* 00CD0C 0040CD0C 8D870000 */  lw          $a3, 0x0($t4)
/* 00CD10 0040CD10 24840020 */  addiu       $a0, $a0, 0x20
/* 00CD14 0040CD14 24A5000C */  addiu       $a1, $a1, %lo(STR_1001000C)
/* 00CD18 0040CD18 0320F809 */  jalr        $t9
/* 00CD1C 0040CD1C 8D060004 */   lw         $a2, 0x4($t0)
/* 00CD20 0040CD20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CD24 0040CD24 1000034C */  b           .L0040DA58
/* 00CD28 0040CD28 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CD2C:
/* 00CD2C 0040CD2C 8F8D865C */  lw          $t5, %got(debug)($gp)
/* 00CD30 0040CD30 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00CD34 0040CD34 11A00008 */  beqz        $t5, .L0040CD58
/* 00CD38 0040CD38 00000000 */   nop
/* 00CD3C 0040CD3C 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00CD40 0040CD40 8F84802C */  lw          $a0, %got(STR_10010020)($gp)
/* 00CD44 0040CD44 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00CD48 0040CD48 24840020 */  addiu       $a0, $a0, %lo(STR_10010020)
/* 00CD4C 0040CD4C 0320F809 */  jalr        $t9
/* 00CD50 0040CD50 8DC50004 */   lw         $a1, 0x4($t6)
/* 00CD54 0040CD54 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040CD58:
/* 00CD58 0040CD58 8F9981E8 */  lw          $t9, %call16(elf_begin)($gp)
/* 00CD5C 0040CD5C 8FA40044 */  lw          $a0, 0x44($sp)
/* 00CD60 0040CD60 24050001 */  addiu       $a1, $zero, 0x1
/* 00CD64 0040CD64 0320F809 */  jalr        $t9
/* 00CD68 0040CD68 00003025 */   move       $a2, $zero
/* 00CD6C 0040CD6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CD70 0040CD70 AFA20040 */  sw          $v0, 0x40($sp)
/* 00CD74 0040CD74 8F998210 */  lw          $t9, %call16(elf_kind)($gp)
/* 00CD78 0040CD78 8FA40040 */  lw          $a0, 0x40($sp)
/* 00CD7C 0040CD7C 0320F809 */  jalr        $t9
/* 00CD80 0040CD80 00000000 */   nop
/* 00CD84 0040CD84 24010003 */  addiu       $at, $zero, 0x3
/* 00CD88 0040CD88 1441000A */  bne         $v0, $at, .L0040CDB4
/* 00CD8C 0040CD8C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CD90 0040CD90 8F998200 */  lw          $t9, %call16(elf32_getehdr)($gp)
/* 00CD94 0040CD94 8FA40040 */  lw          $a0, 0x40($sp)
/* 00CD98 0040CD98 0320F809 */  jalr        $t9
/* 00CD9C 0040CD9C 00000000 */   nop
/* 00CDA0 0040CDA0 AFA20038 */  sw          $v0, 0x38($sp)
/* 00CDA4 0040CDA4 8FAF0038 */  lw          $t7, 0x38($sp)
/* 00CDA8 0040CDA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CDAC 0040CDAC 15E0000C */  bnez        $t7, .L0040CDE0
/* 00CDB0 0040CDB0 00000000 */   nop
.L0040CDB4:
/* 00CDB4 0040CDB4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00CDB8 0040CDB8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00CDBC 0040CDBC 8F85802C */  lw          $a1, %got(STR_10010030)($gp)
/* 00CDC0 0040CDC0 8FB80030 */  lw          $t8, 0x30($sp)
/* 00CDC4 0040CDC4 24840020 */  addiu       $a0, $a0, 0x20
/* 00CDC8 0040CDC8 24A50030 */  addiu       $a1, $a1, %lo(STR_10010030)
/* 00CDCC 0040CDCC 0320F809 */  jalr        $t9
/* 00CDD0 0040CDD0 8F060004 */   lw         $a2, 0x4($t8)
/* 00CDD4 0040CDD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CDD8 0040CDD8 1000031F */  b           .L0040DA58
/* 00CDDC 0040CDDC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CDE0:
/* 00CDE0 0040CDE0 8FA80038 */  lw          $t0, 0x38($sp)
/* 00CDE4 0040CDE4 24190001 */  addiu       $t9, $zero, 0x1
/* 00CDE8 0040CDE8 AFB9002C */  sw          $t9, 0x2C($sp)
/* 00CDEC 0040CDEC 95090030 */  lhu         $t1, 0x30($t0)
/* 00CDF0 0040CDF0 2D210002 */  sltiu       $at, $t1, 0x2
/* 00CDF4 0040CDF4 14200165 */  bnez        $at, .L0040D38C
/* 00CDF8 0040CDF8 00000000 */   nop
.L0040CDFC:
/* 00CDFC 0040CDFC 8F998220 */  lw          $t9, %call16(_elf_getscn)($gp)
/* 00CE00 0040CE00 8FA40040 */  lw          $a0, 0x40($sp)
/* 00CE04 0040CE04 8FA5002C */  lw          $a1, 0x2C($sp)
/* 00CE08 0040CE08 0320F809 */  jalr        $t9
/* 00CE0C 0040CE0C 00000000 */   nop
/* 00CE10 0040CE10 AFA2003C */  sw          $v0, 0x3C($sp)
/* 00CE14 0040CE14 8FAA003C */  lw          $t2, 0x3C($sp)
/* 00CE18 0040CE18 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CE1C 0040CE1C 1140000A */  beqz        $t2, .L0040CE48
/* 00CE20 0040CE20 00000000 */   nop
/* 00CE24 0040CE24 8F99820C */  lw          $t9, %call16(elf32_getshdr)($gp)
/* 00CE28 0040CE28 01402025 */  move        $a0, $t2
/* 00CE2C 0040CE2C 0320F809 */  jalr        $t9
/* 00CE30 0040CE30 00000000 */   nop
/* 00CE34 0040CE34 AFA20034 */  sw          $v0, 0x34($sp)
/* 00CE38 0040CE38 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00CE3C 0040CE3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CE40 0040CE40 1560000D */  bnez        $t3, .L0040CE78
/* 00CE44 0040CE44 00000000 */   nop
.L0040CE48:
/* 00CE48 0040CE48 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00CE4C 0040CE4C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00CE50 0040CE50 8F85802C */  lw          $a1, %got(STR_1001005C)($gp)
/* 00CE54 0040CE54 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00CE58 0040CE58 8FA7002C */  lw          $a3, 0x2C($sp)
/* 00CE5C 0040CE5C 24840020 */  addiu       $a0, $a0, 0x20
/* 00CE60 0040CE60 24A5005C */  addiu       $a1, $a1, %lo(STR_1001005C)
/* 00CE64 0040CE64 0320F809 */  jalr        $t9
/* 00CE68 0040CE68 8D860004 */   lw         $a2, 0x4($t4)
/* 00CE6C 0040CE6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CE70 0040CE70 100002F9 */  b           .L0040DA58
/* 00CE74 0040CE74 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CE78:
/* 00CE78 0040CE78 8F9981E4 */  lw          $t9, %call16(elf_strptr)($gp)
/* 00CE7C 0040CE7C 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00CE80 0040CE80 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00CE84 0040CE84 8FA40040 */  lw          $a0, 0x40($sp)
/* 00CE88 0040CE88 95A50032 */  lhu         $a1, 0x32($t5)
/* 00CE8C 0040CE8C 0320F809 */  jalr        $t9
/* 00CE90 0040CE90 8DC60000 */   lw         $a2, 0x0($t6)
/* 00CE94 0040CE94 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CE98 0040CE98 AFA20028 */  sw          $v0, 0x28($sp)
/* 00CE9C 0040CE9C 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00CEA0 0040CEA0 8F85802C */  lw          $a1, %got(STR_10010088)($gp)
/* 00CEA4 0040CEA4 8FA40028 */  lw          $a0, 0x28($sp)
/* 00CEA8 0040CEA8 0320F809 */  jalr        $t9
/* 00CEAC 0040CEAC 24A50088 */   addiu      $a1, $a1, %lo(STR_10010088)
/* 00CEB0 0040CEB0 14400036 */  bnez        $v0, .L0040CF8C
/* 00CEB4 0040CEB4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CEB8 0040CEB8 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00CEBC 0040CEBC 8FB90034 */  lw          $t9, 0x34($sp)
/* 00CEC0 0040CEC0 8DF8002C */  lw          $t8, 0x2C($t7)
/* 00CEC4 0040CEC4 8F280014 */  lw          $t0, 0x14($t9)
/* 00CEC8 0040CEC8 03084821 */  addu        $t1, $t8, $t0
/* 00CECC 0040CECC ADE9002C */  sw          $t1, 0x2C($t7)
/* 00CED0 0040CED0 8FAA0034 */  lw          $t2, 0x34($sp)
/* 00CED4 0040CED4 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00CED8 0040CED8 8D4B0020 */  lw          $t3, 0x20($t2)
/* 00CEDC 0040CEDC AD8B001C */  sw          $t3, 0x1C($t4)
/* 00CEE0 0040CEE0 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00CEE4 0040CEE4 8FB90030 */  lw          $t9, 0x30($sp)
/* 00CEE8 0040CEE8 8DAE0014 */  lw          $t6, 0x14($t5)
/* 00CEEC 0040CEEC AF2E0008 */  sw          $t6, 0x8($t9)
/* 00CEF0 0040CEF0 8FB80030 */  lw          $t8, 0x30($sp)
/* 00CEF4 0040CEF4 8F080044 */  lw          $t0, 0x44($t8)
/* 00CEF8 0040CEF8 35090001 */  ori         $t1, $t0, 0x1
/* 00CEFC 0040CEFC AF090044 */  sw          $t1, 0x44($t8)
/* 00CF00 0040CF00 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00CF04 0040CF04 8DEA0060 */  lw          $t2, 0x60($t7)
/* 00CF08 0040CF08 354B0001 */  ori         $t3, $t2, 0x1
/* 00CF0C 0040CF0C ADEB0060 */  sw          $t3, 0x60($t7)
/* 00CF10 0040CF10 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00CF14 0040CF14 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00CF18 0040CF18 8D8D001C */  lw          $t5, 0x1C($t4)
/* 00CF1C 0040CF1C 8DD9004C */  lw          $t9, 0x4C($t6)
/* 00CF20 0040CF20 032D082B */  sltu        $at, $t9, $t5
/* 00CF24 0040CF24 10200005 */  beqz        $at, .L0040CF3C
/* 00CF28 0040CF28 00000000 */   nop
/* 00CF2C 0040CF2C 8FA80030 */  lw          $t0, 0x30($sp)
/* 00CF30 0040CF30 8FB80050 */  lw          $t8, 0x50($sp)
/* 00CF34 0040CF34 8D09001C */  lw          $t1, 0x1C($t0)
/* 00CF38 0040CF38 AF09004C */  sw          $t1, 0x4C($t8)
.L0040CF3C:
/* 00CF3C 0040CF3C 8F8A865C */  lw          $t2, %got(debug)($gp)
/* 00CF40 0040CF40 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00CF44 0040CF44 1140000F */  beqz        $t2, .L0040CF84
/* 00CF48 0040CF48 00000000 */   nop
/* 00CF4C 0040CF4C 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00CF50 0040CF50 8F84802C */  lw          $a0, %got(STR_10010090)($gp)
/* 00CF54 0040CF54 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00CF58 0040CF58 24840090 */  addiu       $a0, $a0, %lo(STR_10010090)
/* 00CF5C 0040CF5C 0320F809 */  jalr        $t9
/* 00CF60 0040CF60 8D650014 */   lw         $a1, 0x14($t3)
/* 00CF64 0040CF64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CF68 0040CF68 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00CF6C 0040CF6C 8F84802C */  lw          $a0, %got(STR_100100A4)($gp)
/* 00CF70 0040CF70 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00CF74 0040CF74 248400A4 */  addiu       $a0, $a0, %lo(STR_100100A4)
/* 00CF78 0040CF78 0320F809 */  jalr        $t9
/* 00CF7C 0040CF7C 8DE50020 */   lw         $a1, 0x20($t7)
/* 00CF80 0040CF80 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040CF84:
/* 00CF84 0040CF84 100000F9 */  b           .L0040D36C
/* 00CF88 0040CF88 00000000 */   nop
.L0040CF8C:
/* 00CF8C 0040CF8C 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00CF90 0040CF90 8F85802C */  lw          $a1, %got(STR_100100B8)($gp)
/* 00CF94 0040CF94 8FA40028 */  lw          $a0, 0x28($sp)
/* 00CF98 0040CF98 0320F809 */  jalr        $t9
/* 00CF9C 0040CF9C 24A500B8 */   addiu      $a1, $a1, %lo(STR_100100B8)
/* 00CFA0 0040CFA0 10400008 */  beqz        $v0, .L0040CFC4
/* 00CFA4 0040CFA4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CFA8 0040CFA8 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00CFAC 0040CFAC 8F85802C */  lw          $a1, %got(STR_100100C0)($gp)
/* 00CFB0 0040CFB0 8FA40028 */  lw          $a0, 0x28($sp)
/* 00CFB4 0040CFB4 0320F809 */  jalr        $t9
/* 00CFB8 0040CFB8 24A500C0 */   addiu      $a1, $a1, %lo(STR_100100C0)
/* 00CFBC 0040CFBC 14400038 */  bnez        $v0, .L0040D0A0
/* 00CFC0 0040CFC0 8FBC0018 */   lw         $gp, 0x18($sp)
.L0040CFC4:
/* 00CFC4 0040CFC4 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00CFC8 0040CFC8 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00CFCC 0040CFCC 8D8E0030 */  lw          $t6, 0x30($t4)
/* 00CFD0 0040CFD0 8DB90014 */  lw          $t9, 0x14($t5)
/* 00CFD4 0040CFD4 01D94021 */  addu        $t0, $t6, $t9
/* 00CFD8 0040CFD8 AD880030 */  sw          $t0, 0x30($t4)
/* 00CFDC 0040CFDC 8FA90034 */  lw          $t1, 0x34($sp)
/* 00CFE0 0040CFE0 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00CFE4 0040CFE4 8D380020 */  lw          $t8, 0x20($t1)
/* 00CFE8 0040CFE8 AD580020 */  sw          $t8, 0x20($t2)
/* 00CFEC 0040CFEC 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00CFF0 0040CFF0 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00CFF4 0040CFF4 8D6F000C */  lw          $t7, 0xC($t3)
/* 00CFF8 0040CFF8 8DAE0014 */  lw          $t6, 0x14($t5)
/* 00CFFC 0040CFFC 01EEC821 */  addu        $t9, $t7, $t6
/* 00D000 0040D000 AD79000C */  sw          $t9, 0xC($t3)
/* 00D004 0040D004 8FA80030 */  lw          $t0, 0x30($sp)
/* 00D008 0040D008 8D0C0044 */  lw          $t4, 0x44($t0)
/* 00D00C 0040D00C 35890002 */  ori         $t1, $t4, 0x2
/* 00D010 0040D010 AD090044 */  sw          $t1, 0x44($t0)
/* 00D014 0040D014 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D018 0040D018 8F0A0060 */  lw          $t2, 0x60($t8)
/* 00D01C 0040D01C 354D0002 */  ori         $t5, $t2, 0x2
/* 00D020 0040D020 AF0D0060 */  sw          $t5, 0x60($t8)
/* 00D024 0040D024 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D028 0040D028 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D02C 0040D02C 8DEE0020 */  lw          $t6, 0x20($t7)
/* 00D030 0040D030 8F2B0050 */  lw          $t3, 0x50($t9)
/* 00D034 0040D034 016E082B */  sltu        $at, $t3, $t6
/* 00D038 0040D038 10200005 */  beqz        $at, .L0040D050
/* 00D03C 0040D03C 00000000 */   nop
/* 00D040 0040D040 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D044 0040D044 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D048 0040D048 8D890020 */  lw          $t1, 0x20($t4)
/* 00D04C 0040D04C AD090050 */  sw          $t1, 0x50($t0)
.L0040D050:
/* 00D050 0040D050 8F8A865C */  lw          $t2, %got(debug)($gp)
/* 00D054 0040D054 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00D058 0040D058 1140000F */  beqz        $t2, .L0040D098
/* 00D05C 0040D05C 00000000 */   nop
/* 00D060 0040D060 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00D064 0040D064 8F84802C */  lw          $a0, %got(STR_100100C8)($gp)
/* 00D068 0040D068 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00D06C 0040D06C 248400C8 */  addiu       $a0, $a0, %lo(STR_100100C8)
/* 00D070 0040D070 0320F809 */  jalr        $t9
/* 00D074 0040D074 8DA50014 */   lw         $a1, 0x14($t5)
/* 00D078 0040D078 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D07C 0040D07C 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00D080 0040D080 8F84802C */  lw          $a0, %got(STR_100100E4)($gp)
/* 00D084 0040D084 8FB80034 */  lw          $t8, 0x34($sp)
/* 00D088 0040D088 248400E4 */  addiu       $a0, $a0, %lo(STR_100100E4)
/* 00D08C 0040D08C 0320F809 */  jalr        $t9
/* 00D090 0040D090 8F050020 */   lw         $a1, 0x20($t8)
/* 00D094 0040D094 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040D098:
/* 00D098 0040D098 100000B4 */  b           .L0040D36C
/* 00D09C 0040D09C 00000000 */   nop
.L0040D0A0:
/* 00D0A0 0040D0A0 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00D0A4 0040D0A4 8F85802C */  lw          $a1, %got(STR_100100F8)($gp)
/* 00D0A8 0040D0A8 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D0AC 0040D0AC 0320F809 */  jalr        $t9
/* 00D0B0 0040D0B0 24A500F8 */   addiu      $a1, $a1, %lo(STR_100100F8)
/* 00D0B4 0040D0B4 14400036 */  bnez        $v0, .L0040D190
/* 00D0B8 0040D0B8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00D0BC 0040D0BC 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D0C0 0040D0C0 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00D0C4 0040D0C4 8DF90034 */  lw          $t9, 0x34($t7)
/* 00D0C8 0040D0C8 8DCB0014 */  lw          $t3, 0x14($t6)
/* 00D0CC 0040D0CC 032B6021 */  addu        $t4, $t9, $t3
/* 00D0D0 0040D0D0 ADEC0034 */  sw          $t4, 0x34($t7)
/* 00D0D4 0040D0D4 8FA90034 */  lw          $t1, 0x34($sp)
/* 00D0D8 0040D0D8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00D0DC 0040D0DC 8D280020 */  lw          $t0, 0x20($t1)
/* 00D0E0 0040D0E0 AD480024 */  sw          $t0, 0x24($t2)
/* 00D0E4 0040D0E4 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00D0E8 0040D0E8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D0EC 0040D0EC 8DB80014 */  lw          $t8, 0x14($t5)
/* 00D0F0 0040D0F0 ADD80010 */  sw          $t8, 0x10($t6)
/* 00D0F4 0040D0F4 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D0F8 0040D0F8 8F2B0060 */  lw          $t3, 0x60($t9)
/* 00D0FC 0040D0FC 356C0004 */  ori         $t4, $t3, 0x4
/* 00D100 0040D100 AF2C0060 */  sw          $t4, 0x60($t9)
/* 00D104 0040D104 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D108 0040D108 8DE90044 */  lw          $t1, 0x44($t7)
/* 00D10C 0040D10C 35280004 */  ori         $t0, $t1, 0x4
/* 00D110 0040D110 ADE80044 */  sw          $t0, 0x44($t7)
/* 00D114 0040D114 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00D118 0040D118 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D11C 0040D11C 8D4D0024 */  lw          $t5, 0x24($t2)
/* 00D120 0040D120 8F0E0054 */  lw          $t6, 0x54($t8)
/* 00D124 0040D124 01CD082B */  sltu        $at, $t6, $t5
/* 00D128 0040D128 10200005 */  beqz        $at, .L0040D140
/* 00D12C 0040D12C 00000000 */   nop
/* 00D130 0040D130 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00D134 0040D134 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D138 0040D138 8D6C0024 */  lw          $t4, 0x24($t3)
/* 00D13C 0040D13C AF2C0054 */  sw          $t4, 0x54($t9)
.L0040D140:
/* 00D140 0040D140 8F89865C */  lw          $t1, %got(debug)($gp)
/* 00D144 0040D144 8D290000 */  lw          $t1, 0x0($t1)
/* 00D148 0040D148 1120000F */  beqz        $t1, .L0040D188
/* 00D14C 0040D14C 00000000 */   nop
/* 00D150 0040D150 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00D154 0040D154 8F84802C */  lw          $a0, %got(STR_10010100)($gp)
/* 00D158 0040D158 8FA80034 */  lw          $t0, 0x34($sp)
/* 00D15C 0040D15C 24840100 */  addiu       $a0, $a0, %lo(STR_10010100)
/* 00D160 0040D160 0320F809 */  jalr        $t9
/* 00D164 0040D164 8D050014 */   lw         $a1, 0x14($t0)
/* 00D168 0040D168 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D16C 0040D16C 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00D170 0040D170 8F84802C */  lw          $a0, %got(STR_10010114)($gp)
/* 00D174 0040D174 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00D178 0040D178 24840114 */  addiu       $a0, $a0, %lo(STR_10010114)
/* 00D17C 0040D17C 0320F809 */  jalr        $t9
/* 00D180 0040D180 8DE50020 */   lw         $a1, 0x20($t7)
/* 00D184 0040D184 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040D188:
/* 00D188 0040D188 10000078 */  b           .L0040D36C
/* 00D18C 0040D18C 00000000 */   nop
.L0040D190:
/* 00D190 0040D190 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00D194 0040D194 8F85802C */  lw          $a1, %got(STR_10010128)($gp)
/* 00D198 0040D198 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D19C 0040D19C 0320F809 */  jalr        $t9
/* 00D1A0 0040D1A0 24A50128 */   addiu      $a1, $a1, %lo(STR_10010128)
/* 00D1A4 0040D1A4 14400037 */  bnez        $v0, .L0040D284
/* 00D1A8 0040D1A8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00D1AC 0040D1AC 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D1B0 0040D1B0 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00D1B4 0040D1B4 8D580038 */  lw          $t8, 0x38($t2)
/* 00D1B8 0040D1B8 8DAE0014 */  lw          $t6, 0x14($t5)
/* 00D1BC 0040D1BC 030E5821 */  addu        $t3, $t8, $t6
/* 00D1C0 0040D1C0 AD4B0038 */  sw          $t3, 0x38($t2)
/* 00D1C4 0040D1C4 8FAC0034 */  lw          $t4, 0x34($sp)
/* 00D1C8 0040D1C8 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D1CC 0040D1CC 8D990020 */  lw          $t9, 0x20($t4)
/* 00D1D0 0040D1D0 AD390028 */  sw          $t9, 0x28($t1)
/* 00D1D4 0040D1D4 8FA80034 */  lw          $t0, 0x34($sp)
/* 00D1D8 0040D1D8 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00D1DC 0040D1DC 8D0F0014 */  lw          $t7, 0x14($t0)
/* 00D1E0 0040D1E0 ADAF0014 */  sw          $t7, 0x14($t5)
/* 00D1E4 0040D1E4 8FB80030 */  lw          $t8, 0x30($sp)
/* 00D1E8 0040D1E8 8F0E0044 */  lw          $t6, 0x44($t8)
/* 00D1EC 0040D1EC 35CB0010 */  ori         $t3, $t6, 0x10
/* 00D1F0 0040D1F0 AF0B0044 */  sw          $t3, 0x44($t8)
/* 00D1F4 0040D1F4 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D1F8 0040D1F8 8D4C0060 */  lw          $t4, 0x60($t2)
/* 00D1FC 0040D1FC 35990010 */  ori         $t9, $t4, 0x10
/* 00D200 0040D200 AD590060 */  sw          $t9, 0x60($t2)
/* 00D204 0040D204 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D208 0040D208 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D20C 0040D20C 8D280028 */  lw          $t0, 0x28($t1)
/* 00D210 0040D210 8DED0058 */  lw          $t5, 0x58($t7)
/* 00D214 0040D214 01A8082B */  sltu        $at, $t5, $t0
/* 00D218 0040D218 10200005 */  beqz        $at, .L0040D230
/* 00D21C 0040D21C 00000000 */   nop
/* 00D220 0040D220 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D224 0040D224 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D228 0040D228 8DCB0028 */  lw          $t3, 0x28($t6)
/* 00D22C 0040D22C AF0B0058 */  sw          $t3, 0x58($t8)
.L0040D230:
/* 00D230 0040D230 8F8C865C */  lw          $t4, %got(debug)($gp)
/* 00D234 0040D234 8D8C0000 */  lw          $t4, 0x0($t4)
/* 00D238 0040D238 11800010 */  beqz        $t4, .L0040D27C
/* 00D23C 0040D23C 00000000 */   nop
/* 00D240 0040D240 8FB90034 */  lw          $t9, 0x34($sp)
/* 00D244 0040D244 8F84802C */  lw          $a0, %got(STR_10010130)($gp)
/* 00D248 0040D248 8F250014 */  lw          $a1, 0x14($t9)
/* 00D24C 0040D24C 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00D250 0040D250 24840130 */  addiu       $a0, $a0, %lo(STR_10010130)
/* 00D254 0040D254 0320F809 */  jalr        $t9
/* 00D258 0040D258 00000000 */   nop
/* 00D25C 0040D25C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D260 0040D260 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00D264 0040D264 8F84802C */  lw          $a0, %got(STR_10010144)($gp)
/* 00D268 0040D268 8FAA0034 */  lw          $t2, 0x34($sp)
/* 00D26C 0040D26C 24840144 */  addiu       $a0, $a0, %lo(STR_10010144)
/* 00D270 0040D270 0320F809 */  jalr        $t9
/* 00D274 0040D274 8D450020 */   lw         $a1, 0x20($t2)
/* 00D278 0040D278 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040D27C:
/* 00D27C 0040D27C 1000003B */  b           .L0040D36C
/* 00D280 0040D280 00000000 */   nop
.L0040D284:
/* 00D284 0040D284 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00D288 0040D288 8F85802C */  lw          $a1, %got(STR_10010158)($gp)
/* 00D28C 0040D28C 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D290 0040D290 0320F809 */  jalr        $t9
/* 00D294 0040D294 24A50158 */   addiu      $a1, $a1, %lo(STR_10010158)
/* 00D298 0040D298 14400034 */  bnez        $v0, .L0040D36C
/* 00D29C 0040D29C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00D2A0 0040D2A0 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D2A4 0040D2A4 8FA80034 */  lw          $t0, 0x34($sp)
/* 00D2A8 0040D2A8 8D2F003C */  lw          $t7, 0x3C($t1)
/* 00D2AC 0040D2AC 8D0D0014 */  lw          $t5, 0x14($t0)
/* 00D2B0 0040D2B0 01ED7021 */  addu        $t6, $t7, $t5
/* 00D2B4 0040D2B4 AD2E003C */  sw          $t6, 0x3C($t1)
/* 00D2B8 0040D2B8 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00D2BC 0040D2BC 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D2C0 0040D2C0 8D780020 */  lw          $t8, 0x20($t3)
/* 00D2C4 0040D2C4 AD98002C */  sw          $t8, 0x2C($t4)
/* 00D2C8 0040D2C8 8FB90034 */  lw          $t9, 0x34($sp)
/* 00D2CC 0040D2CC 8FA80030 */  lw          $t0, 0x30($sp)
/* 00D2D0 0040D2D0 8F2A0014 */  lw          $t2, 0x14($t9)
/* 00D2D4 0040D2D4 AD0A0018 */  sw          $t2, 0x18($t0)
/* 00D2D8 0040D2D8 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D2DC 0040D2DC 8DED0044 */  lw          $t5, 0x44($t7)
/* 00D2E0 0040D2E0 35AE0008 */  ori         $t6, $t5, 0x8
/* 00D2E4 0040D2E4 ADEE0044 */  sw          $t6, 0x44($t7)
/* 00D2E8 0040D2E8 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D2EC 0040D2EC 8D2B0060 */  lw          $t3, 0x60($t1)
/* 00D2F0 0040D2F0 35780008 */  ori         $t8, $t3, 0x8
/* 00D2F4 0040D2F4 AD380060 */  sw          $t8, 0x60($t1)
/* 00D2F8 0040D2F8 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D2FC 0040D2FC 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D300 0040D300 8D99002C */  lw          $t9, 0x2C($t4)
/* 00D304 0040D304 8D48005C */  lw          $t0, 0x5C($t2)
/* 00D308 0040D308 0119082B */  sltu        $at, $t0, $t9
/* 00D30C 0040D30C 10200005 */  beqz        $at, .L0040D324
/* 00D310 0040D310 00000000 */   nop
/* 00D314 0040D314 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00D318 0040D318 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D31C 0040D31C 8DAE002C */  lw          $t6, 0x2C($t5)
/* 00D320 0040D320 ADEE005C */  sw          $t6, 0x5C($t7)
.L0040D324:
/* 00D324 0040D324 8F8B865C */  lw          $t3, %got(debug)($gp)
/* 00D328 0040D328 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00D32C 0040D32C 1160000F */  beqz        $t3, .L0040D36C
/* 00D330 0040D330 00000000 */   nop
/* 00D334 0040D334 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00D338 0040D338 8F84802C */  lw          $a0, %got(STR_10010160)($gp)
/* 00D33C 0040D33C 8FB80034 */  lw          $t8, 0x34($sp)
/* 00D340 0040D340 24840160 */  addiu       $a0, $a0, %lo(STR_10010160)
/* 00D344 0040D344 0320F809 */  jalr        $t9
/* 00D348 0040D348 8F050014 */   lw         $a1, 0x14($t8)
/* 00D34C 0040D34C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D350 0040D350 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00D354 0040D354 8F84802C */  lw          $a0, %got(STR_10010174)($gp)
/* 00D358 0040D358 8FA90034 */  lw          $t1, 0x34($sp)
/* 00D35C 0040D35C 24840174 */  addiu       $a0, $a0, %lo(STR_10010174)
/* 00D360 0040D360 0320F809 */  jalr        $t9
/* 00D364 0040D364 8D250020 */   lw         $a1, 0x20($t1)
/* 00D368 0040D368 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040D36C:
/* 00D36C 0040D36C 8FAC002C */  lw          $t4, 0x2C($sp)
/* 00D370 0040D370 8FB90038 */  lw          $t9, 0x38($sp)
/* 00D374 0040D374 258A0001 */  addiu       $t2, $t4, 0x1
/* 00D378 0040D378 AFAA002C */  sw          $t2, 0x2C($sp)
/* 00D37C 0040D37C 97280030 */  lhu         $t0, 0x30($t9)
/* 00D380 0040D380 0148082B */  sltu        $at, $t2, $t0
/* 00D384 0040D384 1420FE9D */  bnez        $at, .L0040CDFC
/* 00D388 0040D388 00000000 */   nop
.L0040D38C:
/* 00D38C 0040D38C 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00D390 0040D390 8FA40044 */  lw          $a0, 0x44($sp)
/* 00D394 0040D394 0320F809 */  jalr        $t9
/* 00D398 0040D398 00000000 */   nop
/* 00D39C 0040D39C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D3A0 0040D3A0 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00D3A4 0040D3A4 8DAE0000 */  lw          $t6, 0x0($t5)
/* 00D3A8 0040D3A8 15C0FE30 */  bnez        $t6, .L0040CC6C
/* 00D3AC 0040D3AC AFAE0030 */   sw         $t6, 0x30($sp)
.L0040D3B0:
/* 00D3B0 0040D3B0 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D3B4 0040D3B4 8DEB0014 */  lw          $t3, 0x14($t7)
/* 00D3B8 0040D3B8 2578FFFF */  addiu       $t8, $t3, -0x1
/* 00D3BC 0040D3BC 2F010005 */  sltiu       $at, $t8, 0x5
/* 00D3C0 0040D3C0 1020004A */  beqz        $at, .L0040D4EC
/* 00D3C4 0040D3C4 00000000 */   nop
/* 00D3C8 0040D3C8 8F81802C */  lw          $at, %got(jtbl_10010E44)($gp)
/* 00D3CC 0040D3CC 0018C080 */  sll         $t8, $t8, 2
/* 00D3D0 0040D3D0 00380821 */  addu        $at, $at, $t8
/* 00D3D4 0040D3D4 8C380E44 */  lw          $t8, %lo(jtbl_10010E44)($at)
/* 00D3D8 0040D3D8 031CC021 */  addu        $t8, $t8, $gp
/* 00D3DC 0040D3DC 03000008 */  jr          $t8
/* 00D3E0 0040D3E0 00000000 */   nop
.L0040D3E4:
/* 00D3E4 0040D3E4 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D3E8 0040D3E8 8D2C0018 */  lw          $t4, 0x18($t1)
/* 00D3EC 0040D3EC 8D990010 */  lw          $t9, 0x10($t4)
/* 00D3F0 0040D3F0 8D8A0040 */  lw          $t2, 0x40($t4)
/* 00D3F4 0040D3F4 032A4021 */  addu        $t0, $t9, $t2
/* 00D3F8 0040D3F8 AFA8004C */  sw          $t0, 0x4C($sp)
/* 00D3FC 0040D3FC 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D400 0040D400 8DAE001C */  lw          $t6, 0x1C($t5)
/* 00D404 0040D404 8DCF0010 */  lw          $t7, 0x10($t6)
/* 00D408 0040D408 8DCB0040 */  lw          $t3, 0x40($t6)
/* 00D40C 0040D40C 01EBC021 */  addu        $t8, $t7, $t3
/* 00D410 0040D410 AFB80048 */  sw          $t8, 0x48($sp)
/* 00D414 0040D414 8FA9004C */  lw          $t1, 0x4C($sp)
/* 00D418 0040D418 8FAC0048 */  lw          $t4, 0x48($sp)
/* 00D41C 0040D41C 0189082B */  sltu        $at, $t4, $t1
/* 00D420 0040D420 10200003 */  beqz        $at, .L0040D430
/* 00D424 0040D424 00000000 */   nop
/* 00D428 0040D428 10000003 */  b           .L0040D438
/* 00D42C 0040D42C AFA90024 */   sw         $t1, 0x24($sp)
.L0040D430:
/* 00D430 0040D430 8FB90048 */  lw          $t9, 0x48($sp)
/* 00D434 0040D434 AFB90024 */  sw          $t9, 0x24($sp)
.L0040D438:
/* 00D438 0040D438 1000002E */  b           .L0040D4F4
/* 00D43C 0040D43C 00000000 */   nop
.L0040D440:
/* 00D440 0040D440 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D444 0040D444 8D480018 */  lw          $t0, 0x18($t2)
/* 00D448 0040D448 8D0D0010 */  lw          $t5, 0x10($t0)
/* 00D44C 0040D44C 8D0E0040 */  lw          $t6, 0x40($t0)
/* 00D450 0040D450 01AE7821 */  addu        $t7, $t5, $t6
/* 00D454 0040D454 AFAF004C */  sw          $t7, 0x4C($sp)
/* 00D458 0040D458 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D45C 0040D45C 8D78001C */  lw          $t8, 0x1C($t3)
/* 00D460 0040D460 8F0C0010 */  lw          $t4, 0x10($t8)
/* 00D464 0040D464 8F090040 */  lw          $t1, 0x40($t8)
/* 00D468 0040D468 0189C821 */  addu        $t9, $t4, $t1
/* 00D46C 0040D46C AFB90048 */  sw          $t9, 0x48($sp)
/* 00D470 0040D470 8FAA004C */  lw          $t2, 0x4C($sp)
/* 00D474 0040D474 8FA80048 */  lw          $t0, 0x48($sp)
/* 00D478 0040D478 0148082B */  sltu        $at, $t2, $t0
/* 00D47C 0040D47C 10200003 */  beqz        $at, .L0040D48C
/* 00D480 0040D480 00000000 */   nop
/* 00D484 0040D484 10000003 */  b           .L0040D494
/* 00D488 0040D488 AFAA0024 */   sw         $t2, 0x24($sp)
.L0040D48C:
/* 00D48C 0040D48C 8FAD0048 */  lw          $t5, 0x48($sp)
/* 00D490 0040D490 AFAD0024 */  sw          $t5, 0x24($sp)
.L0040D494:
/* 00D494 0040D494 10000017 */  b           .L0040D4F4
/* 00D498 0040D498 00000000 */   nop
.L0040D49C:
/* 00D49C 0040D49C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D4A0 0040D4A0 8DCF0018 */  lw          $t7, 0x18($t6)
/* 00D4A4 0040D4A4 8DEB0010 */  lw          $t3, 0x10($t7)
/* 00D4A8 0040D4A8 8DF80040 */  lw          $t8, 0x40($t7)
/* 00D4AC 0040D4AC 01786021 */  addu        $t4, $t3, $t8
/* 00D4B0 0040D4B0 AFAC004C */  sw          $t4, 0x4C($sp)
/* 00D4B4 0040D4B4 8FA9004C */  lw          $t1, 0x4C($sp)
/* 00D4B8 0040D4B8 AFA90024 */  sw          $t1, 0x24($sp)
/* 00D4BC 0040D4BC 1000000D */  b           .L0040D4F4
/* 00D4C0 0040D4C0 00000000 */   nop
.L0040D4C4:
/* 00D4C4 0040D4C4 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D4C8 0040D4C8 8F280010 */  lw          $t0, 0x10($t9)
/* 00D4CC 0040D4CC AFA80024 */  sw          $t0, 0x24($sp)
/* 00D4D0 0040D4D0 10000008 */  b           .L0040D4F4
/* 00D4D4 0040D4D4 00000000 */   nop
.L0040D4D8:
/* 00D4D8 0040D4D8 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D4DC 0040D4DC 8D4D0010 */  lw          $t5, 0x10($t2)
/* 00D4E0 0040D4E0 AFAD0024 */  sw          $t5, 0x24($sp)
/* 00D4E4 0040D4E4 10000003 */  b           .L0040D4F4
/* 00D4E8 0040D4E8 00000000 */   nop
.L0040D4EC:
/* 00D4EC 0040D4EC 10000001 */  b           .L0040D4F4
/* 00D4F0 0040D4F0 00000000 */   nop
.L0040D4F4:
/* 00D4F4 0040D4F4 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D4F8 0040D4F8 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D4FC 0040D4FC 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D500 0040D500 0320F809 */  jalr        $t9
/* 00D504 0040D504 8DC40020 */   lw         $a0, 0x20($t6)
/* 00D508 0040D508 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D50C 0040D50C AFA20024 */  sw          $v0, 0x24($sp)
/* 00D510 0040D510 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00D514 0040D514 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D518 0040D518 AD6F0010 */  sw          $t7, 0x10($t3)
/* 00D51C 0040D51C 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D520 0040D520 8F0C0028 */  lw          $t4, 0x28($t8)
/* 00D524 0040D524 31890001 */  andi        $t1, $t4, 0x1
/* 00D528 0040D528 11200019 */  beqz        $t1, .L0040D590
/* 00D52C 0040D52C 00000000 */   nop
/* 00D530 0040D530 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D534 0040D534 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D538 0040D538 8F24004C */  lw          $a0, 0x4C($t9)
/* 00D53C 0040D53C 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D540 0040D540 0320F809 */  jalr        $t9
/* 00D544 0040D544 00000000 */   nop
/* 00D548 0040D548 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D54C 0040D54C AFA20024 */  sw          $v0, 0x24($sp)
/* 00D550 0040D550 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D554 0040D554 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D558 0040D558 8D04004C */  lw          $a0, 0x4C($t0)
/* 00D55C 0040D55C 0320F809 */  jalr        $t9
/* 00D560 0040D560 8D050024 */   lw         $a1, 0x24($t0)
/* 00D564 0040D564 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D568 0040D568 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D56C 0040D56C AD420024 */  sw          $v0, 0x24($t2)
/* 00D570 0040D570 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D574 0040D574 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D578 0040D578 8DA40020 */  lw          $a0, 0x20($t5)
/* 00D57C 0040D57C 0320F809 */  jalr        $t9
/* 00D580 0040D580 8DA50024 */   lw         $a1, 0x24($t5)
/* 00D584 0040D584 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D588 0040D588 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D58C 0040D58C ADC20024 */  sw          $v0, 0x24($t6)
.L0040D590:
/* 00D590 0040D590 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D594 0040D594 8DEB0060 */  lw          $t3, 0x60($t7)
/* 00D598 0040D598 31780001 */  andi        $t8, $t3, 0x1
/* 00D59C 0040D59C 1300002D */  beqz        $t8, .L0040D654
/* 00D5A0 0040D5A0 00000000 */   nop
/* 00D5A4 0040D5A4 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D5A8 0040D5A8 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D5AC 0040D5AC 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D5B0 0040D5B0 0320F809 */  jalr        $t9
/* 00D5B4 0040D5B4 8D84004C */   lw         $a0, 0x4C($t4)
/* 00D5B8 0040D5B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D5BC 0040D5BC AFA20024 */  sw          $v0, 0x24($sp)
/* 00D5C0 0040D5C0 8FA90024 */  lw          $t1, 0x24($sp)
/* 00D5C4 0040D5C4 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D5C8 0040D5C8 AF290064 */  sw          $t1, 0x64($t9)
/* 00D5CC 0040D5CC 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D5D0 0040D5D0 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D5D4 0040D5D4 AD480010 */  sw          $t0, 0x10($t2)
/* 00D5D8 0040D5D8 AFA00020 */  sw          $zero, 0x20($sp)
/* 00D5DC 0040D5DC 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D5E0 0040D5E0 8DAE0008 */  lw          $t6, 0x8($t5)
/* 00D5E4 0040D5E4 11C00019 */  beqz        $t6, .L0040D64C
/* 00D5E8 0040D5E8 AFAE0030 */   sw         $t6, 0x30($sp)
.L0040D5EC:
/* 00D5EC 0040D5EC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D5F0 0040D5F0 8DEB0044 */  lw          $t3, 0x44($t7)
/* 00D5F4 0040D5F4 31780001 */  andi        $t8, $t3, 0x1
/* 00D5F8 0040D5F8 13000010 */  beqz        $t8, .L0040D63C
/* 00D5FC 0040D5FC 00000000 */   nop
/* 00D600 0040D600 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D604 0040D604 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D608 0040D608 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D60C 0040D60C 0320F809 */  jalr        $t9
/* 00D610 0040D610 8D84001C */   lw         $a0, 0x1C($t4)
/* 00D614 0040D614 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D618 0040D618 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D61C 0040D61C 8FA90024 */  lw          $t1, 0x24($sp)
/* 00D620 0040D620 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D624 0040D624 AF290030 */  sw          $t1, 0x30($t9)
/* 00D628 0040D628 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00D62C 0040D62C 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D630 0040D630 8D4D0008 */  lw          $t5, 0x8($t2)
/* 00D634 0040D634 010D7021 */  addu        $t6, $t0, $t5
/* 00D638 0040D638 AFAE0024 */  sw          $t6, 0x24($sp)
.L0040D63C:
/* 00D63C 0040D63C 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D640 0040D640 8DEB0000 */  lw          $t3, 0x0($t7)
/* 00D644 0040D644 1560FFE9 */  bnez        $t3, .L0040D5EC
/* 00D648 0040D648 AFAB0030 */   sw         $t3, 0x30($sp)
.L0040D64C:
/* 00D64C 0040D64C 10000004 */  b           .L0040D660
/* 00D650 0040D650 00000000 */   nop
.L0040D654:
/* 00D654 0040D654 8FB80024 */  lw          $t8, 0x24($sp)
/* 00D658 0040D658 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D65C 0040D65C AD980064 */  sw          $t8, 0x64($t4)
.L0040D660:
/* 00D660 0040D660 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D664 0040D664 8D390060 */  lw          $t9, 0x60($t1)
/* 00D668 0040D668 332A0002 */  andi        $t2, $t9, 0x2
/* 00D66C 0040D66C 11400030 */  beqz        $t2, .L0040D730
/* 00D670 0040D670 00000000 */   nop
/* 00D674 0040D674 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D678 0040D678 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D67C 0040D67C 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D680 0040D680 0320F809 */  jalr        $t9
/* 00D684 0040D684 8D040050 */   lw         $a0, 0x50($t0)
/* 00D688 0040D688 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D68C 0040D68C AFA20024 */  sw          $v0, 0x24($sp)
/* 00D690 0040D690 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00D694 0040D694 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D698 0040D698 ADCD0068 */  sw          $t5, 0x68($t6)
/* 00D69C 0040D69C 8FAF0020 */  lw          $t7, 0x20($sp)
/* 00D6A0 0040D6A0 11E00005 */  beqz        $t7, .L0040D6B8
/* 00D6A4 0040D6A4 00000000 */   nop
/* 00D6A8 0040D6A8 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00D6AC 0040D6AC 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D6B0 0040D6B0 AF0B0010 */  sw          $t3, 0x10($t8)
/* 00D6B4 0040D6B4 AFA00020 */  sw          $zero, 0x20($sp)
.L0040D6B8:
/* 00D6B8 0040D6B8 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D6BC 0040D6BC 8D890008 */  lw          $t1, 0x8($t4)
/* 00D6C0 0040D6C0 11200019 */  beqz        $t1, .L0040D728
/* 00D6C4 0040D6C4 AFA90030 */   sw         $t1, 0x30($sp)
.L0040D6C8:
/* 00D6C8 0040D6C8 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D6CC 0040D6CC 8F2A0044 */  lw          $t2, 0x44($t9)
/* 00D6D0 0040D6D0 31480002 */  andi        $t0, $t2, 0x2
/* 00D6D4 0040D6D4 11000010 */  beqz        $t0, .L0040D718
/* 00D6D8 0040D6D8 00000000 */   nop
/* 00D6DC 0040D6DC 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D6E0 0040D6E0 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00D6E4 0040D6E4 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D6E8 0040D6E8 0320F809 */  jalr        $t9
/* 00D6EC 0040D6EC 8DA40020 */   lw         $a0, 0x20($t5)
/* 00D6F0 0040D6F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D6F4 0040D6F4 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D6F8 0040D6F8 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00D6FC 0040D6FC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D700 0040D700 ADEE0034 */  sw          $t6, 0x34($t7)
/* 00D704 0040D704 8FB80030 */  lw          $t8, 0x30($sp)
/* 00D708 0040D708 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00D70C 0040D70C 8F0C000C */  lw          $t4, 0xC($t8)
/* 00D710 0040D710 016C4821 */  addu        $t1, $t3, $t4
/* 00D714 0040D714 AFA90024 */  sw          $t1, 0x24($sp)
.L0040D718:
/* 00D718 0040D718 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D71C 0040D71C 8F2A0000 */  lw          $t2, 0x0($t9)
/* 00D720 0040D720 1540FFE9 */  bnez        $t2, .L0040D6C8
/* 00D724 0040D724 AFAA0030 */   sw         $t2, 0x30($sp)
.L0040D728:
/* 00D728 0040D728 10000004 */  b           .L0040D73C
/* 00D72C 0040D72C 00000000 */   nop
.L0040D730:
/* 00D730 0040D730 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D734 0040D734 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D738 0040D738 ADA80068 */  sw          $t0, 0x68($t5)
.L0040D73C:
/* 00D73C 0040D73C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D740 0040D740 8DCF0060 */  lw          $t7, 0x60($t6)
/* 00D744 0040D744 31F80004 */  andi        $t8, $t7, 0x4
/* 00D748 0040D748 13000030 */  beqz        $t8, .L0040D80C
/* 00D74C 0040D74C 00000000 */   nop
/* 00D750 0040D750 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D754 0040D754 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D758 0040D758 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D75C 0040D75C 0320F809 */  jalr        $t9
/* 00D760 0040D760 8D640054 */   lw         $a0, 0x54($t3)
/* 00D764 0040D764 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D768 0040D768 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D76C 0040D76C 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00D770 0040D770 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D774 0040D774 AD2C006C */  sw          $t4, 0x6C($t1)
/* 00D778 0040D778 8FB90020 */  lw          $t9, 0x20($sp)
/* 00D77C 0040D77C 13200005 */  beqz        $t9, .L0040D794
/* 00D780 0040D780 00000000 */   nop
/* 00D784 0040D784 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00D788 0040D788 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D78C 0040D78C AD0A0010 */  sw          $t2, 0x10($t0)
/* 00D790 0040D790 AFA00020 */  sw          $zero, 0x20($sp)
.L0040D794:
/* 00D794 0040D794 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D798 0040D798 8DAE0008 */  lw          $t6, 0x8($t5)
/* 00D79C 0040D79C 11C00019 */  beqz        $t6, .L0040D804
/* 00D7A0 0040D7A0 AFAE0030 */   sw         $t6, 0x30($sp)
.L0040D7A4:
/* 00D7A4 0040D7A4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D7A8 0040D7A8 8DF80044 */  lw          $t8, 0x44($t7)
/* 00D7AC 0040D7AC 330B0004 */  andi        $t3, $t8, 0x4
/* 00D7B0 0040D7B0 11600010 */  beqz        $t3, .L0040D7F4
/* 00D7B4 0040D7B4 00000000 */   nop
/* 00D7B8 0040D7B8 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D7BC 0040D7BC 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D7C0 0040D7C0 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D7C4 0040D7C4 0320F809 */  jalr        $t9
/* 00D7C8 0040D7C8 8D840024 */   lw         $a0, 0x24($t4)
/* 00D7CC 0040D7CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D7D0 0040D7D0 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D7D4 0040D7D4 8FA90024 */  lw          $t1, 0x24($sp)
/* 00D7D8 0040D7D8 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D7DC 0040D7DC AF290038 */  sw          $t1, 0x38($t9)
/* 00D7E0 0040D7E0 8FA80030 */  lw          $t0, 0x30($sp)
/* 00D7E4 0040D7E4 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00D7E8 0040D7E8 8D0D0010 */  lw          $t5, 0x10($t0)
/* 00D7EC 0040D7EC 014D7021 */  addu        $t6, $t2, $t5
/* 00D7F0 0040D7F0 AFAE0024 */  sw          $t6, 0x24($sp)
.L0040D7F4:
/* 00D7F4 0040D7F4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D7F8 0040D7F8 8DF80000 */  lw          $t8, 0x0($t7)
/* 00D7FC 0040D7FC 1700FFE9 */  bnez        $t8, .L0040D7A4
/* 00D800 0040D800 AFB80030 */   sw         $t8, 0x30($sp)
.L0040D804:
/* 00D804 0040D804 10000004 */  b           .L0040D818
/* 00D808 0040D808 00000000 */   nop
.L0040D80C:
/* 00D80C 0040D80C 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00D810 0040D810 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D814 0040D814 AD8B006C */  sw          $t3, 0x6C($t4)
.L0040D818:
/* 00D818 0040D818 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D81C 0040D81C 8D390060 */  lw          $t9, 0x60($t1)
/* 00D820 0040D820 33280010 */  andi        $t0, $t9, 0x10
/* 00D824 0040D824 11000030 */  beqz        $t0, .L0040D8E8
/* 00D828 0040D828 00000000 */   nop
/* 00D82C 0040D82C 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D830 0040D830 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D834 0040D834 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D838 0040D838 0320F809 */  jalr        $t9
/* 00D83C 0040D83C 8D440058 */   lw         $a0, 0x58($t2)
/* 00D840 0040D840 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D844 0040D844 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D848 0040D848 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00D84C 0040D84C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D850 0040D850 ADCD0070 */  sw          $t5, 0x70($t6)
/* 00D854 0040D854 8FAF0020 */  lw          $t7, 0x20($sp)
/* 00D858 0040D858 11E00005 */  beqz        $t7, .L0040D870
/* 00D85C 0040D85C 00000000 */   nop
/* 00D860 0040D860 8FB80024 */  lw          $t8, 0x24($sp)
/* 00D864 0040D864 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D868 0040D868 AD780010 */  sw          $t8, 0x10($t3)
/* 00D86C 0040D86C AFA00020 */  sw          $zero, 0x20($sp)
.L0040D870:
/* 00D870 0040D870 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D874 0040D874 8D890008 */  lw          $t1, 0x8($t4)
/* 00D878 0040D878 11200019 */  beqz        $t1, .L0040D8E0
/* 00D87C 0040D87C AFA90030 */   sw         $t1, 0x30($sp)
.L0040D880:
/* 00D880 0040D880 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D884 0040D884 8F280044 */  lw          $t0, 0x44($t9)
/* 00D888 0040D888 310A0010 */  andi        $t2, $t0, 0x10
/* 00D88C 0040D88C 11400010 */  beqz        $t2, .L0040D8D0
/* 00D890 0040D890 00000000 */   nop
/* 00D894 0040D894 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D898 0040D898 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00D89C 0040D89C 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D8A0 0040D8A0 0320F809 */  jalr        $t9
/* 00D8A4 0040D8A4 8DA40028 */   lw         $a0, 0x28($t5)
/* 00D8A8 0040D8A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D8AC 0040D8AC AFA20024 */  sw          $v0, 0x24($sp)
/* 00D8B0 0040D8B0 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00D8B4 0040D8B4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D8B8 0040D8B8 ADEE003C */  sw          $t6, 0x3C($t7)
/* 00D8BC 0040D8BC 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00D8C0 0040D8C0 8FB80024 */  lw          $t8, 0x24($sp)
/* 00D8C4 0040D8C4 8D6C0014 */  lw          $t4, 0x14($t3)
/* 00D8C8 0040D8C8 030C4821 */  addu        $t1, $t8, $t4
/* 00D8CC 0040D8CC AFA90024 */  sw          $t1, 0x24($sp)
.L0040D8D0:
/* 00D8D0 0040D8D0 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D8D4 0040D8D4 8F280000 */  lw          $t0, 0x0($t9)
/* 00D8D8 0040D8D8 1500FFE9 */  bnez        $t0, .L0040D880
/* 00D8DC 0040D8DC AFA80030 */   sw         $t0, 0x30($sp)
.L0040D8E0:
/* 00D8E0 0040D8E0 10000004 */  b           .L0040D8F4
/* 00D8E4 0040D8E4 00000000 */   nop
.L0040D8E8:
/* 00D8E8 0040D8E8 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00D8EC 0040D8EC 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D8F0 0040D8F0 ADAA0070 */  sw          $t2, 0x70($t5)
.L0040D8F4:
/* 00D8F4 0040D8F4 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D8F8 0040D8F8 8DCF0060 */  lw          $t7, 0x60($t6)
/* 00D8FC 0040D8FC 31EB0008 */  andi        $t3, $t7, 0x8
/* 00D900 0040D900 11600030 */  beqz        $t3, .L0040D9C4
/* 00D904 0040D904 00000000 */   nop
/* 00D908 0040D908 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D90C 0040D90C 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D910 0040D910 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D914 0040D914 0320F809 */  jalr        $t9
/* 00D918 0040D918 8F04005C */   lw         $a0, 0x5C($t8)
/* 00D91C 0040D91C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D920 0040D920 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D924 0040D924 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00D928 0040D928 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D92C 0040D92C AD2C0074 */  sw          $t4, 0x74($t1)
/* 00D930 0040D930 8FB90020 */  lw          $t9, 0x20($sp)
/* 00D934 0040D934 13200005 */  beqz        $t9, .L0040D94C
/* 00D938 0040D938 00000000 */   nop
/* 00D93C 0040D93C 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D940 0040D940 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D944 0040D944 AD480010 */  sw          $t0, 0x10($t2)
/* 00D948 0040D948 AFA00020 */  sw          $zero, 0x20($sp)
.L0040D94C:
/* 00D94C 0040D94C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D950 0040D950 8DAE0008 */  lw          $t6, 0x8($t5)
/* 00D954 0040D954 11C00019 */  beqz        $t6, .L0040D9BC
/* 00D958 0040D958 AFAE0030 */   sw         $t6, 0x30($sp)
.L0040D95C:
/* 00D95C 0040D95C 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D960 0040D960 8DEB0044 */  lw          $t3, 0x44($t7)
/* 00D964 0040D964 31780008 */  andi        $t8, $t3, 0x8
/* 00D968 0040D968 13000010 */  beqz        $t8, .L0040D9AC
/* 00D96C 0040D96C 00000000 */   nop
/* 00D970 0040D970 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D974 0040D974 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D978 0040D978 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D97C 0040D97C 0320F809 */  jalr        $t9
/* 00D980 0040D980 8D84002C */   lw         $a0, 0x2C($t4)
/* 00D984 0040D984 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D988 0040D988 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D98C 0040D98C 8FA90024 */  lw          $t1, 0x24($sp)
/* 00D990 0040D990 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D994 0040D994 AF290040 */  sw          $t1, 0x40($t9)
/* 00D998 0040D998 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00D99C 0040D99C 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D9A0 0040D9A0 8D4D0018 */  lw          $t5, 0x18($t2)
/* 00D9A4 0040D9A4 010D7021 */  addu        $t6, $t0, $t5
/* 00D9A8 0040D9A8 AFAE0024 */  sw          $t6, 0x24($sp)
.L0040D9AC:
/* 00D9AC 0040D9AC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D9B0 0040D9B0 8DEB0000 */  lw          $t3, 0x0($t7)
/* 00D9B4 0040D9B4 1560FFE9 */  bnez        $t3, .L0040D95C
/* 00D9B8 0040D9B8 AFAB0030 */   sw         $t3, 0x30($sp)
.L0040D9BC:
/* 00D9BC 0040D9BC 10000004 */  b           .L0040D9D0
/* 00D9C0 0040D9C0 00000000 */   nop
.L0040D9C4:
/* 00D9C4 0040D9C4 8FB80024 */  lw          $t8, 0x24($sp)
/* 00D9C8 0040D9C8 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D9CC 0040D9CC AD980074 */  sw          $t8, 0x74($t4)
.L0040D9D0:
/* 00D9D0 0040D9D0 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D9D4 0040D9D4 8D390068 */  lw          $t9, 0x68($t1)
/* 00D9D8 0040D9D8 8D2A0010 */  lw          $t2, 0x10($t1)
/* 00D9DC 0040D9DC 032A4023 */  subu        $t0, $t9, $t2
/* 00D9E0 0040D9E0 AD28002C */  sw          $t0, 0x2C($t1)
/* 00D9E4 0040D9E4 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D9E8 0040D9E8 8DAE006C */  lw          $t6, 0x6C($t5)
/* 00D9EC 0040D9EC 8DAF0068 */  lw          $t7, 0x68($t5)
/* 00D9F0 0040D9F0 01CF5823 */  subu        $t3, $t6, $t7
/* 00D9F4 0040D9F4 ADAB0030 */  sw          $t3, 0x30($t5)
/* 00D9F8 0040D9F8 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D9FC 0040D9FC 8F0C0070 */  lw          $t4, 0x70($t8)
/* 00DA00 0040DA00 8F19006C */  lw          $t9, 0x6C($t8)
/* 00DA04 0040DA04 01995023 */  subu        $t2, $t4, $t9
/* 00DA08 0040DA08 AF0A0034 */  sw          $t2, 0x34($t8)
/* 00DA0C 0040DA0C 8FA80050 */  lw          $t0, 0x50($sp)
/* 00DA10 0040DA10 8D090074 */  lw          $t1, 0x74($t0)
/* 00DA14 0040DA14 8D0E0070 */  lw          $t6, 0x70($t0)
/* 00DA18 0040DA18 012E7823 */  subu        $t7, $t1, $t6
/* 00DA1C 0040DA1C AD0F0038 */  sw          $t7, 0x38($t0)
/* 00DA20 0040DA20 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00DA24 0040DA24 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00DA28 0040DA28 8DAC0074 */  lw          $t4, 0x74($t5)
/* 00DA2C 0040DA2C 016CC823 */  subu        $t9, $t3, $t4
/* 00DA30 0040DA30 ADB9003C */  sw          $t9, 0x3C($t5)
/* 00DA34 0040DA34 8FB80050 */  lw          $t8, 0x50($sp)
/* 00DA38 0040DA38 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00DA3C 0040DA3C 8F090010 */  lw          $t1, 0x10($t8)
/* 00DA40 0040DA40 01497023 */  subu        $t6, $t2, $t1
/* 00DA44 0040DA44 AF0E0040 */  sw          $t6, 0x40($t8)
/* 00DA48 0040DA48 10000003 */  b           .L0040DA58
/* 00DA4C 0040DA4C 00001025 */   move       $v0, $zero
/* 00DA50 0040DA50 10000001 */  b           .L0040DA58
/* 00DA54 0040DA54 00000000 */   nop
.L0040DA58:
/* 00DA58 0040DA58 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00DA5C 0040DA5C 27BD0050 */  addiu       $sp, $sp, 0x50
/* 00DA60 0040DA60 03E00008 */  jr          $ra
/* 00DA64 0040DA64 00000000 */   nop
