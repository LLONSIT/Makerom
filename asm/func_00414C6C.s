glabel func_00414C6C # 57
# _gp_disp: 0xFC090D4
.set noreorder; .cpload $t9; # .set reorder
/* 014C78 00414C78 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014C7C 00414C7C AFBF001C */  sw          $ra, 0x1C($sp)
/* 014C80 00414C80 10850005 */  beq         $a0, $a1, .L00414C98
/* 014C84 00414C84 AFBC0018 */   sw         $gp, 0x18($sp)
/* 014C88 00414C88 8F998108 */  lw          $t9, %call16(memcpy)($gp)
/* 014C8C 00414C8C 0320F809 */  jalr        $t9
/* 014C90 00414C90 00000000 */   nop
/* 014C94 00414C94 8FBC0018 */  lw          $gp, 0x18($sp)
.L00414C98:
/* 014C98 00414C98 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014C9C 00414C9C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014CA0 00414CA0 03E00008 */  jr          $ra
/* 014CA4 00414CA4 00000000 */   nop
