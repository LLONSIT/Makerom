glabel _md_st_setfd # 678
# _gp_disp: 0xFBE1F04
.set noreorder; .cpload $t9; # .set reorder
/* 03BE48 0043BE48 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03BE4C 0043BE4C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03BE50 0043BE50 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03BE54 0043BE54 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03BE58 0043BE58 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03BE5C 0043BE5C AFA40020 */  sw          $a0, 0x20($sp)
/* 03BE60 0043BE60 8DC20004 */  lw          $v0, 0x4($t6)
/* 03BE64 0043BE64 5440000A */  bnel        $v0, $zero, .L0043BE90
/* 03BE68 0043BE68 8FB80020 */   lw         $t8, 0x20($sp)
/* 03BE6C 0043BE6C 8F998614 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 03BE70 0043BE70 8F84802C */  lw          $a0, %got(D_10015CD0)($gp)
/* 03BE74 0043BE74 0320F809 */  jalr        $t9
/* 03BE78 0043BE78 24845CD0 */   addiu      $a0, $a0, %lo(D_10015CD0)
/* 03BE7C 0043BE7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BE80 0043BE80 8F8F87C4 */  lw          $t7, %got(st_pchdr)($gp)
/* 03BE84 0043BE84 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03BE88 0043BE88 8DE20004 */  lw          $v0, 0x4($t7)
/* 03BE8C 0043BE8C 8FB80020 */  lw          $t8, 0x20($sp)
.L0043BE90:
/* 03BE90 0043BE90 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03BE94 0043BE94 8F8187C8 */  lw          $at, %got(pcfdcur)($gp)
/* 03BE98 0043BE98 0018C980 */  sll         $t9, $t8, 6
/* 03BE9C 0043BE9C 00594021 */  addu        $t0, $v0, $t9
/* 03BEA0 0043BEA0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03BEA4 0043BEA4 03E00008 */  jr          $ra
/* 03BEA8 0043BEA8 AC280000 */   sw         $t0, 0x0($at)
/* 03BEAC 0043BEAC 00000000 */  nop
