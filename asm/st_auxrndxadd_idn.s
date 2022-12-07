glabel st_auxrndxadd_idn # 717
# _gp_disp: 0xFBDF744
.set noreorder; .cpload $t9; # .set reorder
/* 03E608 0043E608 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03E60C 0043E60C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E610 0043E610 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E614 0043E614 0320F809 */  jalr        $t9
/* 03E618 0043E618 AFBC0018 */   sw         $gp, 0x18($sp)
/* 03E61C 0043E61C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E620 0043E620 8C440000 */  lw          $a0, 0x0($v0)
/* 03E624 0043E624 8C450004 */  lw          $a1, 0x4($v0)
/* 03E628 0043E628 8F998648 */  lw          $t9, %call16(st_auxrndxadd)($gp)
/* 03E62C 0043E62C 0320F809 */  jalr        $t9
/* 03E630 0043E630 00000000 */   nop
/* 03E634 0043E634 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03E638 0043E638 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E63C 0043E63C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E640 0043E640 03E00008 */  jr          $ra
/* 03E644 0043E644 00000000 */   nop
