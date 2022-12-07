.section .rodata
glabel STR_10013980
/* 043980 10013980 */ .asciz "Internal: "
                      .balign 4
/* 04398C 1001398C */ .asciz ""
                      .balign 4


.section .text
glabel panic # 636
# _gp_disp: 0xFBE45F0
.set noreorder; .cpload $t9; # .set reorder
/* 03975C 0043975C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 039760 00439760 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 039764 00439764 AFA40028 */  sw          $a0, 0x28($sp)
/* 039768 00439768 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03976C 0043976C 8F85802C */  lw          $a1, %got(STR_10013980)($gp)
/* 039770 00439770 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 039774 00439774 AFBF0024 */  sw          $ra, 0x24($sp)
/* 039778 00439778 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03977C 0043977C AFA60030 */  sw          $a2, 0x30($sp)
/* 039780 00439780 AFA70034 */  sw          $a3, 0x34($sp)
/* 039784 00439784 24A53980 */  addiu       $a1, $a1, %lo(STR_10013980)
/* 039788 00439788 0320F809 */  jalr        $t9
/* 03978C 0043978C 24840020 */   addiu      $a0, $a0, 0x20
/* 039790 00439790 8FBC0020 */  lw          $gp, 0x20($sp)
/* 039794 00439794 8FAE0034 */  lw          $t6, 0x34($sp)
/* 039798 00439798 8FA50028 */  lw          $a1, 0x28($sp)
/* 03979C 0043979C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 0397A0 004397A0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 0397A4 004397A4 8FA6002C */  lw          $a2, 0x2C($sp)
/* 0397A8 004397A8 8FA70030 */  lw          $a3, 0x30($sp)
/* 0397AC 004397AC AFAE0010 */  sw          $t6, 0x10($sp)
/* 0397B0 004397B0 0320F809 */  jalr        $t9
/* 0397B4 004397B4 24840020 */   addiu      $a0, $a0, 0x20
/* 0397B8 004397B8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0397BC 004397BC 24040001 */  addiu       $a0, $zero, 0x1
/* 0397C0 004397C0 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 0397C4 004397C4 0320F809 */  jalr        $t9
/* 0397C8 004397C8 00000000 */   nop
/* 0397CC 004397CC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0397D0 004397D0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0397D4 004397D4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0397D8 004397D8 03E00008 */  jr          $ra
/* 0397DC 004397DC 00000000 */   nop
