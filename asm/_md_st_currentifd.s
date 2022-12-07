glabel _md_st_currentifd # 675
# _gp_disp: 0xFBE20BC
.set noreorder; .cpload $t9; # .set reorder
/* 03BC90 0043BC90 8F8487C8 */  lw          $a0, %got(pcfdcur)($gp)
/* 03BC94 0043BC94 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03BC98 0043BC98 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03BC9C 0043BC9C 8C840000 */  lw          $a0, 0x0($a0)
/* 03BCA0 0043BCA0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03BCA4 0043BCA4 14800003 */  bnez        $a0, .L0043BCB4
/* 03BCA8 0043BCA8 00000000 */   nop
/* 03BCAC 0043BCAC 10000005 */  b           .L0043BCC4
/* 03BCB0 0043BCB0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043BCB4:
/* 03BCB4 0043BCB4 8F998600 */  lw          $t9, %call16(st_ifd_pcfd)($gp)
/* 03BCB8 0043BCB8 0320F809 */  jalr        $t9
/* 03BCBC 0043BCBC 00000000 */   nop
/* 03BCC0 0043BCC0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043BCC4:
/* 03BCC4 0043BCC4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03BCC8 0043BCC8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03BCCC 0043BCCC 03E00008 */  jr          $ra
/* 03BCD0 0043BCD0 00000000 */   nop
