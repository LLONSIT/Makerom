.section .rodata
glabel STR_10010900
/* 040900 10010900 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10010910
/* 040910 10010910 */ .asciz ".%s.text"
                      .balign 4

glabel STR_1001091C
/* 04091C 1001091C */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10010964
/* 040964 10010964 */ .asciz "makerom:   shdr = %d, textSize = %d\n"
                      .balign 4

glabel STR_1001098C
/* 04098C 1001098C */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_100109B4
/* 0409B4 100109B4 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_100109DC
/* 0409DC 100109DC */ .asciz ".%s.data"
                      .balign 4

glabel STR_100109E8
/* 0409E8 100109E8 */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10010A30
/* 040A30 10010A30 */ .asciz "large data failed\n"
                      .balign 4

glabel STR_10010A44
/* 040A44 10010A44 */ .asciz "%s, file large=%x, our dataSize=%x\n"
                      .balign 4

glabel STR_10010A68
/* 040A68 10010A68 */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10010A90
/* 040A90 10010A90 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_10010AB8
/* 040AB8 10010AB8 */ .asciz ".%s.sdata"
                      .balign 4

glabel STR_10010AC4
/* 040AC4 10010AC4 */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10010B0C
/* 040B0C 10010B0C */ .asciz "small data failed\n"
                      .balign 4

