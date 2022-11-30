.section .rodata
glabel STR_10010E70
/* 040E70 10010E70 */ .asciz ".text"
                      .balign 4


.section .text
glabel readCoff # 33
# _gp_disp: 0xFC0D5C0
.set noreorder; .cpload $t9; # .set reorder
/* 01078C 0041078C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 010790 00410790 AFBF001C */  sw          $ra, 0x1C($sp)
/* 010794 00410794 AFBC0018 */  sw          $gp, 0x18($sp)
/* 010798 00410798 AFA40030 */  sw          $a0, 0x30($sp)
/* 01079C 0041079C AFA50034 */  sw          $a1, 0x34($sp)
/* 0107A0 004107A0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0107A4 004107A4 8F818750 */  lw          $at, %got(OFileName)($gp)
/* 0107A8 004107A8 AC2E0000 */  sw          $t6, 0x0($at)
/* 0107AC 004107AC 8F8F802C */  lw          $t7, %got(STR_10010E70)($gp)
/* 0107B0 004107B0 8F818754 */  lw          $at, %got(SName)($gp)
/* 0107B4 004107B4 25EF0E70 */  addiu       $t7, $t7, %lo(STR_10010E70)
/* 0107B8 004107B8 AC2F0000 */  sw          $t7, 0x0($at)
/* 0107BC 004107BC 8F998018 */  lw          $t9, %got(func_0041080C)($gp)
/* 0107C0 004107C0 8FA40034 */  lw          $a0, 0x34($sp)
/* 0107C4 004107C4 2739080C */  addiu       $t9, $t9, %lo(func_0041080C)
/* 0107C8 004107C8 0320F809 */  jalr        $t9
/* 0107CC 004107CC 00000000 */   nop
/* 0107D0 004107D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0107D4 004107D4 AFA2002C */  sw          $v0, 0x2C($sp)
/* 0107D8 004107D8 8FB8002C */  lw          $t8, 0x2C($sp)
/* 0107DC 004107DC 07010003 */  bgez        $t8, .L004107EC
/* 0107E0 004107E0 00000000 */   nop
/* 0107E4 004107E4 10000005 */  b           .L004107FC
/* 0107E8 004107E8 2402FFFF */   addiu      $v0, $zero, -0x1
.L004107EC:
/* 0107EC 004107EC 10000003 */  b           .L004107FC
/* 0107F0 004107F0 8FA2002C */   lw         $v0, 0x2C($sp)
/* 0107F4 004107F4 10000001 */  b           .L004107FC
/* 0107F8 004107F8 00000000 */   nop
.L004107FC:
/* 0107FC 004107FC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 010800 00410800 27BD0030 */  addiu       $sp, $sp, 0x30
/* 010804 00410804 03E00008 */  jr          $ra
/* 010808 00410808 00000000 */   nop
