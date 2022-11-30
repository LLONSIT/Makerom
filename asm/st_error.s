.section .rodata
glabel STR_10012DD0
/* 042DD0 10012DD0 */ .asciz "%s: Error: "
                      .balign 4

glabel STR_10012DDC
/* 042DDC 10012DDC */ .asciz "\n"
                      .balign 4


.section .text
glabel st_error # 565
# _gp_disp: 0xFBED880
.set noreorder; .cpload $t9; # .set reorder
/* 0304CC 004304CC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0304D0 004304D0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 0304D4 004304D4 AFA40028 */  sw          $a0, 0x28($sp)
/* 0304D8 004304D8 AFA5002C */  sw          $a1, 0x2C($sp)
/* 0304DC 004304DC AFA60030 */  sw          $a2, 0x30($sp)
/* 0304E0 004304E0 8F868700 */  lw          $a2, %got(st_errname)($gp)
/* 0304E4 004304E4 8F85802C */  lw          $a1, %got(STR_10012DD0)($gp)
/* 0304E8 004304E8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 0304EC 004304EC AFBF0024 */  sw          $ra, 0x24($sp)
/* 0304F0 004304F0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0304F4 004304F4 AFA70034 */  sw          $a3, 0x34($sp)
/* 0304F8 004304F8 8CC60000 */  lw          $a2, 0x0($a2)
/* 0304FC 004304FC 24A52DD0 */  addiu       $a1, $a1, %lo(STR_10012DD0)
/* 030500 00430500 0320F809 */  jalr        $t9
/* 030504 00430504 24840020 */   addiu      $a0, $a0, 0x20
/* 030508 00430508 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03050C 0043050C 8FAE0034 */  lw          $t6, 0x34($sp)
/* 030510 00430510 8FAF0038 */  lw          $t7, 0x38($sp)
/* 030514 00430514 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 030518 00430518 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03051C 0043051C 8FA50028 */  lw          $a1, 0x28($sp)
/* 030520 00430520 8FA6002C */  lw          $a2, 0x2C($sp)
/* 030524 00430524 8FA70030 */  lw          $a3, 0x30($sp)
/* 030528 00430528 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03052C 0043052C AFAF0014 */  sw          $t7, 0x14($sp)
/* 030530 00430530 0320F809 */  jalr        $t9
/* 030534 00430534 24840020 */   addiu      $a0, $a0, 0x20
/* 030538 00430538 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03053C 0043053C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 030540 00430540 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 030544 00430544 8F85802C */  lw          $a1, %got(STR_10012DDC)($gp)
/* 030548 00430548 24840020 */  addiu       $a0, $a0, 0x20
/* 03054C 0043054C 0320F809 */  jalr        $t9
/* 030550 00430550 24A52DDC */   addiu      $a1, $a1, %lo(STR_10012DDC)
/* 030554 00430554 8FBC0020 */  lw          $gp, 0x20($sp)
/* 030558 00430558 24040001 */  addiu       $a0, $zero, 0x1
/* 03055C 0043055C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 030560 00430560 0320F809 */  jalr        $t9
/* 030564 00430564 00000000 */   nop
/* 030568 00430568 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03056C 0043056C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 030570 00430570 27BD0028 */  addiu       $sp, $sp, 0x28
/* 030574 00430574 03E00008 */  jr          $ra
/* 030578 00430578 00000000 */   nop
/* 03057C 0043057C 00000000 */  nop