glabel STR_10010B20
/* 040B20 10010B20 */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10010B48
/* 040B48 10010B48 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4


.section .text
glabel func_0040F758 # 29
# _gp_disp: 0xFC0E5E8
.set noreorder; .cpload $t9; # .set reorder
/* 00F764 0040F764 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00F768 0040F768 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00F76C 0040F76C AFBC0020 */  sw          $gp, 0x20($sp)
/* 00F770 0040F770 AFA40038 */  sw          $a0, 0x38($sp)
/* 00F774 0040F774 AFB0001C */  sw          $s0, 0x1C($sp)
/* 00F778 0040F778 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 00F77C 0040F77C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00F780 0040F780 0320F809 */  jalr        $t9
/* 00F784 0040F784 8DC40004 */   lw         $a0, 0x4($t6)
/* 00F788 0040F788 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F78C 0040F78C 00408025 */  move        $s0, $v0
/* 00F790 0040F790 26040009 */  addiu       $a0, $s0, 0x9
/* 00F794 0040F794 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 00F798 0040F798 0320F809 */  jalr        $t9
/* 00F79C 0040F79C 00000000 */   nop
/* 00F7A0 0040F7A0 AFA20034 */  sw          $v0, 0x34($sp)
/* 00F7A4 0040F7A4 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00F7A8 0040F7A8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F7AC 0040F7AC 15E0000A */  bnez        $t7, .L0040F7D8
/* 00F7B0 0040F7B0 00000000 */   nop
/* 00F7B4 0040F7B4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F7B8 0040F7B8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F7BC 0040F7BC 8F85802C */  lw          $a1, %got(STR_10010900)($gp)
/* 00F7C0 0040F7C0 24840020 */  addiu       $a0, $a0, 0x20
/* 00F7C4 0040F7C4 0320F809 */  jalr        $t9
/* 00F7C8 0040F7C8 24A50900 */   addiu      $a1, $a1, %lo(STR_10010900)
/* 00F7CC 0040F7CC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F7D0 0040F7D0 1000017E */  b           .L0040FDCC
/* 00F7D4 0040F7D4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F7D8:
/* 00F7D8 0040F7D8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00F7DC 0040F7DC 8F85802C */  lw          $a1, %got(STR_10010910)($gp)
/* 00F7E0 0040F7E0 8FB80038 */  lw          $t8, 0x38($sp)
/* 00F7E4 0040F7E4 8FA40034 */  lw          $a0, 0x34($sp)
/* 00F7E8 0040F7E8 24A50910 */  addiu       $a1, $a1, %lo(STR_10010910)
/* 00F7EC 0040F7EC 0320F809 */  jalr        $t9
/* 00F7F0 0040F7F0 8F060004 */   lw         $a2, 0x4($t8)
/* 00F7F4 0040F7F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F7F8 0040F7F8 8FB90038 */  lw          $t9, 0x38($sp)
/* 00F7FC 0040F7FC 8FA50034 */  lw          $a1, 0x34($sp)
/* 00F800 0040F800 8F24000C */  lw          $a0, 0xC($t9)
/* 00F804 0040F804 8F998018 */  lw          $t9, %got(func_0040F5C0)($gp)
/* 00F808 0040F808 2739F5C0 */  addiu       $t9, $t9, %lo(func_0040F5C0)
/* 00F80C 0040F80C 0320F809 */  jalr        $t9
/* 00F810 0040F810 00000000 */   nop
/* 00F814 0040F814 AFA20030 */  sw          $v0, 0x30($sp)
/* 00F818 0040F818 8FA80030 */  lw          $t0, 0x30($sp)
/* 00F81C 0040F81C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F820 0040F820 15000003 */  bnez        $t0, .L0040F830
/* 00F824 0040F824 00000000 */   nop
/* 00F828 0040F828 10000168 */  b           .L0040FDCC
/* 00F82C 0040F82C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F830:
/* 00F830 0040F830 8FA90030 */  lw          $t1, 0x30($sp)
/* 00F834 0040F834 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00F838 0040F838 8D2A0014 */  lw          $t2, 0x14($t1)
/* 00F83C 0040F83C 8D6C002C */  lw          $t4, 0x2C($t3)
/* 00F840 0040F840 114C001E */  beq         $t2, $t4, .L0040F8BC
/* 00F844 0040F844 00000000 */   nop
/* 00F848 0040F848 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00F84C 0040F84C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F850 0040F850 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F854 0040F854 8F85802C */  lw          $a1, %got(STR_1001091C)($gp)
/* 00F858 0040F858 8DAE000C */  lw          $t6, 0xC($t5)
/* 00F85C 0040F85C 8FA70034 */  lw          $a3, 0x34($sp)
/* 00F860 0040F860 24840020 */  addiu       $a0, $a0, 0x20
/* 00F864 0040F864 24A5091C */  addiu       $a1, $a1, %lo(STR_1001091C)
/* 00F868 0040F868 0320F809 */  jalr        $t9
/* 00F86C 0040F86C 8DC60004 */   lw         $a2, 0x4($t6)
/* 00F870 0040F870 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F874 0040F874 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F878 0040F878 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F87C 0040F87C 8F85802C */  lw          $a1, %got(STR_10010964)($gp)
/* 00F880 0040F880 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00F884 0040F884 8FB80038 */  lw          $t8, 0x38($sp)
/* 00F888 0040F888 24840020 */  addiu       $a0, $a0, 0x20
/* 00F88C 0040F88C 24A50964 */  addiu       $a1, $a1, %lo(STR_10010964)
/* 00F890 0040F890 8DE60014 */  lw          $a2, 0x14($t7)
/* 00F894 0040F894 0320F809 */  jalr        $t9
/* 00F898 0040F898 8F07002C */   lw         $a3, 0x2C($t8)
/* 00F89C 0040F89C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F8A0 0040F8A0 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00F8A4 0040F8A4 8FA40034 */  lw          $a0, 0x34($sp)
/* 00F8A8 0040F8A8 0320F809 */  jalr        $t9
/* 00F8AC 0040F8AC 00000000 */   nop
/* 00F8B0 0040F8B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F8B4 0040F8B4 10000145 */  b           .L0040FDCC
/* 00F8B8 0040F8B8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F8BC:
/* 00F8BC 0040F8BC 8FB90038 */  lw          $t9, 0x38($sp)
/* 00F8C0 0040F8C0 8FA90030 */  lw          $t1, 0x30($sp)
/* 00F8C4 0040F8C4 00003025 */  move        $a2, $zero
/* 00F8C8 0040F8C8 8F28000C */  lw          $t0, 0xC($t9)
/* 00F8CC 0040F8CC 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 00F8D0 0040F8D0 8D250010 */  lw          $a1, 0x10($t1)
/* 00F8D4 0040F8D4 8D040114 */  lw          $a0, 0x114($t0)
/* 00F8D8 0040F8D8 0320F809 */  jalr        $t9
/* 00F8DC 0040F8DC 00000000 */   nop
/* 00F8E0 0040F8E0 2401FFFF */  addiu       $at, $zero, -0x1
/* 00F8E4 0040F8E4 14410013 */  bne         $v0, $at, .L0040F934
/* 00F8E8 0040F8E8 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00F8EC 0040F8EC 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00F8F0 0040F8F0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F8F4 0040F8F4 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F8F8 0040F8F8 8F85802C */  lw          $a1, %got(STR_1001098C)($gp)
/* 00F8FC 0040F8FC 8D6A000C */  lw          $t2, 0xC($t3)
/* 00F900 0040F900 8FA70034 */  lw          $a3, 0x34($sp)
/* 00F904 0040F904 24840020 */  addiu       $a0, $a0, 0x20
/* 00F908 0040F908 24A5098C */  addiu       $a1, $a1, %lo(STR_1001098C)
/* 00F90C 0040F90C 0320F809 */  jalr        $t9
/* 00F910 0040F910 8D460004 */   lw         $a2, 0x4($t2)
/* 00F914 0040F914 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F918 0040F918 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00F91C 0040F91C 8FA40034 */  lw          $a0, 0x34($sp)
/* 00F920 0040F920 0320F809 */  jalr        $t9
/* 00F924 0040F924 00000000 */   nop
/* 00F928 0040F928 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F92C 0040F92C 10000127 */  b           .L0040FDCC
/* 00F930 0040F930 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F934:
/* 00F934 0040F934 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00F938 0040F938 8F8F802C */  lw          $t7, %got(B_10016A60)($gp)
/* 00F93C 0040F93C 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 00F940 0040F940 8FB80030 */  lw          $t8, 0x30($sp)
/* 00F944 0040F944 8D8D000C */  lw          $t5, 0xC($t4)
/* 00F948 0040F948 8D8E0024 */  lw          $t6, 0x24($t4)
/* 00F94C 0040F94C 8DEF6A60 */  lw          $t7, %lo(B_10016A60)($t7)
/* 00F950 0040F950 8F060014 */  lw          $a2, 0x14($t8)
/* 00F954 0040F954 8DA40114 */  lw          $a0, 0x114($t5)
/* 00F958 0040F958 0320F809 */  jalr        $t9
/* 00F95C 0040F95C 01CF2821 */   addu       $a1, $t6, $t7
/* 00F960 0040F960 8FB90030 */  lw          $t9, 0x30($sp)
/* 00F964 0040F964 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F968 0040F968 8F280014 */  lw          $t0, 0x14($t9)
/* 00F96C 0040F96C 10480013 */  beq         $v0, $t0, .L0040F9BC
/* 00F970 0040F970 00000000 */   nop
/* 00F974 0040F974 8FA90038 */  lw          $t1, 0x38($sp)
/* 00F978 0040F978 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F97C 0040F97C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F980 0040F980 8F85802C */  lw          $a1, %got(STR_100109B4)($gp)
/* 00F984 0040F984 8D2B000C */  lw          $t3, 0xC($t1)
/* 00F988 0040F988 8FA70034 */  lw          $a3, 0x34($sp)
/* 00F98C 0040F98C 24840020 */  addiu       $a0, $a0, 0x20
/* 00F990 0040F990 24A509B4 */  addiu       $a1, $a1, %lo(STR_100109B4)
/* 00F994 0040F994 0320F809 */  jalr        $t9
/* 00F998 0040F998 8D660004 */   lw         $a2, 0x4($t3)
/* 00F99C 0040F99C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F9A0 0040F9A0 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00F9A4 0040F9A4 8FA40034 */  lw          $a0, 0x34($sp)
/* 00F9A8 0040F9A8 0320F809 */  jalr        $t9
/* 00F9AC 0040F9AC 00000000 */   nop
/* 00F9B0 0040F9B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F9B4 0040F9B4 10000105 */  b           .L0040FDCC
/* 00F9B8 0040F9B8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F9BC:
/* 00F9BC 0040F9BC 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00F9C0 0040F9C0 8F85802C */  lw          $a1, %got(STR_100109DC)($gp)
/* 00F9C4 0040F9C4 8FAA0038 */  lw          $t2, 0x38($sp)
/* 00F9C8 0040F9C8 8FA40034 */  lw          $a0, 0x34($sp)
/* 00F9CC 0040F9CC 24A509DC */  addiu       $a1, $a1, %lo(STR_100109DC)
/* 00F9D0 0040F9D0 0320F809 */  jalr        $t9
/* 00F9D4 0040F9D4 8D460004 */   lw         $a2, 0x4($t2)
/* 00F9D8 0040F9D8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F9DC 0040F9DC 8F998018 */  lw          $t9, %got(func_0040F5C0)($gp)
/* 00F9E0 0040F9E0 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00F9E4 0040F9E4 8FA50034 */  lw          $a1, 0x34($sp)
/* 00F9E8 0040F9E8 2739F5C0 */  addiu       $t9, $t9, %lo(func_0040F5C0)
/* 00F9EC 0040F9EC 0320F809 */  jalr        $t9
/* 00F9F0 0040F9F0 8DA4000C */   lw         $a0, 0xC($t5)
/* 00F9F4 0040F9F4 AFA20030 */  sw          $v0, 0x30($sp)
/* 00F9F8 0040F9F8 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00F9FC 0040F9FC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FA00 0040FA00 15800003 */  bnez        $t4, .L0040FA10
/* 00FA04 0040FA04 00000000 */   nop
/* 00FA08 0040FA08 100000F0 */  b           .L0040FDCC
/* 00FA0C 0040FA0C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FA10:
/* 00FA10 0040FA10 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00FA14 0040FA14 8FB80038 */  lw          $t8, 0x38($sp)
/* 00FA18 0040FA18 8DCF0014 */  lw          $t7, 0x14($t6)
/* 00FA1C 0040FA1C 8F190030 */  lw          $t9, 0x30($t8)
/* 00FA20 0040FA20 11F90027 */  beq         $t7, $t9, .L0040FAC0
/* 00FA24 0040FA24 00000000 */   nop
/* 00FA28 0040FA28 8FA80038 */  lw          $t0, 0x38($sp)
/* 00FA2C 0040FA2C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FA30 0040FA30 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FA34 0040FA34 8F85802C */  lw          $a1, %got(STR_100109E8)($gp)
/* 00FA38 0040FA38 8D09000C */  lw          $t1, 0xC($t0)
/* 00FA3C 0040FA3C 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FA40 0040FA40 24840020 */  addiu       $a0, $a0, 0x20
/* 00FA44 0040FA44 24A509E8 */  addiu       $a1, $a1, %lo(STR_100109E8)
/* 00FA48 0040FA48 0320F809 */  jalr        $t9
/* 00FA4C 0040FA4C 8D260004 */   lw         $a2, 0x4($t1)
/* 00FA50 0040FA50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FA54 0040FA54 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FA58 0040FA58 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FA5C 0040FA5C 8F85802C */  lw          $a1, %got(STR_10010A30)($gp)
/* 00FA60 0040FA60 24840020 */  addiu       $a0, $a0, 0x20
/* 00FA64 0040FA64 0320F809 */  jalr        $t9
/* 00FA68 0040FA68 24A50A30 */   addiu      $a1, $a1, %lo(STR_10010A30)
/* 00FA6C 0040FA6C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FA70 0040FA70 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00FA74 0040FA74 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00FA78 0040FA78 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FA7C 0040FA7C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FA80 0040FA80 8F85802C */  lw          $a1, %got(STR_10010A44)($gp)
/* 00FA84 0040FA84 8D6D0030 */  lw          $t5, 0x30($t3)
/* 00FA88 0040FA88 8D660004 */  lw          $a2, 0x4($t3)
/* 00FA8C 0040FA8C 8D470014 */  lw          $a3, 0x14($t2)
/* 00FA90 0040FA90 24840020 */  addiu       $a0, $a0, 0x20
/* 00FA94 0040FA94 24A50A44 */  addiu       $a1, $a1, %lo(STR_10010A44)
/* 00FA98 0040FA98 0320F809 */  jalr        $t9
/* 00FA9C 0040FA9C AFAD0010 */   sw         $t5, 0x10($sp)
/* 00FAA0 0040FAA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FAA4 0040FAA4 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00FAA8 0040FAA8 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FAAC 0040FAAC 0320F809 */  jalr        $t9
/* 00FAB0 0040FAB0 00000000 */   nop
/* 00FAB4 0040FAB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FAB8 0040FAB8 100000C4 */  b           .L0040FDCC
/* 00FABC 0040FABC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FAC0:
/* 00FAC0 0040FAC0 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00FAC4 0040FAC4 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 00FAC8 0040FAC8 8FB80030 */  lw          $t8, 0x30($sp)
/* 00FACC 0040FACC 8D8E000C */  lw          $t6, 0xC($t4)
/* 00FAD0 0040FAD0 00003025 */  move        $a2, $zero
/* 00FAD4 0040FAD4 8F050010 */  lw          $a1, 0x10($t8)
/* 00FAD8 0040FAD8 0320F809 */  jalr        $t9
/* 00FADC 0040FADC 8DC40114 */   lw         $a0, 0x114($t6)
/* 00FAE0 0040FAE0 2401FFFF */  addiu       $at, $zero, -0x1
/* 00FAE4 0040FAE4 14410014 */  bne         $v0, $at, .L0040FB38
/* 00FAE8 0040FAE8 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00FAEC 0040FAEC 8FAF0038 */  lw          $t7, 0x38($sp)
/* 00FAF0 0040FAF0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FAF4 0040FAF4 8F85802C */  lw          $a1, %got(STR_10010A68)($gp)
/* 00FAF8 0040FAF8 8DF9000C */  lw          $t9, 0xC($t7)
/* 00FAFC 0040FAFC 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FB00 0040FB00 24840020 */  addiu       $a0, $a0, 0x20
/* 00FB04 0040FB04 8F260004 */  lw          $a2, 0x4($t9)
/* 00FB08 0040FB08 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FB0C 0040FB0C 24A50A68 */  addiu       $a1, $a1, %lo(STR_10010A68)
/* 00FB10 0040FB10 0320F809 */  jalr        $t9
/* 00FB14 0040FB14 00000000 */   nop
/* 00FB18 0040FB18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FB1C 0040FB1C 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00FB20 0040FB20 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FB24 0040FB24 0320F809 */  jalr        $t9
/* 00FB28 0040FB28 00000000 */   nop
/* 00FB2C 0040FB2C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FB30 0040FB30 100000A6 */  b           .L0040FDCC
/* 00FB34 0040FB34 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FB38:
/* 00FB38 0040FB38 8FA80038 */  lw          $t0, 0x38($sp)
/* 00FB3C 0040FB3C 8F8B802C */  lw          $t3, %got(B_10016A60)($gp)
/* 00FB40 0040FB40 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 00FB44 0040FB44 8D0A0024 */  lw          $t2, 0x24($t0)
/* 00FB48 0040FB48 8D6B6A60 */  lw          $t3, %lo(B_10016A60)($t3)
/* 00FB4C 0040FB4C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00FB50 0040FB50 8D09000C */  lw          $t1, 0xC($t0)
/* 00FB54 0040FB54 8D0C002C */  lw          $t4, 0x2C($t0)
/* 00FB58 0040FB58 014B6821 */  addu        $t5, $t2, $t3
/* 00FB5C 0040FB5C 8DC60014 */  lw          $a2, 0x14($t6)
/* 00FB60 0040FB60 8D240114 */  lw          $a0, 0x114($t1)
/* 00FB64 0040FB64 0320F809 */  jalr        $t9
/* 00FB68 0040FB68 01AC2821 */   addu       $a1, $t5, $t4
/* 00FB6C 0040FB6C 8FB80030 */  lw          $t8, 0x30($sp)
/* 00FB70 0040FB70 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FB74 0040FB74 8F0F0014 */  lw          $t7, 0x14($t8)
/* 00FB78 0040FB78 104F0013 */  beq         $v0, $t7, .L0040FBC8
/* 00FB7C 0040FB7C 00000000 */   nop
/* 00FB80 0040FB80 8FB90038 */  lw          $t9, 0x38($sp)
/* 00FB84 0040FB84 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FB88 0040FB88 8F85802C */  lw          $a1, %got(STR_10010A90)($gp)
/* 00FB8C 0040FB8C 8F29000C */  lw          $t1, 0xC($t9)
/* 00FB90 0040FB90 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FB94 0040FB94 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FB98 0040FB98 24840020 */  addiu       $a0, $a0, 0x20
/* 00FB9C 0040FB9C 24A50A90 */  addiu       $a1, $a1, %lo(STR_10010A90)
/* 00FBA0 0040FBA0 0320F809 */  jalr        $t9
/* 00FBA4 0040FBA4 8D260004 */   lw         $a2, 0x4($t1)
/* 00FBA8 0040FBA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FBAC 0040FBAC 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00FBB0 0040FBB0 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FBB4 0040FBB4 0320F809 */  jalr        $t9
/* 00FBB8 0040FBB8 00000000 */   nop
/* 00FBBC 0040FBBC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FBC0 0040FBC0 10000082 */  b           .L0040FDCC
/* 00FBC4 0040FBC4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FBC8:
/* 00FBC8 0040FBC8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00FBCC 0040FBCC 8F85802C */  lw          $a1, %got(STR_10010AB8)($gp)
/* 00FBD0 0040FBD0 8FAA0038 */  lw          $t2, 0x38($sp)
/* 00FBD4 0040FBD4 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FBD8 0040FBD8 24A50AB8 */  addiu       $a1, $a1, %lo(STR_10010AB8)
/* 00FBDC 0040FBDC 0320F809 */  jalr        $t9
/* 00FBE0 0040FBE0 8D460004 */   lw         $a2, 0x4($t2)
/* 00FBE4 0040FBE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FBE8 0040FBE8 8F998018 */  lw          $t9, %got(func_0040F5C0)($gp)
/* 00FBEC 0040FBEC 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00FBF0 0040FBF0 8FA50034 */  lw          $a1, 0x34($sp)
/* 00FBF4 0040FBF4 2739F5C0 */  addiu       $t9, $t9, %lo(func_0040F5C0)
/* 00FBF8 0040FBF8 0320F809 */  jalr        $t9
/* 00FBFC 0040FBFC 8D64000C */   lw         $a0, 0xC($t3)
/* 00FC00 0040FC00 AFA20030 */  sw          $v0, 0x30($sp)
/* 00FC04 0040FC04 8FA80030 */  lw          $t0, 0x30($sp)
/* 00FC08 0040FC08 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FC0C 0040FC0C 15000003 */  bnez        $t0, .L0040FC1C
/* 00FC10 0040FC10 00000000 */   nop
/* 00FC14 0040FC14 1000006D */  b           .L0040FDCC
/* 00FC18 0040FC18 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FC1C:
/* 00FC1C 0040FC1C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00FC20 0040FC20 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00FC24 0040FC24 8DAC0014 */  lw          $t4, 0x14($t5)
/* 00FC28 0040FC28 8DD80034 */  lw          $t8, 0x34($t6)
/* 00FC2C 0040FC2C 1198001B */  beq         $t4, $t8, .L0040FC9C
/* 00FC30 0040FC30 00000000 */   nop
/* 00FC34 0040FC34 8FAF0038 */  lw          $t7, 0x38($sp)
/* 00FC38 0040FC38 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FC3C 0040FC3C 8F85802C */  lw          $a1, %got(STR_10010AC4)($gp)
/* 00FC40 0040FC40 8DF9000C */  lw          $t9, 0xC($t7)
/* 00FC44 0040FC44 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FC48 0040FC48 24840020 */  addiu       $a0, $a0, 0x20
/* 00FC4C 0040FC4C 8F260004 */  lw          $a2, 0x4($t9)
/* 00FC50 0040FC50 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FC54 0040FC54 24A50AC4 */  addiu       $a1, $a1, %lo(STR_10010AC4)
/* 00FC58 0040FC58 0320F809 */  jalr        $t9
/* 00FC5C 0040FC5C 00000000 */   nop
/* 00FC60 0040FC60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FC64 0040FC64 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FC68 0040FC68 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FC6C 0040FC6C 8F85802C */  lw          $a1, %got(STR_10010B0C)($gp)
/* 00FC70 0040FC70 24840020 */  addiu       $a0, $a0, 0x20
/* 00FC74 0040FC74 0320F809 */  jalr        $t9
/* 00FC78 0040FC78 24A50B0C */   addiu      $a1, $a1, %lo(STR_10010B0C)
/* 00FC7C 0040FC7C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FC80 0040FC80 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00FC84 0040FC84 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FC88 0040FC88 0320F809 */  jalr        $t9
/* 00FC8C 0040FC8C 00000000 */   nop
/* 00FC90 0040FC90 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FC94 0040FC94 1000004D */  b           .L0040FDCC
/* 00FC98 0040FC98 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FC9C:
/* 00FC9C 0040FC9C 8FA90038 */  lw          $t1, 0x38($sp)
/* 00FCA0 0040FCA0 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 00FCA4 0040FCA4 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00FCA8 0040FCA8 8D2A000C */  lw          $t2, 0xC($t1)
/* 00FCAC 0040FCAC 00003025 */  move        $a2, $zero
/* 00FCB0 0040FCB0 8D650010 */  lw          $a1, 0x10($t3)
/* 00FCB4 0040FCB4 0320F809 */  jalr        $t9
/* 00FCB8 0040FCB8 8D440114 */   lw         $a0, 0x114($t2)
/* 00FCBC 0040FCBC 2401FFFF */  addiu       $at, $zero, -0x1
/* 00FCC0 0040FCC0 14410013 */  bne         $v0, $at, .L0040FD10
/* 00FCC4 0040FCC4 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00FCC8 0040FCC8 8FA80038 */  lw          $t0, 0x38($sp)
/* 00FCCC 0040FCCC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FCD0 0040FCD0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FCD4 0040FCD4 8F85802C */  lw          $a1, %got(STR_10010B20)($gp)
/* 00FCD8 0040FCD8 8D0D000C */  lw          $t5, 0xC($t0)
/* 00FCDC 0040FCDC 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FCE0 0040FCE0 24840020 */  addiu       $a0, $a0, 0x20
/* 00FCE4 0040FCE4 24A50B20 */  addiu       $a1, $a1, %lo(STR_10010B20)
/* 00FCE8 0040FCE8 0320F809 */  jalr        $t9
/* 00FCEC 0040FCEC 8DA60004 */   lw         $a2, 0x4($t5)
/* 00FCF0 0040FCF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FCF4 0040FCF4 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00FCF8 0040FCF8 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FCFC 0040FCFC 0320F809 */  jalr        $t9
/* 00FD00 0040FD00 00000000 */   nop
/* 00FD04 0040FD04 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FD08 0040FD08 10000030 */  b           .L0040FDCC
/* 00FD0C 0040FD0C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FD10:
/* 00FD10 0040FD10 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00FD14 0040FD14 8F8F802C */  lw          $t7, %got(B_10016A60)($gp)
/* 00FD18 0040FD18 8FA80030 */  lw          $t0, 0x30($sp)
/* 00FD1C 0040FD1C 8DD80024 */  lw          $t8, 0x24($t6)
/* 00FD20 0040FD20 8DEF6A60 */  lw          $t7, %lo(B_10016A60)($t7)
/* 00FD24 0040FD24 8DC9002C */  lw          $t1, 0x2C($t6)
/* 00FD28 0040FD28 8DCC000C */  lw          $t4, 0xC($t6)
/* 00FD2C 0040FD2C 030FC821 */  addu        $t9, $t8, $t7
/* 00FD30 0040FD30 03295021 */  addu        $t2, $t9, $t1
/* 00FD34 0040FD34 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 00FD38 0040FD38 8DCB0030 */  lw          $t3, 0x30($t6)
/* 00FD3C 0040FD3C 8D060014 */  lw          $a2, 0x14($t0)
/* 00FD40 0040FD40 8D840114 */  lw          $a0, 0x114($t4)
/* 00FD44 0040FD44 0320F809 */  jalr        $t9
/* 00FD48 0040FD48 014B2821 */   addu       $a1, $t2, $t3
/* 00FD4C 0040FD4C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00FD50 0040FD50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FD54 0040FD54 8DAC0014 */  lw          $t4, 0x14($t5)
/* 00FD58 0040FD58 104C0013 */  beq         $v0, $t4, .L0040FDA8
/* 00FD5C 0040FD5C 00000000 */   nop
/* 00FD60 0040FD60 8FB80038 */  lw          $t8, 0x38($sp)
/* 00FD64 0040FD64 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FD68 0040FD68 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FD6C 0040FD6C 8F85802C */  lw          $a1, %got(STR_10010B48)($gp)
/* 00FD70 0040FD70 8F0F000C */  lw          $t7, 0xC($t8)
/* 00FD74 0040FD74 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FD78 0040FD78 24840020 */  addiu       $a0, $a0, 0x20
/* 00FD7C 0040FD7C 24A50B48 */  addiu       $a1, $a1, %lo(STR_10010B48)
/* 00FD80 0040FD80 0320F809 */  jalr        $t9
/* 00FD84 0040FD84 8DE60004 */   lw         $a2, 0x4($t7)
/* 00FD88 0040FD88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FD8C 0040FD8C 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00FD90 0040FD90 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FD94 0040FD94 0320F809 */  jalr        $t9
/* 00FD98 0040FD98 00000000 */   nop
/* 00FD9C 0040FD9C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FDA0 0040FDA0 1000000A */  b           .L0040FDCC
/* 00FDA4 0040FDA4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FDA8:
/* 00FDA8 0040FDA8 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00FDAC 0040FDAC 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FDB0 0040FDB0 0320F809 */  jalr        $t9
/* 00FDB4 0040FDB4 00000000 */   nop
/* 00FDB8 0040FDB8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FDBC 0040FDBC 10000003 */  b           .L0040FDCC
/* 00FDC0 0040FDC0 00001025 */   move       $v0, $zero
/* 00FDC4 0040FDC4 10000001 */  b           .L0040FDCC
/* 00FDC8 0040FDC8 00000000 */   nop
.L0040FDCC:
/* 00FDCC 0040FDCC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00FDD0 0040FDD0 8FB0001C */  lw          $s0, 0x1C($sp)
/* 00FDD4 0040FDD4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00FDD8 0040FDD8 03E00008 */  jr          $ra
/* 00FDDC 0040FDDC 00000000 */   nop
