glabel _ld_init_rt_proc_table # 239
# _gp_disp: 0xFBF7E9C
.set noreorder; .cpload $t9; # .set reorder
/* 025EB0 00425EB0 8F998450 */  lw          $t9, %call16(obj_rld_map)($gp)
/* 025EB4 00425EB4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 025EB8 00425EB8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 025EBC 00425EBC AFBC0018 */  sw          $gp, 0x18($sp)
/* 025EC0 00425EC0 0320F809 */  jalr        $t9
/* 025EC4 00425EC4 8C84002C */   lw         $a0, 0x2C($a0)
/* 025EC8 00425EC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025ECC 00425ECC 8C440000 */  lw          $a0, 0x0($v0)
/* 025ED0 00425ED0 00003025 */  move        $a2, $zero
/* 025ED4 00425ED4 8F998518 */  lw          $t9, %call16(foreach_obj)($gp)
/* 025ED8 00425ED8 8F8582A8 */  lw          $a1, %got(_create_rt_proc_table)($gp)
/* 025EDC 00425EDC 0320F809 */  jalr        $t9
/* 025EE0 00425EE0 00000000 */   nop
/* 025EE4 00425EE4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 025EE8 00425EE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025EEC 00425EEC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 025EF0 00425EF0 03E00008 */  jr          $ra
/* 025EF4 00425EF4 00000000 */   nop
/* 025EF8 00425EF8 00000000 */  nop
/* 025EFC 00425EFC 00000000 */  nop
/* 025F00 00425F00 00000000 */  nop
/* 025F04 00425F04 00000000 */  nop
/* 025F08 00425F08 00000000 */  nop
/* 025F0C 00425F0C 00000000 */  nop
/* 025F10 00425F10 00000000 */  nop
/* 025F14 00425F14 00000000 */  nop
/* 025F18 00425F18 00000000 */  nop
/* 025F1C 00425F1C 00000000 */  nop
/* 025F20 00425F20 00000000 */  nop
/* 025F24 00425F24 00000000 */  nop
/* 025F28 00425F28 00000000 */  nop
/* 025F2C 00425F2C 00000000 */  nop
