glabel st_shifttq # 708
# _gp_disp: 0xFBDFF24
.set noreorder; .cpload $t9; # .set reorder
/* 03DE28 0043DE28 8F99860C */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 03DE2C 0043DE2C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03DE30 0043DE30 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03DE34 0043DE34 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03DE38 0043DE38 0320F809 */  jalr        $t9
/* 03DE3C 0043DE3C AFA50024 */   sw         $a1, 0x24($sp)
/* 03DE40 0043DE40 90430001 */  lbu         $v1, 0x1($v0)
/* 03DE44 0043DE44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DE48 0043DE48 90440003 */  lbu         $a0, 0x3($v0)
/* 03DE4C 0043DE4C 00037102 */  srl         $t6, $v1, 4
/* 03DE50 0043DE50 31CF000F */  andi        $t7, $t6, 0xF
/* 03DE54 0043DE54 3078FFF0 */  andi        $t8, $v1, 0xFFF0
/* 03DE58 0043DE58 01F86025 */  or          $t4, $t7, $t8
/* 03DE5C 0043DE5C A04C0001 */  sb          $t4, 0x1($v0)
/* 03DE60 0043DE60 8C490000 */  lw          $t1, 0x0($v0)
/* 03DE64 0043DE64 318D000F */  andi        $t5, $t4, 0xF
/* 03DE68 0043DE68 00047902 */  srl         $t7, $a0, 4
/* 03DE6C 0043DE6C 00095900 */  sll         $t3, $t1, 4
/* 03DE70 0043DE70 90490002 */  lbu         $t1, 0x2($v0)
/* 03DE74 0043DE74 016D7025 */  or          $t6, $t3, $t5
/* 03DE78 0043DE78 31F8000F */  andi        $t8, $t7, 0xF
/* 03DE7C 0043DE7C 3099FFF0 */  andi        $t9, $a0, 0xFFF0
/* 03DE80 0043DE80 03195825 */  or          $t3, $t8, $t9
/* 03DE84 0043DE84 A04E0001 */  sb          $t6, 0x1($v0)
/* 03DE88 0043DE88 316D000F */  andi        $t5, $t3, 0xF
/* 03DE8C 0043DE8C 00096100 */  sll         $t4, $t1, 4
/* 03DE90 0043DE90 A04B0003 */  sb          $t3, 0x3($v0)
/* 03DE94 0043DE94 018D7025 */  or          $t6, $t4, $t5
/* 03DE98 0043DE98 A04E0003 */  sb          $t6, 0x3($v0)
/* 03DE9C 0043DE9C 944F0002 */  lhu         $t7, 0x2($v0)
/* 03DEA0 0043DEA0 3128FFF0 */  andi        $t0, $t1, 0xFFF0
/* 03DEA4 0043DEA4 000FC302 */  srl         $t8, $t7, 12
/* 03DEA8 0043DEA8 3319000F */  andi        $t9, $t8, 0xF
/* 03DEAC 0043DEAC 03287025 */  or          $t6, $t9, $t0
/* 03DEB0 0043DEB0 A04E0002 */  sb          $t6, 0x2($v0)
/* 03DEB4 0043DEB4 8FAB0024 */  lw          $t3, 0x24($sp)
/* 03DEB8 0043DEB8 31CF000F */  andi        $t7, $t6, 0xF
/* 03DEBC 0043DEBC 000B6900 */  sll         $t5, $t3, 4
/* 03DEC0 0043DEC0 01AFC025 */  or          $t8, $t5, $t7
/* 03DEC4 0043DEC4 A0580002 */  sb          $t8, 0x2($v0)
/* 03DEC8 0043DEC8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03DECC 0043DECC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03DED0 0043DED0 03E00008 */  jr          $ra
/* 03DED4 0043DED4 00000000 */   nop
