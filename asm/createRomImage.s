.section .rodata
glabel STR_100105C4
/* 0405C4 100105C4 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_100105D8
/* 0405D8 100105D8 */ .asciz ".text"
                      .balign 4

glabel STR_100105E0
/* 0405E0 100105E0 */ .asciz "makerom: entr size %d is larger than %d\n"
                      .balign 4

glabel STR_1001060C
/* 04060C 1001060C */ .asciz "makerom: lseek of entry section failed\n"
                      .balign 4

glabel STR_10010634
/* 040634 10010634 */ .asciz "makerom: read of entry section failed\n"
                      .balign 4

glabel STR_1001065C
/* 04065C 1001065C */ .asciz "w+"
                      .balign 4

glabel STR_10010660
/* 040660 10010660 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10010674
/* 040674 10010674 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10010694
/* 040694 10010694 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100106B0
/* 0406B0 100106B0 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100106D0
/* 0406D0 100106D0 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100106EC
/* 0406EC 100106EC */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_1001070C
/* 04070C 1001070C */ .asciz "makerom: %s: read error \n"
                      .balign 4

glabel STR_10010728
/* 040728 10010728 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10010748
/* 040748 10010748 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10010764
/* 040764 10010764 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10010784
/* 040784 10010784 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100107A0
/* 0407A0 100107A0 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100107C0
/* 0407C0 100107C0 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100107DC
/* 0407DC 100107DC */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100107FC
/* 0407FC 100107FC */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10010818
/* 040818 10010818 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10010828
/* 040828 10010828 */ .asciz "makerom: %s: write error %x\n"
                      .balign 4

glabel STR_10010848
/* 040848 10010848 */ .asciz "makerom: %s: write error\n"
                      .balign 4


