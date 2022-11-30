glabel st_str_iss # 661
# _gp_disp: 0xFBE2CA0
.set noreorder; .cpload $t9; # .set reorder
/* 03B0AC 0043B0AC 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03B0B0 0043B0B0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B0B4 0043B0B4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B0B8 0043B0B8 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03B0BC 0043B0BC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B0C0 0043B0C0 AFA40020 */  sw          $a0, 0x20($sp)
/* 03B0C4 0043B0C4 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03B0C8 0043B0C8 15E00006 */  bnez        $t7, .L0043B0E4
/* 03B0CC 0043B0CC 00000000 */   nop
/* 03B0D0 0043B0D0 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03B0D4 0043B0D4 8F84802C */  lw          $a0, %got(D_10015B60)($gp)
/* 03B0D8 0043B0D8 0320F809 */  jalr        $t9
/* 03B0DC 0043B0DC 24845B60 */   addiu      $a0, $a0, %lo(D_10015B60)
/* 03B0E0 0043B0E0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043B0E4:
/* 03B0E4 0043B0E4 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03B0E8 0043B0E8 8C630000 */  lw          $v1, 0x0($v1)
/* 03B0EC 0043B0EC 54600009 */  bnel        $v1, $zero, .L0043B114
/* 03B0F0 0043B0F0 8C780000 */   lw         $t8, 0x0($v1)
/* 03B0F4 0043B0F4 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03B0F8 0043B0F8 8F84802C */  lw          $a0, %got(D_10015B9C)($gp)
/* 03B0FC 0043B0FC 0320F809 */  jalr        $t9
/* 03B100 0043B100 24845B9C */   addiu      $a0, $a0, %lo(D_10015B9C)
/* 03B104 0043B104 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B108 0043B108 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03B10C 0043B10C 8C630000 */  lw          $v1, 0x0($v1)
/* 03B110 0043B110 8C780000 */  lw          $t8, 0x0($v1)
.L0043B114:
/* 03B114 0043B114 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B118 0043B118 8F02000C */  lw          $v0, 0xC($t8)
/* 03B11C 0043B11C 5040000A */  beql        $v0, $zero, .L0043B148
/* 03B120 0043B120 00001025 */   move       $v0, $zero
/* 03B124 0043B124 8FB90020 */  lw          $t9, 0x20($sp)
/* 03B128 0043B128 8FA90020 */  lw          $t1, 0x20($sp)
/* 03B12C 0043B12C 0322082A */  slt         $at, $t9, $v0
/* 03B130 0043B130 50200005 */  beql        $at, $zero, .L0043B148
/* 03B134 0043B134 00001025 */   move       $v0, $zero
/* 03B138 0043B138 8C680014 */  lw          $t0, 0x14($v1)
/* 03B13C 0043B13C 10000002 */  b           .L0043B148
/* 03B140 0043B140 01091021 */   addu       $v0, $t0, $t1
/* 03B144 0043B144 00001025 */  move        $v0, $zero
.L0043B148:
/* 03B148 0043B148 03E00008 */  jr          $ra
/* 03B14C 0043B14C 27BD0020 */   addiu      $sp, $sp, 0x20
