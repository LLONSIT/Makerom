.section .rodata
glabel STR_10011020
/* 041020 10011020 */ .asciz "makerom: error at line %d: "
                      .balign 4

glabel STR_1001103C
/* 04103C 1001103C */ .asciz "\n"
                      .balign 4


.section .text
glabel func_004127B4 # 44
# _gp_disp: 0xFC0B58C
.set noreorder; .cpload $t9; # .set reorder
/* 0127C0 004127C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0127C4 004127C4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0127C8 004127C8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0127CC 004127CC AFA40028 */  sw          $a0, 0x28($sp)
/* 0127D0 004127D0 AFA5002C */  sw          $a1, 0x2C($sp)
/* 0127D4 004127D4 AFA60030 */  sw          $a2, 0x30($sp)
/* 0127D8 004127D8 AFA70034 */  sw          $a3, 0x34($sp)
/* 0127DC 004127DC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 0127E0 004127E0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 0127E4 004127E4 8F85802C */  lw          $a1, %got(STR_10011020)($gp)
/* 0127E8 004127E8 8F868690 */  lw          $a2, %got(lineNumber)($gp)
/* 0127EC 004127EC 24840020 */  addiu       $a0, $a0, 0x20
/* 0127F0 004127F0 24A51020 */  addiu       $a1, $a1, %lo(STR_10011020)
/* 0127F4 004127F4 0320F809 */  jalr        $t9
/* 0127F8 004127F8 8CC60000 */   lw         $a2, 0x0($a2)
/* 0127FC 004127FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 012800 00412800 27AE0028 */  addiu       $t6, $sp, 0x28
/* 012804 00412804 25CF0004 */  addiu       $t7, $t6, 0x4
/* 012808 00412808 AFAF0024 */  sw          $t7, 0x24($sp)
/* 01280C 0041280C 8F998100 */  lw          $t9, %call16(vfprintf)($gp)
/* 012810 00412810 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 012814 00412814 8FA50028 */  lw          $a1, 0x28($sp)
/* 012818 00412818 8FA60024 */  lw          $a2, 0x24($sp)
/* 01281C 0041281C 0320F809 */  jalr        $t9
/* 012820 00412820 24840020 */   addiu      $a0, $a0, 0x20
/* 012824 00412824 8FBC0018 */  lw          $gp, 0x18($sp)
/* 012828 00412828 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 01282C 0041282C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 012830 00412830 8F85802C */  lw          $a1, %got(STR_1001103C)($gp)
/* 012834 00412834 24840020 */  addiu       $a0, $a0, 0x20
/* 012838 00412838 0320F809 */  jalr        $t9
/* 01283C 0041283C 24A5103C */   addiu      $a1, $a1, %lo(STR_1001103C)
/* 012840 00412840 8FBC0018 */  lw          $gp, 0x18($sp)
/* 012844 00412844 10000001 */  b           .L0041284C
/* 012848 00412848 00000000 */   nop
.L0041284C:
/* 01284C 0041284C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 012850 00412850 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012854 00412854 03E00008 */  jr          $ra
/* 012858 00412858 00000000 */   nop
