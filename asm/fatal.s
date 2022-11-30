.section .rodata
glabel STR_100140C0
/* 0440C0 100140C0 */ .asciz "Fatal: "
                      .balign 4
/* 0440C8 100140C8 */ .asciz ""
                      .balign 4
/* 0440CC 100140CC */ .asciz ""
                      .balign 4


.section .text
glabel fatal # 684
# _gp_disp: 0xFBE1A00
.set noreorder; .cpload $t9; # .set reorder
/* 03C34C 0043C34C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03C350 0043C350 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03C354 0043C354 AFA40028 */  sw          $a0, 0x28($sp)
/* 03C358 0043C358 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03C35C 0043C35C 8F85802C */  lw          $a1, %got(STR_100140C0)($gp)
/* 03C360 0043C360 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03C364 0043C364 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03C368 0043C368 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03C36C 0043C36C AFA60030 */  sw          $a2, 0x30($sp)
/* 03C370 0043C370 AFA70034 */  sw          $a3, 0x34($sp)
/* 03C374 0043C374 24A540C0 */  addiu       $a1, $a1, %lo(STR_100140C0)
/* 03C378 0043C378 0320F809 */  jalr        $t9
/* 03C37C 0043C37C 24840020 */   addiu      $a0, $a0, 0x20
/* 03C380 0043C380 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C384 0043C384 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03C388 0043C388 8FA50028 */  lw          $a1, 0x28($sp)
/* 03C38C 0043C38C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 03C390 0043C390 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 03C394 0043C394 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03C398 0043C398 8FA70030 */  lw          $a3, 0x30($sp)
/* 03C39C 0043C39C AFAE0010 */  sw          $t6, 0x10($sp)
/* 03C3A0 0043C3A0 0320F809 */  jalr        $t9
/* 03C3A4 0043C3A4 24840020 */   addiu      $a0, $a0, 0x20
/* 03C3A8 0043C3A8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C3AC 0043C3AC 24040001 */  addiu       $a0, $zero, 0x1
/* 03C3B0 0043C3B0 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 03C3B4 0043C3B4 0320F809 */  jalr        $t9
/* 03C3B8 0043C3B8 00000000 */   nop
/* 03C3BC 0043C3BC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03C3C0 0043C3C0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C3C4 0043C3C4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03C3C8 0043C3C8 03E00008 */  jr          $ra
/* 03C3CC 0043C3CC 00000000 */   nop
