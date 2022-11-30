glabel st_auxisymadd # 714
# _gp_disp: 0xFBDF86C
.set noreorder; .cpload $t9; # .set reorder
/* 03E4E0 0043E4E0 8F9985E4 */  lw          $t9, %call16(st_auxadd)($gp)
/* 03E4E4 0043E4E4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03E4E8 0043E4E8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E4EC 0043E4EC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03E4F0 0043E4F0 AFA40024 */  sw          $a0, 0x24($sp)
/* 03E4F4 0043E4F4 0320F809 */  jalr        $t9
/* 03E4F8 0043E4F8 AFA40000 */   sw         $a0, 0x0($sp)
/* 03E4FC 0043E4FC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03E500 0043E500 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E504 0043E504 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03E508 0043E508 03E00008 */  jr          $ra
/* 03E50C 0043E50C 00000000 */   nop