.section .text
glabel createRomImage # 25
# _gp_disp: 0xFC0F610
.set noreorder; .cpload $t9; # .set reorder
/* 00E73C 0040E73C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 00E740 0040E740 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00E744 0040E744 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00E748 0040E748 AFA40060 */  sw          $a0, 0x60($sp)
/* 00E74C 0040E74C AFA50064 */  sw          $a1, 0x64($sp)
/* 00E750 0040E750 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 00E754 0040E754 8FA40064 */  lw          $a0, 0x64($sp)
/* 00E758 0040E758 00002825 */  move        $a1, $zero
/* 00E75C 0040E75C 0320F809 */  jalr        $t9
/* 00E760 0040E760 00000000 */   nop
/* 00E764 0040E764 AFA20048 */  sw          $v0, 0x48($sp)
/* 00E768 0040E768 8FAE0048 */  lw          $t6, 0x48($sp)
/* 00E76C 0040E76C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00E770 0040E770 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E774 0040E774 15C10011 */  bne         $t6, $at, .L0040E7BC
/* 00E778 0040E778 00000000 */   nop
/* 00E77C 0040E77C 8F8F804C */  lw          $t7, %got(errno)($gp)
/* 00E780 0040E780 8F998050 */  lw          $t9, %got(sys_errlist)($gp)
/* 00E784 0040E784 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00E788 0040E788 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00E78C 0040E78C 8F85802C */  lw          $a1, %got(STR_100105C4)($gp)
/* 00E790 0040E790 8FA60064 */  lw          $a2, 0x64($sp)
/* 00E794 0040E794 000FC080 */  sll         $t8, $t7, 2
/* 00E798 0040E798 03194021 */  addu        $t0, $t8, $t9
/* 00E79C 0040E79C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E7A0 0040E7A0 8D070000 */  lw          $a3, 0x0($t0)
/* 00E7A4 0040E7A4 24840020 */  addiu       $a0, $a0, 0x20
/* 00E7A8 0040E7A8 0320F809 */  jalr        $t9
/* 00E7AC 0040E7AC 24A505C4 */   addiu      $a1, $a1, %lo(STR_100105C4)
/* 00E7B0 0040E7B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E7B4 0040E7B4 10000293 */  b           .L0040F204
/* 00E7B8 0040E7B8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E7BC:
/* 00E7BC 0040E7BC 8F9981E8 */  lw          $t9, %call16(elf_begin)($gp)
/* 00E7C0 0040E7C0 8FA40048 */  lw          $a0, 0x48($sp)
/* 00E7C4 0040E7C4 24050001 */  addiu       $a1, $zero, 0x1
/* 00E7C8 0040E7C8 0320F809 */  jalr        $t9
/* 00E7CC 0040E7CC 00003025 */   move       $a2, $zero
/* 00E7D0 0040E7D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E7D4 0040E7D4 AFA20044 */  sw          $v0, 0x44($sp)
/* 00E7D8 0040E7D8 8F998200 */  lw          $t9, %call16(elf32_getehdr)($gp)
/* 00E7DC 0040E7DC 8FA40044 */  lw          $a0, 0x44($sp)
/* 00E7E0 0040E7E0 0320F809 */  jalr        $t9
/* 00E7E4 0040E7E4 00000000 */   nop
/* 00E7E8 0040E7E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E7EC 0040E7EC AFA20040 */  sw          $v0, 0x40($sp)
/* 00E7F0 0040E7F0 8FAA0040 */  lw          $t2, 0x40($sp)
/* 00E7F4 0040E7F4 24090001 */  addiu       $t1, $zero, 0x1
/* 00E7F8 0040E7F8 AFA90034 */  sw          $t1, 0x34($sp)
/* 00E7FC 0040E7FC 954B0030 */  lhu         $t3, 0x30($t2)
/* 00E800 0040E800 29610002 */  slti        $at, $t3, 0x2
/* 00E804 0040E804 14200028 */  bnez        $at, .L0040E8A8
/* 00E808 0040E808 00000000 */   nop
.L0040E80C:
/* 00E80C 0040E80C 8F998220 */  lw          $t9, %call16(_elf_getscn)($gp)
/* 00E810 0040E810 8FA40044 */  lw          $a0, 0x44($sp)
/* 00E814 0040E814 8FA50034 */  lw          $a1, 0x34($sp)
/* 00E818 0040E818 0320F809 */  jalr        $t9
/* 00E81C 0040E81C 00000000 */   nop
/* 00E820 0040E820 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E824 0040E824 AFA2003C */  sw          $v0, 0x3C($sp)
/* 00E828 0040E828 8F99820C */  lw          $t9, %call16(elf32_getshdr)($gp)
/* 00E82C 0040E82C 8FA4003C */  lw          $a0, 0x3C($sp)
/* 00E830 0040E830 0320F809 */  jalr        $t9
/* 00E834 0040E834 00000000 */   nop
/* 00E838 0040E838 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E83C 0040E83C AFA20038 */  sw          $v0, 0x38($sp)
/* 00E840 0040E840 8F9981E4 */  lw          $t9, %call16(elf_strptr)($gp)
/* 00E844 0040E844 8FAC0040 */  lw          $t4, 0x40($sp)
/* 00E848 0040E848 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00E84C 0040E84C 8FA40044 */  lw          $a0, 0x44($sp)
/* 00E850 0040E850 95850032 */  lhu         $a1, 0x32($t4)
/* 00E854 0040E854 0320F809 */  jalr        $t9
/* 00E858 0040E858 8DA60000 */   lw         $a2, 0x0($t5)
/* 00E85C 0040E85C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E860 0040E860 AFA20050 */  sw          $v0, 0x50($sp)
/* 00E864 0040E864 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00E868 0040E868 8F85802C */  lw          $a1, %got(STR_100105D8)($gp)
/* 00E86C 0040E86C 8FA40050 */  lw          $a0, 0x50($sp)
/* 00E870 0040E870 0320F809 */  jalr        $t9
/* 00E874 0040E874 24A505D8 */   addiu      $a1, $a1, %lo(STR_100105D8)
/* 00E878 0040E878 14400003 */  bnez        $v0, .L0040E888
/* 00E87C 0040E87C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00E880 0040E880 10000009 */  b           .L0040E8A8
/* 00E884 0040E884 00000000 */   nop
.L0040E888:
/* 00E888 0040E888 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00E88C 0040E88C 8FB80040 */  lw          $t8, 0x40($sp)
/* 00E890 0040E890 25CF0001 */  addiu       $t7, $t6, 0x1
/* 00E894 0040E894 AFAF0034 */  sw          $t7, 0x34($sp)
/* 00E898 0040E898 97190030 */  lhu         $t9, 0x30($t8)
/* 00E89C 0040E89C 01F9082A */  slt         $at, $t7, $t9
/* 00E8A0 0040E8A0 1420FFDA */  bnez        $at, .L0040E80C
/* 00E8A4 0040E8A4 00000000 */   nop
.L0040E8A8:
/* 00E8A8 0040E8A8 8FA80038 */  lw          $t0, 0x38($sp)
/* 00E8AC 0040E8AC 8D090014 */  lw          $t1, 0x14($t0)
/* 00E8B0 0040E8B0 2D210051 */  sltiu       $at, $t1, 0x51
/* 00E8B4 0040E8B4 1420000D */  bnez        $at, .L0040E8EC
/* 00E8B8 0040E8B8 00000000 */   nop
/* 00E8BC 0040E8BC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E8C0 0040E8C0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00E8C4 0040E8C4 8F85802C */  lw          $a1, %got(STR_100105E0)($gp)
/* 00E8C8 0040E8C8 8FAA0038 */  lw          $t2, 0x38($sp)
/* 00E8CC 0040E8CC 24070050 */  addiu       $a3, $zero, 0x50
/* 00E8D0 0040E8D0 24840020 */  addiu       $a0, $a0, 0x20
/* 00E8D4 0040E8D4 24A505E0 */  addiu       $a1, $a1, %lo(STR_100105E0)
/* 00E8D8 0040E8D8 0320F809 */  jalr        $t9
/* 00E8DC 0040E8DC 8D460014 */   lw         $a2, 0x14($t2)
/* 00E8E0 0040E8E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E8E4 0040E8E4 10000247 */  b           .L0040F204
/* 00E8E8 0040E8E8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E8EC:
/* 00E8EC 0040E8EC 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 00E8F0 0040E8F0 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00E8F4 0040E8F4 8FA40048 */  lw          $a0, 0x48($sp)
/* 00E8F8 0040E8F8 00003025 */  move        $a2, $zero
/* 00E8FC 0040E8FC 0320F809 */  jalr        $t9
/* 00E900 0040E900 8D650010 */   lw         $a1, 0x10($t3)
/* 00E904 0040E904 2401FFFF */  addiu       $at, $zero, -0x1
/* 00E908 0040E908 1441000A */  bne         $v0, $at, .L0040E934
/* 00E90C 0040E90C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00E910 0040E910 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E914 0040E914 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00E918 0040E918 8F85802C */  lw          $a1, %got(STR_1001060C)($gp)
/* 00E91C 0040E91C 24840020 */  addiu       $a0, $a0, 0x20
/* 00E920 0040E920 0320F809 */  jalr        $t9
/* 00E924 0040E924 24A5060C */   addiu      $a1, $a1, %lo(STR_1001060C)
/* 00E928 0040E928 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E92C 0040E92C 10000235 */  b           .L0040F204
/* 00E930 0040E930 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E934:
/* 00E934 0040E934 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 00E938 0040E938 8F85802C */  lw          $a1, %got(B_10016A60)($gp)
/* 00E93C 0040E93C 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00E940 0040E940 8FA40048 */  lw          $a0, 0x48($sp)
/* 00E944 0040E944 8CA56A60 */  lw          $a1, %lo(B_10016A60)($a1)
/* 00E948 0040E948 0320F809 */  jalr        $t9
/* 00E94C 0040E94C 8D860014 */   lw         $a2, 0x14($t4)
/* 00E950 0040E950 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00E954 0040E954 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E958 0040E958 8DAE0014 */  lw          $t6, 0x14($t5)
/* 00E95C 0040E95C 104E000A */  beq         $v0, $t6, .L0040E988
/* 00E960 0040E960 00000000 */   nop
/* 00E964 0040E964 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E968 0040E968 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00E96C 0040E96C 8F85802C */  lw          $a1, %got(STR_10010634)($gp)
/* 00E970 0040E970 24840020 */  addiu       $a0, $a0, 0x20
/* 00E974 0040E974 0320F809 */  jalr        $t9
/* 00E978 0040E978 24A50634 */   addiu      $a1, $a1, %lo(STR_10010634)
/* 00E97C 0040E97C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E980 0040E980 10000220 */  b           .L0040F204
/* 00E984 0040E984 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E988:
/* 00E988 0040E988 8F998018 */  lw          $t9, %got(func_0040F214)($gp)
/* 00E98C 0040E98C 2739F214 */  addiu       $t9, $t9, %lo(func_0040F214)
/* 00E990 0040E990 0320F809 */  jalr        $t9
/* 00E994 0040E994 00000000 */   nop
/* 00E998 0040E998 10400003 */  beqz        $v0, .L0040E9A8
/* 00E99C 0040E99C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00E9A0 0040E9A0 10000218 */  b           .L0040F204
/* 00E9A4 0040E9A4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E9A8:
/* 00E9A8 0040E9A8 8F988654 */  lw          $t8, %got(segmentList)($gp)
/* 00E9AC 0040E9AC 8F180000 */  lw          $t8, 0x0($t8)
/* 00E9B0 0040E9B0 13000025 */  beqz        $t8, .L0040EA48
/* 00E9B4 0040E9B4 AFB80058 */   sw         $t8, 0x58($sp)
.L0040E9B8:
/* 00E9B8 0040E9B8 8FAF0058 */  lw          $t7, 0x58($sp)
/* 00E9BC 0040E9BC 8DF90028 */  lw          $t9, 0x28($t7)
/* 00E9C0 0040E9C0 33280002 */  andi        $t0, $t9, 0x2
/* 00E9C4 0040E9C4 11000008 */  beqz        $t0, .L0040E9E8
/* 00E9C8 0040E9C8 00000000 */   nop
/* 00E9CC 0040E9CC 8F998018 */  lw          $t9, %got(func_0040F758)($gp)
/* 00E9D0 0040E9D0 8FA40058 */  lw          $a0, 0x58($sp)
/* 00E9D4 0040E9D4 2739F758 */  addiu       $t9, $t9, %lo(func_0040F758)
/* 00E9D8 0040E9D8 0320F809 */  jalr        $t9
/* 00E9DC 0040E9DC 00000000 */   nop
/* 00E9E0 0040E9E0 1000000C */  b           .L0040EA14
/* 00E9E4 0040E9E4 8FBC0018 */   lw         $gp, 0x18($sp)
.L0040E9E8:
/* 00E9E8 0040E9E8 8FA90058 */  lw          $t1, 0x58($sp)
/* 00E9EC 0040E9EC 8D2A0028 */  lw          $t2, 0x28($t1)
/* 00E9F0 0040E9F0 314B0004 */  andi        $t3, $t2, 0x4
/* 00E9F4 0040E9F4 11600007 */  beqz        $t3, .L0040EA14
/* 00E9F8 0040E9F8 00000000 */   nop
/* 00E9FC 0040E9FC 8F998018 */  lw          $t9, %got(func_0040FDE0)($gp)
/* 00EA00 0040EA00 8FA40058 */  lw          $a0, 0x58($sp)
/* 00EA04 0040EA04 2739FDE0 */  addiu       $t9, $t9, %lo(func_0040FDE0)
/* 00EA08 0040EA08 0320F809 */  jalr        $t9
/* 00EA0C 0040EA0C 00000000 */   nop
/* 00EA10 0040EA10 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040EA14:
/* 00EA14 0040EA14 8FAC0058 */  lw          $t4, 0x58($sp)
/* 00EA18 0040EA18 8D8D0024 */  lw          $t5, 0x24($t4)
/* 00EA1C 0040EA1C 8D8E002C */  lw          $t6, 0x2C($t4)
/* 00EA20 0040EA20 8D8F0030 */  lw          $t7, 0x30($t4)
/* 00EA24 0040EA24 8D880034 */  lw          $t0, 0x34($t4)
/* 00EA28 0040EA28 01AEC021 */  addu        $t8, $t5, $t6
/* 00EA2C 0040EA2C 030FC821 */  addu        $t9, $t8, $t7
/* 00EA30 0040EA30 03284821 */  addu        $t1, $t9, $t0
/* 00EA34 0040EA34 AFA9004C */  sw          $t1, 0x4C($sp)
/* 00EA38 0040EA38 8FAA0058 */  lw          $t2, 0x58($sp)
/* 00EA3C 0040EA3C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 00EA40 0040EA40 1560FFDD */  bnez        $t3, .L0040E9B8
/* 00EA44 0040EA44 AFAB0058 */   sw         $t3, 0x58($sp)
.L0040EA48:
/* 00EA48 0040EA48 8F99807C */  lw          $t9, %call16(fopen)($gp)
/* 00EA4C 0040EA4C 8F85802C */  lw          $a1, %got(STR_1001065C)($gp)
/* 00EA50 0040EA50 8FA40060 */  lw          $a0, 0x60($sp)
/* 00EA54 0040EA54 0320F809 */  jalr        $t9
/* 00EA58 0040EA58 24A5065C */   addiu      $a1, $a1, %lo(STR_1001065C)
/* 00EA5C 0040EA5C AFA2005C */  sw          $v0, 0x5C($sp)
/* 00EA60 0040EA60 8FAD005C */  lw          $t5, 0x5C($sp)
/* 00EA64 0040EA64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EA68 0040EA68 15A00011 */  bnez        $t5, .L0040EAB0
/* 00EA6C 0040EA6C 00000000 */   nop
/* 00EA70 0040EA70 8F8E804C */  lw          $t6, %got(errno)($gp)
/* 00EA74 0040EA74 8F8F8050 */  lw          $t7, %got(sys_errlist)($gp)
/* 00EA78 0040EA78 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EA7C 0040EA7C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00EA80 0040EA80 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EA84 0040EA84 8F85802C */  lw          $a1, %got(STR_10010660)($gp)
/* 00EA88 0040EA88 000EC080 */  sll         $t8, $t6, 2
/* 00EA8C 0040EA8C 030F6021 */  addu        $t4, $t8, $t7
/* 00EA90 0040EA90 8D870000 */  lw          $a3, 0x0($t4)
/* 00EA94 0040EA94 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EA98 0040EA98 24840020 */  addiu       $a0, $a0, 0x20
/* 00EA9C 0040EA9C 0320F809 */  jalr        $t9
/* 00EAA0 0040EAA0 24A50660 */   addiu      $a1, $a1, %lo(STR_10010660)
/* 00EAA4 0040EAA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EAA8 0040EAA8 100001D6 */  b           .L0040F204
/* 00EAAC 0040EAAC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EAB0:
/* 00EAB0 0040EAB0 8F998674 */  lw          $t9, %got(offset)($gp)
/* 00EAB4 0040EAB4 8F390000 */  lw          $t9, 0x0($t9)
/* 00EAB8 0040EAB8 13200019 */  beqz        $t9, .L0040EB20
/* 00EABC 0040EABC 00000000 */   nop
/* 00EAC0 0040EAC0 8F9980DC */  lw          $t9, %call16(fseek)($gp)
/* 00EAC4 0040EAC4 8F858674 */  lw          $a1, %got(offset)($gp)
/* 00EAC8 0040EAC8 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EACC 0040EACC 00003025 */  move        $a2, $zero
/* 00EAD0 0040EAD0 0320F809 */  jalr        $t9
/* 00EAD4 0040EAD4 8CA50000 */   lw         $a1, 0x0($a1)
/* 00EAD8 0040EAD8 10400011 */  beqz        $v0, .L0040EB20
/* 00EADC 0040EADC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EAE0 0040EAE0 8F88804C */  lw          $t0, %got(errno)($gp)
/* 00EAE4 0040EAE4 8F8A8050 */  lw          $t2, %got(sys_errlist)($gp)
/* 00EAE8 0040EAE8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EAEC 0040EAEC 8D080000 */  lw          $t0, 0x0($t0)
/* 00EAF0 0040EAF0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EAF4 0040EAF4 8F85802C */  lw          $a1, %got(STR_10010674)($gp)
/* 00EAF8 0040EAF8 00084880 */  sll         $t1, $t0, 2
/* 00EAFC 0040EAFC 012A5821 */  addu        $t3, $t1, $t2
/* 00EB00 0040EB00 8D670000 */  lw          $a3, 0x0($t3)
/* 00EB04 0040EB04 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EB08 0040EB08 24840020 */  addiu       $a0, $a0, 0x20
/* 00EB0C 0040EB0C 0320F809 */  jalr        $t9
/* 00EB10 0040EB10 24A50674 */   addiu      $a1, $a1, %lo(STR_10010674)
/* 00EB14 0040EB14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EB18 0040EB18 100001BA */  b           .L0040F204
/* 00EB1C 0040EB1C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EB20:
/* 00EB20 0040EB20 8F9980E0 */  lw          $t9, %call16(fwrite)($gp)
/* 00EB24 0040EB24 8F848724 */  lw          $a0, %got(headerBuf)($gp)
/* 00EB28 0040EB28 8F868738 */  lw          $a2, %got(headerWordAlignedByteSize)($gp)
/* 00EB2C 0040EB2C 24050001 */  addiu       $a1, $zero, 0x1
/* 00EB30 0040EB30 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00EB34 0040EB34 8C840000 */  lw          $a0, 0x0($a0)
/* 00EB38 0040EB38 0320F809 */  jalr        $t9
/* 00EB3C 0040EB3C 8CC60000 */   lw         $a2, 0x0($a2)
/* 00EB40 0040EB40 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EB44 0040EB44 8F8D8738 */  lw          $t5, %got(headerWordAlignedByteSize)($gp)
/* 00EB48 0040EB48 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00EB4C 0040EB4C 104D000B */  beq         $v0, $t5, .L0040EB7C
/* 00EB50 0040EB50 00000000 */   nop
/* 00EB54 0040EB54 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EB58 0040EB58 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EB5C 0040EB5C 8F85802C */  lw          $a1, %got(STR_10010694)($gp)
/* 00EB60 0040EB60 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EB64 0040EB64 24840020 */  addiu       $a0, $a0, 0x20
/* 00EB68 0040EB68 0320F809 */  jalr        $t9
/* 00EB6C 0040EB6C 24A50694 */   addiu      $a1, $a1, %lo(STR_10010694)
/* 00EB70 0040EB70 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EB74 0040EB74 100001A3 */  b           .L0040F204
/* 00EB78 0040EB78 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EB7C:
/* 00EB7C 0040EB7C 8F858674 */  lw          $a1, %got(offset)($gp)
/* 00EB80 0040EB80 8F9980DC */  lw          $t9, %call16(fseek)($gp)
/* 00EB84 0040EB84 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EB88 0040EB88 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EB8C 0040EB8C 00003025 */  move        $a2, $zero
/* 00EB90 0040EB90 0320F809 */  jalr        $t9
/* 00EB94 0040EB94 24A50008 */   addiu      $a1, $a1, 0x8
/* 00EB98 0040EB98 10400011 */  beqz        $v0, .L0040EBE0
/* 00EB9C 0040EB9C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EBA0 0040EBA0 8F8E804C */  lw          $t6, %got(errno)($gp)
/* 00EBA4 0040EBA4 8F8F8050 */  lw          $t7, %got(sys_errlist)($gp)
/* 00EBA8 0040EBA8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EBAC 0040EBAC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00EBB0 0040EBB0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EBB4 0040EBB4 8F85802C */  lw          $a1, %got(STR_100106B0)($gp)
/* 00EBB8 0040EBB8 000EC080 */  sll         $t8, $t6, 2
/* 00EBBC 0040EBBC 030F6021 */  addu        $t4, $t8, $t7
/* 00EBC0 0040EBC0 8D870000 */  lw          $a3, 0x0($t4)
/* 00EBC4 0040EBC4 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EBC8 0040EBC8 24840020 */  addiu       $a0, $a0, 0x20
/* 00EBCC 0040EBCC 0320F809 */  jalr        $t9
/* 00EBD0 0040EBD0 24A506B0 */   addiu      $a1, $a1, %lo(STR_100106B0)
/* 00EBD4 0040EBD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EBD8 0040EBD8 1000018A */  b           .L0040F204
/* 00EBDC 0040EBDC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EBE0:
/* 00EBE0 0040EBE0 8F9980E0 */  lw          $t9, %call16(fwrite)($gp)
/* 00EBE4 0040EBE4 8F8487B4 */  lw          $a0, %got(bootAddress)($gp)
/* 00EBE8 0040EBE8 24050004 */  addiu       $a1, $zero, 0x4
/* 00EBEC 0040EBEC 24060001 */  addiu       $a2, $zero, 0x1
/* 00EBF0 0040EBF0 0320F809 */  jalr        $t9
/* 00EBF4 0040EBF4 8FA7005C */   lw         $a3, 0x5C($sp)
/* 00EBF8 0040EBF8 24010001 */  addiu       $at, $zero, 0x1
/* 00EBFC 0040EBFC 1041000B */  beq         $v0, $at, .L0040EC2C
/* 00EC00 0040EC00 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EC04 0040EC04 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EC08 0040EC08 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EC0C 0040EC0C 8F85802C */  lw          $a1, %got(STR_100106D0)($gp)
/* 00EC10 0040EC10 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EC14 0040EC14 24840020 */  addiu       $a0, $a0, 0x20
/* 00EC18 0040EC18 0320F809 */  jalr        $t9
/* 00EC1C 0040EC1C 24A506D0 */   addiu      $a1, $a1, %lo(STR_100106D0)
/* 00EC20 0040EC20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EC24 0040EC24 10000177 */  b           .L0040F204
/* 00EC28 0040EC28 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EC2C:
/* 00EC2C 0040EC2C 8F998678 */  lw          $t9, %got(changeclock)($gp)
/* 00EC30 0040EC30 8F390000 */  lw          $t9, 0x0($t9)
/* 00EC34 0040EC34 13200060 */  beqz        $t9, .L0040EDB8
/* 00EC38 0040EC38 00000000 */   nop
/* 00EC3C 0040EC3C AFA00024 */  sw          $zero, 0x24($sp)
/* 00EC40 0040EC40 8F858674 */  lw          $a1, %got(offset)($gp)
/* 00EC44 0040EC44 8F9980DC */  lw          $t9, %call16(fseek)($gp)
/* 00EC48 0040EC48 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EC4C 0040EC4C 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EC50 0040EC50 00003025 */  move        $a2, $zero
/* 00EC54 0040EC54 0320F809 */  jalr        $t9
/* 00EC58 0040EC58 24A50004 */   addiu      $a1, $a1, 0x4
/* 00EC5C 0040EC5C 10400011 */  beqz        $v0, .L0040ECA4
/* 00EC60 0040EC60 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EC64 0040EC64 8F88804C */  lw          $t0, %got(errno)($gp)
/* 00EC68 0040EC68 8F8A8050 */  lw          $t2, %got(sys_errlist)($gp)
/* 00EC6C 0040EC6C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EC70 0040EC70 8D080000 */  lw          $t0, 0x0($t0)
/* 00EC74 0040EC74 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EC78 0040EC78 8F85802C */  lw          $a1, %got(STR_100106EC)($gp)
/* 00EC7C 0040EC7C 00084880 */  sll         $t1, $t0, 2
/* 00EC80 0040EC80 012A5821 */  addu        $t3, $t1, $t2
/* 00EC84 0040EC84 8D670000 */  lw          $a3, 0x0($t3)
/* 00EC88 0040EC88 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EC8C 0040EC8C 24840020 */  addiu       $a0, $a0, 0x20
/* 00EC90 0040EC90 0320F809 */  jalr        $t9
/* 00EC94 0040EC94 24A506EC */   addiu      $a1, $a1, %lo(STR_100106EC)
/* 00EC98 0040EC98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EC9C 0040EC9C 10000159 */  b           .L0040F204
/* 00ECA0 0040ECA0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040ECA4:
/* 00ECA4 0040ECA4 8F9980E4 */  lw          $t9, %call16(fread)($gp)
/* 00ECA8 0040ECA8 27A40024 */  addiu       $a0, $sp, 0x24
/* 00ECAC 0040ECAC 24050004 */  addiu       $a1, $zero, 0x4
/* 00ECB0 0040ECB0 24060001 */  addiu       $a2, $zero, 0x1
/* 00ECB4 0040ECB4 0320F809 */  jalr        $t9
/* 00ECB8 0040ECB8 8FA7005C */   lw         $a3, 0x5C($sp)
/* 00ECBC 0040ECBC 24010001 */  addiu       $at, $zero, 0x1
/* 00ECC0 0040ECC0 1041000B */  beq         $v0, $at, .L0040ECF0
/* 00ECC4 0040ECC4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00ECC8 0040ECC8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00ECCC 0040ECCC 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00ECD0 0040ECD0 8F85802C */  lw          $a1, %got(STR_1001070C)($gp)
/* 00ECD4 0040ECD4 8FA60060 */  lw          $a2, 0x60($sp)
/* 00ECD8 0040ECD8 24840020 */  addiu       $a0, $a0, 0x20
/* 00ECDC 0040ECDC 0320F809 */  jalr        $t9
/* 00ECE0 0040ECE0 24A5070C */   addiu      $a1, $a1, %lo(STR_1001070C)
/* 00ECE4 0040ECE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ECE8 0040ECE8 10000146 */  b           .L0040F204
/* 00ECEC 0040ECEC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040ECF0:
/* 00ECF0 0040ECF0 8F8D867C */  lw          $t5, %got(clockrate)($gp)
/* 00ECF4 0040ECF4 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00ECF8 0040ECF8 8F81867C */  lw          $at, %got(clockrate)($gp)
/* 00ECFC 0040ECFC 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00ED00 0040ED00 01AEC025 */  or          $t8, $t5, $t6
/* 00ED04 0040ED04 AC380000 */  sw          $t8, 0x0($at)
/* 00ED08 0040ED08 8F858674 */  lw          $a1, %got(offset)($gp)
/* 00ED0C 0040ED0C 8F9980DC */  lw          $t9, %call16(fseek)($gp)
/* 00ED10 0040ED10 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00ED14 0040ED14 8CA50000 */  lw          $a1, 0x0($a1)
/* 00ED18 0040ED18 00003025 */  move        $a2, $zero
/* 00ED1C 0040ED1C 0320F809 */  jalr        $t9
/* 00ED20 0040ED20 24A50004 */   addiu      $a1, $a1, 0x4
/* 00ED24 0040ED24 10400011 */  beqz        $v0, .L0040ED6C
/* 00ED28 0040ED28 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00ED2C 0040ED2C 8F8F804C */  lw          $t7, %got(errno)($gp)
/* 00ED30 0040ED30 8F998050 */  lw          $t9, %got(sys_errlist)($gp)
/* 00ED34 0040ED34 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00ED38 0040ED38 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00ED3C 0040ED3C 8F85802C */  lw          $a1, %got(STR_10010728)($gp)
/* 00ED40 0040ED40 8FA60060 */  lw          $a2, 0x60($sp)
/* 00ED44 0040ED44 000F6080 */  sll         $t4, $t7, 2
/* 00ED48 0040ED48 01994021 */  addu        $t0, $t4, $t9
/* 00ED4C 0040ED4C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00ED50 0040ED50 8D070000 */  lw          $a3, 0x0($t0)
/* 00ED54 0040ED54 24840020 */  addiu       $a0, $a0, 0x20
/* 00ED58 0040ED58 0320F809 */  jalr        $t9
/* 00ED5C 0040ED5C 24A50728 */   addiu      $a1, $a1, %lo(STR_10010728)
/* 00ED60 0040ED60 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ED64 0040ED64 10000127 */  b           .L0040F204
/* 00ED68 0040ED68 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040ED6C:
/* 00ED6C 0040ED6C 8F9980E0 */  lw          $t9, %call16(fwrite)($gp)
/* 00ED70 0040ED70 8F84867C */  lw          $a0, %got(clockrate)($gp)
/* 00ED74 0040ED74 24050004 */  addiu       $a1, $zero, 0x4
/* 00ED78 0040ED78 24060001 */  addiu       $a2, $zero, 0x1
/* 00ED7C 0040ED7C 0320F809 */  jalr        $t9
/* 00ED80 0040ED80 8FA7005C */   lw         $a3, 0x5C($sp)
/* 00ED84 0040ED84 24010001 */  addiu       $at, $zero, 0x1
/* 00ED88 0040ED88 1041000B */  beq         $v0, $at, .L0040EDB8
/* 00ED8C 0040ED8C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00ED90 0040ED90 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00ED94 0040ED94 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00ED98 0040ED98 8F85802C */  lw          $a1, %got(STR_10010748)($gp)
/* 00ED9C 0040ED9C 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EDA0 0040EDA0 24840020 */  addiu       $a0, $a0, 0x20
/* 00EDA4 0040EDA4 0320F809 */  jalr        $t9
/* 00EDA8 0040EDA8 24A50748 */   addiu      $a1, $a1, %lo(STR_10010748)
/* 00EDAC 0040EDAC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EDB0 0040EDB0 10000114 */  b           .L0040F204
/* 00EDB4 0040EDB4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EDB8:
/* 00EDB8 0040EDB8 8F858674 */  lw          $a1, %got(offset)($gp)
/* 00EDBC 0040EDBC 8F9980DC */  lw          $t9, %call16(fseek)($gp)
/* 00EDC0 0040EDC0 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EDC4 0040EDC4 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EDC8 0040EDC8 00003025 */  move        $a2, $zero
/* 00EDCC 0040EDCC 0320F809 */  jalr        $t9
/* 00EDD0 0040EDD0 24A50040 */   addiu      $a1, $a1, 0x40
/* 00EDD4 0040EDD4 10400011 */  beqz        $v0, .L0040EE1C
/* 00EDD8 0040EDD8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EDDC 0040EDDC 8F89804C */  lw          $t1, %got(errno)($gp)
/* 00EDE0 0040EDE0 8F8B8050 */  lw          $t3, %got(sys_errlist)($gp)
/* 00EDE4 0040EDE4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EDE8 0040EDE8 8D290000 */  lw          $t1, 0x0($t1)
/* 00EDEC 0040EDEC 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EDF0 0040EDF0 8F85802C */  lw          $a1, %got(STR_10010764)($gp)
/* 00EDF4 0040EDF4 00095080 */  sll         $t2, $t1, 2
/* 00EDF8 0040EDF8 014B6821 */  addu        $t5, $t2, $t3
/* 00EDFC 0040EDFC 8DA70000 */  lw          $a3, 0x0($t5)
/* 00EE00 0040EE00 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EE04 0040EE04 24840020 */  addiu       $a0, $a0, 0x20
/* 00EE08 0040EE08 0320F809 */  jalr        $t9
/* 00EE0C 0040EE0C 24A50764 */   addiu      $a1, $a1, %lo(STR_10010764)
/* 00EE10 0040EE10 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EE14 0040EE14 100000FB */  b           .L0040F204
/* 00EE18 0040EE18 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EE1C:
/* 00EE1C 0040EE1C 8F9980E0 */  lw          $t9, %call16(fwrite)($gp)
/* 00EE20 0040EE20 8F848720 */  lw          $a0, %got(bootBuf)($gp)
/* 00EE24 0040EE24 8F868730 */  lw          $a2, %got(bootWordAlignedByteSize)($gp)
/* 00EE28 0040EE28 24050001 */  addiu       $a1, $zero, 0x1
/* 00EE2C 0040EE2C 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00EE30 0040EE30 8C840000 */  lw          $a0, 0x0($a0)
/* 00EE34 0040EE34 0320F809 */  jalr        $t9
/* 00EE38 0040EE38 8CC60000 */   lw         $a2, 0x0($a2)
/* 00EE3C 0040EE3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EE40 0040EE40 8F8E8730 */  lw          $t6, %got(bootWordAlignedByteSize)($gp)
/* 00EE44 0040EE44 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00EE48 0040EE48 104E000B */  beq         $v0, $t6, .L0040EE78
/* 00EE4C 0040EE4C 00000000 */   nop
/* 00EE50 0040EE50 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EE54 0040EE54 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EE58 0040EE58 8F85802C */  lw          $a1, %got(STR_10010784)($gp)
/* 00EE5C 0040EE5C 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EE60 0040EE60 24840020 */  addiu       $a0, $a0, 0x20
/* 00EE64 0040EE64 0320F809 */  jalr        $t9
/* 00EE68 0040EE68 24A50784 */   addiu      $a1, $a1, %lo(STR_10010784)
/* 00EE6C 0040EE6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EE70 0040EE70 100000E4 */  b           .L0040F204
/* 00EE74 0040EE74 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EE78:
/* 00EE78 0040EE78 8F988668 */  lw          $t8, %got(nofont)($gp)
/* 00EE7C 0040EE7C 8F180000 */  lw          $t8, 0x0($t8)
/* 00EE80 0040EE80 17000031 */  bnez        $t8, .L0040EF48
/* 00EE84 0040EE84 00000000 */   nop
/* 00EE88 0040EE88 8F858674 */  lw          $a1, %got(offset)($gp)
/* 00EE8C 0040EE8C 8F9980DC */  lw          $t9, %call16(fseek)($gp)
/* 00EE90 0040EE90 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EE94 0040EE94 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EE98 0040EE98 00003025 */  move        $a2, $zero
/* 00EE9C 0040EE9C 0320F809 */  jalr        $t9
/* 00EEA0 0040EEA0 24A50B70 */   addiu      $a1, $a1, 0xB70
/* 00EEA4 0040EEA4 10400011 */  beqz        $v0, .L0040EEEC
/* 00EEA8 0040EEA8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EEAC 0040EEAC 8F8F804C */  lw          $t7, %got(errno)($gp)
/* 00EEB0 0040EEB0 8F998050 */  lw          $t9, %got(sys_errlist)($gp)
/* 00EEB4 0040EEB4 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EEB8 0040EEB8 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00EEBC 0040EEBC 8F85802C */  lw          $a1, %got(STR_100107A0)($gp)
/* 00EEC0 0040EEC0 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EEC4 0040EEC4 000F6080 */  sll         $t4, $t7, 2
/* 00EEC8 0040EEC8 01994021 */  addu        $t0, $t4, $t9
/* 00EECC 0040EECC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EED0 0040EED0 8D070000 */  lw          $a3, 0x0($t0)
/* 00EED4 0040EED4 24840020 */  addiu       $a0, $a0, 0x20
/* 00EED8 0040EED8 0320F809 */  jalr        $t9
/* 00EEDC 0040EEDC 24A507A0 */   addiu      $a1, $a1, %lo(STR_100107A0)
/* 00EEE0 0040EEE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EEE4 0040EEE4 100000C7 */  b           .L0040F204
/* 00EEE8 0040EEE8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EEEC:
/* 00EEEC 0040EEEC 8F9980E0 */  lw          $t9, %call16(fwrite)($gp)
/* 00EEF0 0040EEF0 8F84872C */  lw          $a0, %got(fontBuf)($gp)
/* 00EEF4 0040EEF4 8F86873C */  lw          $a2, %got(fontdataWordAlignedByteSize)($gp)
/* 00EEF8 0040EEF8 24050001 */  addiu       $a1, $zero, 0x1
/* 00EEFC 0040EEFC 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00EF00 0040EF00 8C840000 */  lw          $a0, 0x0($a0)
/* 00EF04 0040EF04 0320F809 */  jalr        $t9
/* 00EF08 0040EF08 8CC60000 */   lw         $a2, 0x0($a2)
/* 00EF0C 0040EF0C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EF10 0040EF10 8F89873C */  lw          $t1, %got(fontdataWordAlignedByteSize)($gp)
/* 00EF14 0040EF14 8D290000 */  lw          $t1, 0x0($t1)
/* 00EF18 0040EF18 1049000B */  beq         $v0, $t1, .L0040EF48
/* 00EF1C 0040EF1C 00000000 */   nop
/* 00EF20 0040EF20 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EF24 0040EF24 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EF28 0040EF28 8F85802C */  lw          $a1, %got(STR_100107C0)($gp)
/* 00EF2C 0040EF2C 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EF30 0040EF30 24840020 */  addiu       $a0, $a0, 0x20
/* 00EF34 0040EF34 0320F809 */  jalr        $t9
/* 00EF38 0040EF38 24A507C0 */   addiu      $a1, $a1, %lo(STR_100107C0)
/* 00EF3C 0040EF3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EF40 0040EF40 100000B0 */  b           .L0040F204
/* 00EF44 0040EF44 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EF48:
/* 00EF48 0040EF48 8F858674 */  lw          $a1, %got(offset)($gp)
/* 00EF4C 0040EF4C 8F9980DC */  lw          $t9, %call16(fseek)($gp)
/* 00EF50 0040EF50 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EF54 0040EF54 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EF58 0040EF58 00003025 */  move        $a2, $zero
/* 00EF5C 0040EF5C 0320F809 */  jalr        $t9
/* 00EF60 0040EF60 24A51000 */   addiu      $a1, $a1, 0x1000
/* 00EF64 0040EF64 10400011 */  beqz        $v0, .L0040EFAC
/* 00EF68 0040EF68 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EF6C 0040EF6C 8F8A804C */  lw          $t2, %got(errno)($gp)
/* 00EF70 0040EF70 8F8D8050 */  lw          $t5, %got(sys_errlist)($gp)
/* 00EF74 0040EF74 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EF78 0040EF78 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00EF7C 0040EF7C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EF80 0040EF80 8F85802C */  lw          $a1, %got(STR_100107DC)($gp)
/* 00EF84 0040EF84 000A5880 */  sll         $t3, $t2, 2
/* 00EF88 0040EF88 016D7021 */  addu        $t6, $t3, $t5
/* 00EF8C 0040EF8C 8DC70000 */  lw          $a3, 0x0($t6)
/* 00EF90 0040EF90 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EF94 0040EF94 24840020 */  addiu       $a0, $a0, 0x20
/* 00EF98 0040EF98 0320F809 */  jalr        $t9
/* 00EF9C 0040EF9C 24A507DC */   addiu      $a1, $a1, %lo(STR_100107DC)
/* 00EFA0 0040EFA0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EFA4 0040EFA4 10000097 */  b           .L0040F204
/* 00EFA8 0040EFA8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EFAC:
/* 00EFAC 0040EFAC 8F9980E0 */  lw          $t9, %call16(fwrite)($gp)
/* 00EFB0 0040EFB0 8F84802C */  lw          $a0, %got(B_10016A60)($gp)
/* 00EFB4 0040EFB4 24050001 */  addiu       $a1, $zero, 0x1
/* 00EFB8 0040EFB8 8FA6004C */  lw          $a2, 0x4C($sp)
/* 00EFBC 0040EFBC 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00EFC0 0040EFC0 0320F809 */  jalr        $t9
/* 00EFC4 0040EFC4 8C846A60 */   lw         $a0, %lo(B_10016A60)($a0)
/* 00EFC8 0040EFC8 8FB8004C */  lw          $t8, 0x4C($sp)
/* 00EFCC 0040EFCC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EFD0 0040EFD0 1058000B */  beq         $v0, $t8, .L0040F000
/* 00EFD4 0040EFD4 00000000 */   nop
/* 00EFD8 0040EFD8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00EFDC 0040EFDC 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00EFE0 0040EFE0 8F85802C */  lw          $a1, %got(STR_100107FC)($gp)
/* 00EFE4 0040EFE4 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EFE8 0040EFE8 24840020 */  addiu       $a0, $a0, 0x20
/* 00EFEC 0040EFEC 0320F809 */  jalr        $t9
/* 00EFF0 0040EFF0 24A507FC */   addiu      $a1, $a1, %lo(STR_100107FC)
/* 00EFF4 0040EFF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EFF8 0040EFF8 10000082 */  b           .L0040F204
/* 00EFFC 0040EFFC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F000:
/* 00F000 0040F000 8F8C8674 */  lw          $t4, %got(offset)($gp)
/* 00F004 0040F004 8FAF004C */  lw          $t7, 0x4C($sp)
/* 00F008 0040F008 8D8C0000 */  lw          $t4, 0x0($t4)
/* 00F00C 0040F00C 01ECC821 */  addu        $t9, $t7, $t4
/* 00F010 0040F010 27281000 */  addiu       $t0, $t9, 0x1000
/* 00F014 0040F014 AFA80030 */  sw          $t0, 0x30($sp)
/* 00F018 0040F018 8F89866C */  lw          $t1, %got(finalromSize)($gp)
/* 00F01C 0040F01C 8F81866C */  lw          $at, %got(finalromSize)($gp)
/* 00F020 0040F020 8D290000 */  lw          $t1, 0x0($t1)
/* 00F024 0040F024 00095440 */  sll         $t2, $t1, 17
/* 00F028 0040F028 AC2A0000 */  sw          $t2, 0x0($at)
/* 00F02C 0040F02C 8F8B866C */  lw          $t3, %got(finalromSize)($gp)
/* 00F030 0040F030 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00F034 0040F034 1160006F */  beqz        $t3, .L0040F1F4
/* 00F038 0040F038 00000000 */   nop
/* 00F03C 0040F03C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00F040 0040F040 01AB082A */  slt         $at, $t5, $t3
/* 00F044 0040F044 1020006B */  beqz        $at, .L0040F1F4
/* 00F048 0040F048 00000000 */   nop
/* 00F04C 0040F04C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 00F050 0040F050 24042000 */  addiu       $a0, $zero, 0x2000
/* 00F054 0040F054 0320F809 */  jalr        $t9
/* 00F058 0040F058 00000000 */   nop
/* 00F05C 0040F05C AFA20028 */  sw          $v0, 0x28($sp)
/* 00F060 0040F060 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00F064 0040F064 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F068 0040F068 15C0000A */  bnez        $t6, .L0040F094
/* 00F06C 0040F06C 00000000 */   nop
/* 00F070 0040F070 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F074 0040F074 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F078 0040F078 8F85802C */  lw          $a1, %got(STR_10010818)($gp)
/* 00F07C 0040F07C 24840020 */  addiu       $a0, $a0, 0x20
/* 00F080 0040F080 0320F809 */  jalr        $t9
/* 00F084 0040F084 24A50818 */   addiu      $a1, $a1, %lo(STR_10010818)
/* 00F088 0040F088 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F08C 0040F08C 1000005D */  b           .L0040F204
/* 00F090 0040F090 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F094:
/* 00F094 0040F094 AFA0002C */  sw          $zero, 0x2C($sp)
.L0040F098:
/* 00F098 0040F098 8F988670 */  lw          $t8, %got(fillData)($gp)
/* 00F09C 0040F09C 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00F0A0 0040F0A0 8FAC002C */  lw          $t4, 0x2C($sp)
/* 00F0A4 0040F0A4 93180000 */  lbu         $t8, 0x0($t8)
/* 00F0A8 0040F0A8 01ECC821 */  addu        $t9, $t7, $t4
/* 00F0AC 0040F0AC A3380000 */  sb          $t8, 0x0($t9)
/* 00F0B0 0040F0B0 8FA8002C */  lw          $t0, 0x2C($sp)
/* 00F0B4 0040F0B4 25090001 */  addiu       $t1, $t0, 0x1
/* 00F0B8 0040F0B8 29212000 */  slti        $at, $t1, 0x2000
/* 00F0BC 0040F0BC 1420FFF6 */  bnez        $at, .L0040F098
/* 00F0C0 0040F0C0 AFA9002C */   sw         $t1, 0x2C($sp)
/* 00F0C4 0040F0C4 8F8B866C */  lw          $t3, %got(finalromSize)($gp)
/* 00F0C8 0040F0C8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00F0CC 0040F0CC 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00F0D0 0040F0D0 014B082A */  slt         $at, $t2, $t3
/* 00F0D4 0040F0D4 10200047 */  beqz        $at, .L0040F1F4
/* 00F0D8 0040F0D8 00000000 */   nop
.L0040F0DC:
/* 00F0DC 0040F0DC 8F8D866C */  lw          $t5, %got(finalromSize)($gp)
/* 00F0E0 0040F0E0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00F0E4 0040F0E4 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00F0E8 0040F0E8 01AE7823 */  subu        $t7, $t5, $t6
/* 00F0EC 0040F0EC 29E12001 */  slti        $at, $t7, 0x2001
/* 00F0F0 0040F0F0 14200019 */  bnez        $at, .L0040F158
/* 00F0F4 0040F0F4 00000000 */   nop
/* 00F0F8 0040F0F8 8F9980E0 */  lw          $t9, %call16(fwrite)($gp)
/* 00F0FC 0040F0FC 8FA40028 */  lw          $a0, 0x28($sp)
/* 00F100 0040F100 24050001 */  addiu       $a1, $zero, 0x1
/* 00F104 0040F104 24062000 */  addiu       $a2, $zero, 0x2000
/* 00F108 0040F108 0320F809 */  jalr        $t9
/* 00F10C 0040F10C 8FA7005C */   lw         $a3, 0x5C($sp)
/* 00F110 0040F110 24012000 */  addiu       $at, $zero, 0x2000
/* 00F114 0040F114 1041000C */  beq         $v0, $at, .L0040F148
/* 00F118 0040F118 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00F11C 0040F11C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F120 0040F120 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F124 0040F124 8F85802C */  lw          $a1, %got(STR_10010828)($gp)
/* 00F128 0040F128 8FA60060 */  lw          $a2, 0x60($sp)
/* 00F12C 0040F12C 8FA70030 */  lw          $a3, 0x30($sp)
/* 00F130 0040F130 24840020 */  addiu       $a0, $a0, 0x20
/* 00F134 0040F134 0320F809 */  jalr        $t9
/* 00F138 0040F138 24A50828 */   addiu      $a1, $a1, %lo(STR_10010828)
/* 00F13C 0040F13C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F140 0040F140 10000030 */  b           .L0040F204
/* 00F144 0040F144 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F148:
/* 00F148 0040F148 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00F14C 0040F14C 25982000 */  addiu       $t8, $t4, 0x2000
/* 00F150 0040F150 10000022 */  b           .L0040F1DC
/* 00F154 0040F154 AFB80030 */   sw         $t8, 0x30($sp)
.L0040F158:
/* 00F158 0040F158 8F99866C */  lw          $t9, %got(finalromSize)($gp)
/* 00F15C 0040F15C 8FA80030 */  lw          $t0, 0x30($sp)
/* 00F160 0040F160 8FA40028 */  lw          $a0, 0x28($sp)
/* 00F164 0040F164 8F390000 */  lw          $t9, 0x0($t9)
/* 00F168 0040F168 24050001 */  addiu       $a1, $zero, 0x1
/* 00F16C 0040F16C 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00F170 0040F170 03283023 */  subu        $a2, $t9, $t0
/* 00F174 0040F174 8F9980E0 */  lw          $t9, %call16(fwrite)($gp)
/* 00F178 0040F178 0320F809 */  jalr        $t9
/* 00F17C 0040F17C 00000000 */   nop
/* 00F180 0040F180 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F184 0040F184 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00F188 0040F188 8F89866C */  lw          $t1, %got(finalromSize)($gp)
/* 00F18C 0040F18C 8D290000 */  lw          $t1, 0x0($t1)
/* 00F190 0040F190 012A5823 */  subu        $t3, $t1, $t2
/* 00F194 0040F194 104B000B */  beq         $v0, $t3, .L0040F1C4
/* 00F198 0040F198 00000000 */   nop
/* 00F19C 0040F19C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F1A0 0040F1A0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F1A4 0040F1A4 8F85802C */  lw          $a1, %got(STR_10010848)($gp)
/* 00F1A8 0040F1A8 8FA60060 */  lw          $a2, 0x60($sp)
/* 00F1AC 0040F1AC 24840020 */  addiu       $a0, $a0, 0x20
/* 00F1B0 0040F1B0 0320F809 */  jalr        $t9
/* 00F1B4 0040F1B4 24A50848 */   addiu      $a1, $a1, %lo(STR_10010848)
/* 00F1B8 0040F1B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F1BC 0040F1BC 10000011 */  b           .L0040F204
/* 00F1C0 0040F1C0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F1C4:
/* 00F1C4 0040F1C4 8F8D866C */  lw          $t5, %got(finalromSize)($gp)
/* 00F1C8 0040F1C8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00F1CC 0040F1CC 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00F1D0 0040F1D0 01AE7823 */  subu        $t7, $t5, $t6
/* 00F1D4 0040F1D4 01CF6021 */  addu        $t4, $t6, $t7
/* 00F1D8 0040F1D8 AFAC0030 */  sw          $t4, 0x30($sp)
.L0040F1DC:
/* 00F1DC 0040F1DC 8F99866C */  lw          $t9, %got(finalromSize)($gp)
/* 00F1E0 0040F1E0 8FB80030 */  lw          $t8, 0x30($sp)
/* 00F1E4 0040F1E4 8F390000 */  lw          $t9, 0x0($t9)
/* 00F1E8 0040F1E8 0319082A */  slt         $at, $t8, $t9
/* 00F1EC 0040F1EC 1420FFBB */  bnez        $at, .L0040F0DC
/* 00F1F0 0040F1F0 00000000 */   nop
.L0040F1F4:
/* 00F1F4 0040F1F4 10000003 */  b           .L0040F204
/* 00F1F8 0040F1F8 00001025 */   move       $v0, $zero
/* 00F1FC 0040F1FC 10000001 */  b           .L0040F204
/* 00F200 0040F200 00000000 */   nop
.L0040F204:
/* 00F204 0040F204 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00F208 0040F208 27BD0060 */  addiu       $sp, $sp, 0x60
/* 00F20C 0040F20C 03E00008 */  jr          $ra
/* 00F210 0040F210 00000000 */   nop
