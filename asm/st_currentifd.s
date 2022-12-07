glabel st_currentifd # 649
# _gp_disp: 0xFBE3B90
.set noreorder; .cpload $t9; # .set reorder
/* 03A1BC 0043A1BC 8F8487C8 */  lw          $a0, %got(pcfdcur)($gp)
/* 03A1C0 0043A1C0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03A1C4 0043A1C4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03A1C8 0043A1C8 8C840000 */  lw          $a0, 0x0($a0)
/* 03A1CC 0043A1CC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03A1D0 0043A1D0 14800003 */  bnez        $a0, .L0043A1E0
/* 03A1D4 0043A1D4 00000000 */   nop
/* 03A1D8 0043A1D8 10000005 */  b           .L0043A1F0
/* 03A1DC 0043A1DC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043A1E0:
/* 03A1E0 0043A1E0 8F998600 */  lw          $t9, %call16(st_ifd_pcfd)($gp)
/* 03A1E4 0043A1E4 0320F809 */  jalr        $t9
/* 03A1E8 0043A1E8 00000000 */   nop
/* 03A1EC 0043A1EC 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A1F0:
/* 03A1F0 0043A1F0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03A1F4 0043A1F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03A1F8 0043A1F8 03E00008 */  jr          $ra
/* 03A1FC 0043A1FC 00000000 */   nop
