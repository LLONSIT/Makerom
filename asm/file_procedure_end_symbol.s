glabel file_procedure_end_symbol # 602
# _gp_disp: 0xFBE74AC
.set noreorder; .cpload $t9; # .set reorder
/* 0368A0 004368A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0368A4 004368A4 8F99856C */  lw          $t9, %call16(file_symbol_iaux)($gp)
/* 0368A8 004368A8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0368AC 004368AC AFBC0018 */  sw          $gp, 0x18($sp)
/* 0368B0 004368B0 AFA40020 */  sw          $a0, 0x20($sp)
/* 0368B4 004368B4 AFA50024 */  sw          $a1, 0x24($sp)
/* 0368B8 004368B8 0320F809 */  jalr        $t9
/* 0368BC 004368BC AFA60028 */   sw         $a2, 0x28($sp)
/* 0368C0 004368C0 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 0368C4 004368C4 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 0368C8 004368C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0368CC 004368CC 14410003 */  bne         $v0, $at, .L004368DC
/* 0368D0 004368D0 00403025 */   move       $a2, $v0
/* 0368D4 004368D4 10000008 */  b           .L004368F8
/* 0368D8 004368D8 8FA20028 */   lw         $v0, 0x28($sp)
.L004368DC:
/* 0368DC 004368DC 8F9985B4 */  lw          $t9, %call16(file_aux_isym)($gp)
/* 0368E0 004368E0 8FA40020 */  lw          $a0, 0x20($sp)
/* 0368E4 004368E4 8FA50024 */  lw          $a1, 0x24($sp)
/* 0368E8 004368E8 0320F809 */  jalr        $t9
/* 0368EC 004368EC 00000000 */   nop
/* 0368F0 004368F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0368F4 004368F4 2442FFFF */  addiu       $v0, $v0, -0x1
.L004368F8:
/* 0368F8 004368F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0368FC 004368FC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 036900 00436900 03E00008 */  jr          $ra
/* 036904 00436904 00000000 */   nop
