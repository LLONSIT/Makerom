glabel split # 272
# _gp_disp: 0xFBF4FBC
.set noreorder; .cpload $t9; # .set reorder
/* 028D90 00428D90 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 028D94 00428D94 8F99828C */  lw          $t9, %call16(obj_newstr)($gp)
/* 028D98 00428D98 AFBF0024 */  sw          $ra, 0x24($sp)
/* 028D9C 00428D9C AFB2001C */  sw          $s2, 0x1C($sp)
/* 028DA0 00428DA0 AFB10018 */  sw          $s1, 0x18($sp)
/* 028DA4 00428DA4 AFB00014 */  sw          $s0, 0x14($sp)
/* 028DA8 00428DA8 00A08025 */  move        $s0, $a1
/* 028DAC 00428DAC 00C09025 */  move        $s2, $a2
/* 028DB0 00428DB0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 028DB4 00428DB4 AFA70034 */  sw          $a3, 0x34($sp)
/* 028DB8 00428DB8 0320F809 */  jalr        $t9
/* 028DBC 00428DBC 00008825 */   move       $s1, $zero
/* 028DC0 00428DC0 8FAE0034 */  lw          $t6, 0x34($sp)
/* 028DC4 00428DC4 24010001 */  addiu       $at, $zero, 0x1
/* 028DC8 00428DC8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028DCC 00428DCC 15C10004 */  bne         $t6, $at, .L00428DE0
/* 028DD0 00428DD0 00402025 */   move       $a0, $v0
/* 028DD4 00428DD4 AE000000 */  sw          $zero, 0x0($s0)
/* 028DD8 00428DD8 26100004 */  addiu       $s0, $s0, 0x4
/* 028DDC 00428DDC 24110001 */  addiu       $s1, $zero, 0x1
.L00428DE0:
/* 028DE0 00428DE0 8F99815C */  lw          $t9, %call16(strtok)($gp)
/* 028DE4 00428DE4 02402825 */  move        $a1, $s2
/* 028DE8 00428DE8 0320F809 */  jalr        $t9
/* 028DEC 00428DEC 00000000 */   nop
/* 028DF0 00428DF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028DF4 00428DF4 AE020000 */  sw          $v0, 0x0($s0)
/* 028DF8 00428DF8 10400013 */  beqz        $v0, .L00428E48
/* 028DFC 00428DFC 26100004 */   addiu      $s0, $s0, 0x4
/* 028E00 00428E00 8F99815C */  lw          $t9, %call16(strtok)($gp)
/* 028E04 00428E04 26310001 */  addiu       $s1, $s1, 0x1
/* 028E08 00428E08 00002025 */  move        $a0, $zero
/* 028E0C 00428E0C 0320F809 */  jalr        $t9
/* 028E10 00428E10 02402825 */   move       $a1, $s2
/* 028E14 00428E14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028E18 00428E18 AE020000 */  sw          $v0, 0x0($s0)
/* 028E1C 00428E1C 1040000A */  beqz        $v0, .L00428E48
/* 028E20 00428E20 26100004 */   addiu      $s0, $s0, 0x4
.L00428E24:
/* 028E24 00428E24 8F99815C */  lw          $t9, %call16(strtok)($gp)
/* 028E28 00428E28 00002025 */  move        $a0, $zero
/* 028E2C 00428E2C 02402825 */  move        $a1, $s2
/* 028E30 00428E30 0320F809 */  jalr        $t9
/* 028E34 00428E34 26310001 */   addiu      $s1, $s1, 0x1
/* 028E38 00428E38 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028E3C 00428E3C AE020000 */  sw          $v0, 0x0($s0)
/* 028E40 00428E40 1440FFF8 */  bnez        $v0, .L00428E24
/* 028E44 00428E44 26100004 */   addiu      $s0, $s0, 0x4
.L00428E48:
/* 028E48 00428E48 8FBF0024 */  lw          $ra, 0x24($sp)
/* 028E4C 00428E4C 02201025 */  move        $v0, $s1
/* 028E50 00428E50 8FB10018 */  lw          $s1, 0x18($sp)
/* 028E54 00428E54 8FB00014 */  lw          $s0, 0x14($sp)
/* 028E58 00428E58 8FB2001C */  lw          $s2, 0x1C($sp)
/* 028E5C 00428E5C 03E00008 */  jr          $ra
/* 028E60 00428E60 27BD0028 */   addiu      $sp, $sp, 0x28
