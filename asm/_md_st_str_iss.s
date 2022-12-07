glabel _md_st_str_iss # 673
# _gp_disp: 0xFBE2188
.set noreorder; .cpload $t9; # .set reorder
/* 03BBC4 0043BBC4 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03BBC8 0043BBC8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03BBCC 0043BBCC AFBF001C */  sw          $ra, 0x1C($sp)
/* 03BBD0 0043BBD0 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03BBD4 0043BBD4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03BBD8 0043BBD8 AFA40020 */  sw          $a0, 0x20($sp)
/* 03BBDC 0043BBDC 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03BBE0 0043BBE0 15E00006 */  bnez        $t7, .L0043BBFC
/* 03BBE4 0043BBE4 00000000 */   nop
/* 03BBE8 0043BBE8 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03BBEC 0043BBEC 8F84802C */  lw          $a0, %got(D_10015CD0)($gp)
/* 03BBF0 0043BBF0 0320F809 */  jalr        $t9
/* 03BBF4 0043BBF4 24845CD0 */   addiu      $a0, $a0, %lo(D_10015CD0)
/* 03BBF8 0043BBF8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043BBFC:
/* 03BBFC 0043BBFC 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03BC00 0043BC00 8C630000 */  lw          $v1, 0x0($v1)
/* 03BC04 0043BC04 54600009 */  bnel        $v1, $zero, .L0043BC2C
/* 03BC08 0043BC08 8C780000 */   lw         $t8, 0x0($v1)
/* 03BC0C 0043BC0C 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03BC10 0043BC10 8F84802C */  lw          $a0, %got(D_10015D0C)($gp)
/* 03BC14 0043BC14 0320F809 */  jalr        $t9
/* 03BC18 0043BC18 24845D0C */   addiu      $a0, $a0, %lo(D_10015D0C)
/* 03BC1C 0043BC1C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BC20 0043BC20 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03BC24 0043BC24 8C630000 */  lw          $v1, 0x0($v1)
/* 03BC28 0043BC28 8C780000 */  lw          $t8, 0x0($v1)
.L0043BC2C:
/* 03BC2C 0043BC2C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03BC30 0043BC30 8F02000C */  lw          $v0, 0xC($t8)
/* 03BC34 0043BC34 5040000A */  beql        $v0, $zero, .L0043BC60
/* 03BC38 0043BC38 00001025 */   move       $v0, $zero
/* 03BC3C 0043BC3C 8FB90020 */  lw          $t9, 0x20($sp)
/* 03BC40 0043BC40 8FA90020 */  lw          $t1, 0x20($sp)
/* 03BC44 0043BC44 0322082A */  slt         $at, $t9, $v0
/* 03BC48 0043BC48 50200005 */  beql        $at, $zero, .L0043BC60
/* 03BC4C 0043BC4C 00001025 */   move       $v0, $zero
/* 03BC50 0043BC50 8C680014 */  lw          $t0, 0x14($v1)
/* 03BC54 0043BC54 10000002 */  b           .L0043BC60
/* 03BC58 0043BC58 01091021 */   addu       $v0, $t0, $t1
/* 03BC5C 0043BC5C 00001025 */  move        $v0, $zero
.L0043BC60:
/* 03BC60 0043BC60 03E00008 */  jr          $ra
/* 03BC64 0043BC64 27BD0020 */   addiu      $sp, $sp, 0x20
