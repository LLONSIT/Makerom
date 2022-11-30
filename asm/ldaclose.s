glabel ldaclose # 233
# _gp_disp: 0xFBF8374
.set noreorder; .cpload $t9; # .set reorder
/* 0259D8 004259D8 8F998248 */  lw          $t9, %call16(vldldptr)($gp)
/* 0259DC 004259DC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0259E0 004259E0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0259E4 004259E4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0259E8 004259E8 0320F809 */  jalr        $t9
/* 0259EC 004259EC AFA40020 */   sw         $a0, 0x20($sp)
/* 0259F0 004259F0 14400003 */  bnez        $v0, .L00425A00
/* 0259F4 004259F4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0259F8 004259F8 1000000C */  b           .L00425A2C
/* 0259FC 004259FC 00001025 */   move       $v0, $zero
.L00425A00:
/* 025A00 00425A00 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 025A04 00425A04 8FAE0020 */  lw          $t6, 0x20($sp)
/* 025A08 00425A08 0320F809 */  jalr        $t9
/* 025A0C 00425A0C 8DC40004 */   lw         $a0, 0x4($t6)
/* 025A10 00425A10 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025A14 00425A14 8FA40020 */  lw          $a0, 0x20($sp)
/* 025A18 00425A18 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 025A1C 00425A1C 0320F809 */  jalr        $t9
/* 025A20 00425A20 00000000 */   nop
/* 025A24 00425A24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025A28 00425A28 24020001 */  addiu       $v0, $zero, 0x1
.L00425A2C:
/* 025A2C 00425A2C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 025A30 00425A30 27BD0020 */  addiu       $sp, $sp, 0x20
/* 025A34 00425A34 03E00008 */  jr          $ra
/* 025A38 00425A38 00000000 */   nop
