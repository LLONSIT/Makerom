glabel st_changeaux # 710
# _gp_disp: 0xFBDFB2C
.set noreorder; .cpload $t9; # .set reorder
/* 03E220 0043E220 8F99860C */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 03E224 0043E224 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E228 0043E228 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E22C 0043E22C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03E230 0043E230 0320F809 */  jalr        $t9
/* 03E234 0043E234 AFA50024 */   sw         $a1, 0x24($sp)
/* 03E238 0043E238 27AE0024 */  addiu       $t6, $sp, 0x24
/* 03E23C 0043E23C 8DD80000 */  lw          $t8, 0x0($t6)
/* 03E240 0043E240 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E244 0043E244 AC580000 */  sw          $t8, 0x0($v0)
/* 03E248 0043E248 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03E24C 0043E24C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E250 0043E250 03E00008 */  jr          $ra
/* 03E254 0043E254 00000000 */   nop
