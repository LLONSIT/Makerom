glabel st_auxbtsize # 716
# _gp_disp: 0xFBDF79C
.set noreorder; .cpload $t9; # .set reorder
/* 03E5B0 0043E5B0 8F99860C */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 03E5B4 0043E5B4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E5B8 0043E5B8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E5BC 0043E5BC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03E5C0 0043E5C0 0320F809 */  jalr        $t9
/* 03E5C4 0043E5C4 AFA50024 */   sw         $a1, 0x24($sp)
/* 03E5C8 0043E5C8 904F0000 */  lbu         $t7, 0x0($v0)
/* 03E5CC 0043E5CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E5D0 0043E5D0 35F80080 */  ori         $t8, $t7, 0x80
/* 03E5D4 0043E5D4 A0580000 */  sb          $t8, 0x0($v0)
/* 03E5D8 0043E5D8 8F998644 */  lw          $t9, %call16(st_auxisymadd)($gp)
/* 03E5DC 0043E5DC 8FA40024 */  lw          $a0, 0x24($sp)
/* 03E5E0 0043E5E0 0320F809 */  jalr        $t9
/* 03E5E4 0043E5E4 00000000 */   nop
/* 03E5E8 0043E5E8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03E5EC 0043E5EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E5F0 0043E5F0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E5F4 0043E5F4 03E00008 */  jr          $ra
/* 03E5F8 0043E5F8 00000000 */   nop
