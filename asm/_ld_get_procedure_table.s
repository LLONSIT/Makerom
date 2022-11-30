glabel _ld_get_procedure_table # 238
# _gp_disp: 0xFBF7F0C
.set noreorder; .cpload $t9; # .set reorder
/* 025E40 00425E40 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 025E44 00425E44 8F998450 */  lw          $t9, %call16(obj_rld_map)($gp)
/* 025E48 00425E48 AFBF001C */  sw          $ra, 0x1C($sp)
/* 025E4C 00425E4C AFBC0018 */  sw          $gp, 0x18($sp)
/* 025E50 00425E50 AFA40020 */  sw          $a0, 0x20($sp)
/* 025E54 00425E54 0320F809 */  jalr        $t9
/* 025E58 00425E58 8CA4002C */   lw         $a0, 0x2C($a1)
/* 025E5C 00425E5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025E60 00425E60 8C440000 */  lw          $a0, 0x0($v0)
/* 025E64 00425E64 8FA60020 */  lw          $a2, 0x20($sp)
/* 025E68 00425E68 8F998518 */  lw          $t9, %call16(foreach_obj)($gp)
/* 025E6C 00425E6C 8F8582A4 */  lw          $a1, %got(obj_find_procedure_table)($gp)
/* 025E70 00425E70 0320F809 */  jalr        $t9
/* 025E74 00425E74 00000000 */   nop
/* 025E78 00425E78 2401FFFF */  addiu       $at, $zero, -0x1
/* 025E7C 00425E7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025E80 00425E80 14410003 */  bne         $v0, $at, .L00425E90
/* 025E84 00425E84 00401825 */   move       $v1, $v0
/* 025E88 00425E88 10000002 */  b           .L00425E94
/* 025E8C 00425E8C 00001025 */   move       $v0, $zero
.L00425E90:
/* 025E90 00425E90 00601025 */  move        $v0, $v1
.L00425E94:
/* 025E94 00425E94 8FBF001C */  lw          $ra, 0x1C($sp)
/* 025E98 00425E98 27BD0020 */  addiu       $sp, $sp, 0x20
/* 025E9C 00425E9C 03E00008 */  jr          $ra
/* 025EA0 00425EA0 00000000 */   nop
