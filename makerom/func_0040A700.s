.section .rodata
glabel STR_1000F33C
/* 03F33C 1000F33C */ .asciz "usage: makerom [-D<define>] [-I<dir>] -[U<define>]\n"
                      .balign 4

glabel STR_1000F370
/* 03F370 1000F370 */ .asciz "               [-c] [-n] [-d] [-g] [-e] [-m] [-q] [-v]\n"
                      .balign 4

glabel STR_1000F3A8
/* 03F3A8 1000F3A8 */ .asciz "               [-o] [-b bootfile] [-h headerfile]\n"
                      .balign 4

glabel STR_1000F3DC
/* 03F3DC 1000F3DC */ .asciz "               [-p pif2bootfile]\n"
                      .balign 4

glabel STR_1000F400
/* 03F400 1000F400 */ .asciz "               [-s romsize (Mbits)]\n"
                      .balign 4

glabel STR_1000F428
/* 03F428 1000F428 */ .asciz "               [-f filldata (0x00 - 0xff)]\n"
                      .balign 4

glabel STR_1000F454
/* 03F454 1000F454 */ .asciz "               [-C clockrate] \n"
                      .balign 4

glabel STR_1000F474
/* 03F474 1000F474 */ .asciz "               [-r romfile] specfile\n"
                      .balign 4


.section .text
glabel func_0040A700 # 3
# _gp_disp: 0xFC13640
.set noreorder; .cpload $t9; # .set reorder
/* 00A70C 0040A70C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00A710 0040A710 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00A714 0040A714 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00A718 0040A718 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A71C 0040A71C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A720 0040A720 8F85802C */  lw          $a1, %got(STR_1000F33C)($gp)
/* 00A724 0040A724 24840020 */  addiu       $a0, $a0, 0x20
/* 00A728 0040A728 0320F809 */  jalr        $t9
/* 00A72C 0040A72C 24A5F33C */   addiu      $a1, $a1, %lo(STR_1000F33C)
/* 00A730 0040A730 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A734 0040A734 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A738 0040A738 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A73C 0040A73C 8F85802C */  lw          $a1, %got(STR_1000F370)($gp)
/* 00A740 0040A740 24840020 */  addiu       $a0, $a0, 0x20
/* 00A744 0040A744 0320F809 */  jalr        $t9
/* 00A748 0040A748 24A5F370 */   addiu      $a1, $a1, %lo(STR_1000F370)
/* 00A74C 0040A74C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A750 0040A750 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A754 0040A754 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A758 0040A758 8F85802C */  lw          $a1, %got(STR_1000F3A8)($gp)
/* 00A75C 0040A75C 24840020 */  addiu       $a0, $a0, 0x20
/* 00A760 0040A760 0320F809 */  jalr        $t9
/* 00A764 0040A764 24A5F3A8 */   addiu      $a1, $a1, %lo(STR_1000F3A8)
/* 00A768 0040A768 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A76C 0040A76C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A770 0040A770 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A774 0040A774 8F85802C */  lw          $a1, %got(STR_1000F3DC)($gp)
/* 00A778 0040A778 24840020 */  addiu       $a0, $a0, 0x20
/* 00A77C 0040A77C 0320F809 */  jalr        $t9
/* 00A780 0040A780 24A5F3DC */   addiu      $a1, $a1, %lo(STR_1000F3DC)
/* 00A784 0040A784 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A788 0040A788 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A78C 0040A78C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A790 0040A790 8F85802C */  lw          $a1, %got(STR_1000F400)($gp)
/* 00A794 0040A794 24840020 */  addiu       $a0, $a0, 0x20
/* 00A798 0040A798 0320F809 */  jalr        $t9
/* 00A79C 0040A79C 24A5F400 */   addiu      $a1, $a1, %lo(STR_1000F400)
/* 00A7A0 0040A7A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A7A4 0040A7A4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A7A8 0040A7A8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A7AC 0040A7AC 8F85802C */  lw          $a1, %got(STR_1000F428)($gp)
/* 00A7B0 0040A7B0 24840020 */  addiu       $a0, $a0, 0x20
/* 00A7B4 0040A7B4 0320F809 */  jalr        $t9
/* 00A7B8 0040A7B8 24A5F428 */   addiu      $a1, $a1, %lo(STR_1000F428)
/* 00A7BC 0040A7BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A7C0 0040A7C0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A7C4 0040A7C4 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A7C8 0040A7C8 8F85802C */  lw          $a1, %got(STR_1000F454)($gp)
/* 00A7CC 0040A7CC 24840020 */  addiu       $a0, $a0, 0x20
/* 00A7D0 0040A7D0 0320F809 */  jalr        $t9
/* 00A7D4 0040A7D4 24A5F454 */   addiu      $a1, $a1, %lo(STR_1000F454)
/* 00A7D8 0040A7D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A7DC 0040A7DC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00A7E0 0040A7E0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00A7E4 0040A7E4 8F85802C */  lw          $a1, %got(STR_1000F474)($gp)
/* 00A7E8 0040A7E8 24840020 */  addiu       $a0, $a0, 0x20
/* 00A7EC 0040A7EC 0320F809 */  jalr        $t9
/* 00A7F0 0040A7F0 24A5F474 */   addiu      $a1, $a1, %lo(STR_1000F474)
/* 00A7F4 0040A7F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A7F8 0040A7F8 10000001 */  b           .L0040A800
/* 00A7FC 0040A7FC 00000000 */   nop
.L0040A800:
/* 00A800 0040A800 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00A804 0040A804 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00A808 0040A808 03E00008 */  jr          $ra
/* 00A80C 0040A80C 00000000 */   nop
