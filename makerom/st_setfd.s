glabel st_setfd # 651
# _gp_disp: 0xFBE3B24
.set noreorder; .cpload $t9; # .set reorder
/* 03A228 0043A228 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03A22C 0043A22C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03A230 0043A230 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03A234 0043A234 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03A238 0043A238 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03A23C 0043A23C AFA40020 */  sw          $a0, 0x20($sp)
/* 03A240 0043A240 8DC20004 */  lw          $v0, 0x4($t6)
/* 03A244 0043A244 5440000A */  bnel        $v0, $zero, .L0043A270
/* 03A248 0043A248 8FB80020 */   lw         $t8, 0x20($sp)
/* 03A24C 0043A24C 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A250 0043A250 8F84802C */  lw          $a0, %got(D_10015B60)($gp)
/* 03A254 0043A254 0320F809 */  jalr        $t9
/* 03A258 0043A258 24845B60 */   addiu      $a0, $a0, %lo(D_10015B60)
/* 03A25C 0043A25C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A260 0043A260 8F8F87C4 */  lw          $t7, %got(st_pchdr)($gp)
/* 03A264 0043A264 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03A268 0043A268 8DE20004 */  lw          $v0, 0x4($t7)
/* 03A26C 0043A26C 8FB80020 */  lw          $t8, 0x20($sp)
.L0043A270:
/* 03A270 0043A270 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03A274 0043A274 8F8187C8 */  lw          $at, %got(pcfdcur)($gp)
/* 03A278 0043A278 0018C980 */  sll         $t9, $t8, 6
/* 03A27C 0043A27C 00594021 */  addu        $t0, $v0, $t9
/* 03A280 0043A280 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03A284 0043A284 03E00008 */  jr          $ra
/* 03A288 0043A288 AC280000 */   sw         $t0, 0x0($at)
