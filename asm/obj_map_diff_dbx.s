glabel obj_map_diff_dbx # 301
# _gp_disp: 0xFBF3B04
.set noreorder; .cpload $t9; # .set reorder
/* 02A248 0042A248 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02A24C 0042A24C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A250 0042A250 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A254 0042A254 8C8E0180 */  lw          $t6, 0x180($a0)
/* 02A258 0042A258 24010002 */  addiu       $at, $zero, 0x2
/* 02A25C 0042A25C 11C10003 */  beq         $t6, $at, .L0042A26C
/* 02A260 0042A260 00000000 */   nop
/* 02A264 0042A264 1000000E */  b           .L0042A2A0
/* 02A268 0042A268 00001825 */   move       $v1, $zero
.L0042A26C:
/* 02A26C 0042A26C 8F9982C4 */  lw          $t9, %call16(obj_base_address)($gp)
/* 02A270 0042A270 AFA40028 */  sw          $a0, 0x28($sp)
/* 02A274 0042A274 0320F809 */  jalr        $t9
/* 02A278 0042A278 00000000 */   nop
/* 02A27C 0042A27C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A280 0042A280 8FA40028 */  lw          $a0, 0x28($sp)
/* 02A284 0042A284 AFA20020 */  sw          $v0, 0x20($sp)
/* 02A288 0042A288 8F9982CC */  lw          $t9, %call16(obj_map_address)($gp)
/* 02A28C 0042A28C 0320F809 */  jalr        $t9
/* 02A290 0042A290 00000000 */   nop
/* 02A294 0042A294 8FAF0020 */  lw          $t7, 0x20($sp)
/* 02A298 0042A298 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A29C 0042A29C 01E21823 */  subu        $v1, $t7, $v0
.L0042A2A0:
/* 02A2A0 0042A2A0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A2A4 0042A2A4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02A2A8 0042A2A8 00601025 */  move        $v0, $v1
/* 02A2AC 0042A2AC 03E00008 */  jr          $ra
/* 02A2B0 0042A2B0 00000000 */   nop
