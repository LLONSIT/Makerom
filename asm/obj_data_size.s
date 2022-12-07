glabel obj_data_size # 364
# _gp_disp: 0xFBF37FC
.set noreorder; .cpload $t9; # .set reorder
/* 02A550 0042A550 8F99839C */  lw          $t9, %call16(obj_bss_start)($gp)
/* 02A554 0042A554 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02A558 0042A558 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A55C 0042A55C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A560 0042A560 0320F809 */  jalr        $t9
/* 02A564 0042A564 AFA40028 */   sw         $a0, 0x28($sp)
/* 02A568 0042A568 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A56C 0042A56C AFA20024 */  sw          $v0, 0x24($sp)
/* 02A570 0042A570 8FA40028 */  lw          $a0, 0x28($sp)
/* 02A574 0042A574 8F998398 */  lw          $t9, %call16(obj_data_start)($gp)
/* 02A578 0042A578 0320F809 */  jalr        $t9
/* 02A57C 0042A57C 00000000 */   nop
/* 02A580 0042A580 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A584 0042A584 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02A588 0042A588 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A58C 0042A58C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02A590 0042A590 03E00008 */  jr          $ra
/* 02A594 0042A594 01C21023 */   subu       $v0, $t6, $v0
