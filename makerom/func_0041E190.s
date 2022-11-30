glabel func_0041E190 # 114
# _gp_disp: 0xFBFFBB0
.set noreorder; .cpload $t9; # .set reorder
/* 01E19C 0041E19C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01E1A0 0041E1A0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01E1A4 0041E1A4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01E1A8 0041E1A8 14800026 */  bnez        $a0, .L0041E244
/* 01E1AC 0041E1AC AFA5003C */   sw         $a1, 0x3C($sp)
/* 01E1B0 0041E1B0 8F9980D8 */  lw          $t9, %call16(lseek)($gp)
/* 01E1B4 0041E1B4 00A02025 */  move        $a0, $a1
/* 01E1B8 0041E1B8 00002825 */  move        $a1, $zero
/* 01E1BC 0041E1BC 00003025 */  move        $a2, $zero
/* 01E1C0 0041E1C0 0320F809 */  jalr        $t9
/* 01E1C4 0041E1C4 AFA0002C */   sw         $zero, 0x2C($sp)
/* 01E1C8 0041E1C8 2401FFFF */  addiu       $at, $zero, -0x1
/* 01E1CC 0041E1CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E1D0 0041E1D0 14410003 */  bne         $v0, $at, .L0041E1E0
/* 01E1D4 0041E1D4 8FA3002C */   lw         $v1, 0x2C($sp)
/* 01E1D8 0041E1D8 10000027 */  b           .L0041E278
/* 01E1DC 0041E1DC 24020001 */   addiu      $v0, $zero, 0x1
.L0041E1E0:
/* 01E1E0 0041E1E0 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 01E1E4 0041E1E4 8FA4003C */  lw          $a0, 0x3C($sp)
/* 01E1E8 0041E1E8 27A50030 */  addiu       $a1, $sp, 0x30
/* 01E1EC 0041E1EC 24060008 */  addiu       $a2, $zero, 0x8
/* 01E1F0 0041E1F0 0320F809 */  jalr        $t9
/* 01E1F4 0041E1F4 AFA3002C */   sw         $v1, 0x2C($sp)
/* 01E1F8 0041E1F8 24010008 */  addiu       $at, $zero, 0x8
/* 01E1FC 0041E1FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E200 0041E200 10410003 */  beq         $v0, $at, .L0041E210
/* 01E204 0041E204 8FA3002C */   lw         $v1, 0x2C($sp)
/* 01E208 0041E208 1000001B */  b           .L0041E278
/* 01E20C 0041E20C 24020001 */   addiu      $v0, $zero, 0x1
.L0041E210:
/* 01E210 0041E210 8F998120 */  lw          $t9, %call16(memcmp)($gp)
/* 01E214 0041E214 8F85802C */  lw          $a1, %got(RO_10011770)($gp)
/* 01E218 0041E218 27A40030 */  addiu       $a0, $sp, 0x30
/* 01E21C 0041E21C 24060008 */  addiu       $a2, $zero, 0x8
/* 01E220 0041E220 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01E224 0041E224 0320F809 */  jalr        $t9
/* 01E228 0041E228 24A51770 */   addiu      $a1, $a1, %lo(RO_10011770)
/* 01E22C 0041E22C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E230 0041E230 14400002 */  bnez        $v0, .L0041E23C
/* 01E234 0041E234 8FA3002C */   lw         $v1, 0x2C($sp)
/* 01E238 0041E238 24030001 */  addiu       $v1, $zero, 0x1
.L0041E23C:
/* 01E23C 0041E23C 1000000E */  b           .L0041E278
/* 01E240 0041E240 00601025 */   move       $v0, $v1
.L0041E244:
/* 01E244 0041E244 8C8E004C */  lw          $t6, 0x4C($a0)
/* 01E248 0041E248 24010001 */  addiu       $at, $zero, 0x1
/* 01E24C 0041E24C 24020001 */  addiu       $v0, $zero, 0x1
/* 01E250 0041E250 11C10009 */  beq         $t6, $at, .L0041E278
/* 01E254 0041E254 00000000 */   nop
/* 01E258 0041E258 8C8F0088 */  lw          $t7, 0x88($a0)
/* 01E25C 0041E25C 31F80100 */  andi        $t8, $t7, 0x100
/* 01E260 0041E260 17000003 */  bnez        $t8, .L0041E270
/* 01E264 0041E264 00000000 */   nop
/* 01E268 0041E268 10000003 */  b           .L0041E278
/* 01E26C 0041E26C 24020001 */   addiu      $v0, $zero, 0x1
.L0041E270:
/* 01E270 0041E270 10000001 */  b           .L0041E278
/* 01E274 0041E274 00001025 */   move       $v0, $zero
.L0041E278:
/* 01E278 0041E278 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01E27C 0041E27C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 01E280 0041E280 03E00008 */  jr          $ra
/* 01E284 0041E284 00000000 */   nop
