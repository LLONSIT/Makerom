glabel obj_map_diff # 300
# _gp_disp: 0xFBF3B58
.set noreorder; .cpload $t9; # .set reorder
/* 02A1F4 0042A1F4 8F9982C4 */  lw          $t9, %call16(obj_base_address)($gp)
/* 02A1F8 0042A1F8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02A1FC 0042A1FC AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A200 0042A200 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A204 0042A204 0320F809 */  jalr        $t9
/* 02A208 0042A208 AFA40028 */   sw         $a0, 0x28($sp)
/* 02A20C 0042A20C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A210 0042A210 AFA20024 */  sw          $v0, 0x24($sp)
/* 02A214 0042A214 8FA40028 */  lw          $a0, 0x28($sp)
/* 02A218 0042A218 8F9982CC */  lw          $t9, %call16(obj_map_address)($gp)
/* 02A21C 0042A21C 0320F809 */  jalr        $t9
/* 02A220 0042A220 00000000 */   nop
/* 02A224 0042A224 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A228 0042A228 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02A22C 0042A22C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A230 0042A230 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02A234 0042A234 03E00008 */  jr          $ra
/* 02A238 0042A238 01C21023 */   subu       $v0, $t6, $v0
