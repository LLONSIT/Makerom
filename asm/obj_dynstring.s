glabel obj_dynstring # 403
# _gp_disp: 0xFBF35F0
.set noreorder; .cpload $t9; # .set reorder
/* 02A75C 0042A75C 8F9983DC */  lw          $t9, %call16(obj_dynstrtab)($gp)
/* 02A760 0042A760 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A764 0042A764 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A768 0042A768 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A76C 0042A76C 0320F809 */  jalr        $t9
/* 02A770 0042A770 AFA50024 */   sw         $a1, 0x24($sp)
/* 02A774 0042A774 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A778 0042A778 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02A77C 0042A77C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A780 0042A780 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A784 0042A784 03E00008 */  jr          $ra
/* 02A788 0042A788 004E1021 */   addu       $v0, $v0, $t6
