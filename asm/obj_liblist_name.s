glabel obj_liblist_name # 434
# _gp_disp: 0xFBF3164
.set noreorder; .cpload $t9; # .set reorder
/* 02ABE8 0042ABE8 8F9982FC */  lw          $t9, %call16(obj_liblist)($gp)
/* 02ABEC 0042ABEC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02ABF0 0042ABF0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02ABF4 0042ABF4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02ABF8 0042ABF8 AFA40020 */  sw          $a0, 0x20($sp)
/* 02ABFC 0042ABFC 0320F809 */  jalr        $t9
/* 02AC00 0042AC00 AFA50024 */   sw         $a1, 0x24($sp)
/* 02AC04 0042AC04 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02AC08 0042AC08 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AC0C 0042AC0C 8FA40020 */  lw          $a0, 0x20($sp)
/* 02AC10 0042AC10 000E7880 */  sll         $t7, $t6, 2
/* 02AC14 0042AC14 8F9983E0 */  lw          $t9, %call16(obj_dynstring)($gp)
/* 02AC18 0042AC18 01EE7821 */  addu        $t7, $t7, $t6
/* 02AC1C 0042AC1C 000F7880 */  sll         $t7, $t7, 2
/* 02AC20 0042AC20 004FC021 */  addu        $t8, $v0, $t7
/* 02AC24 0042AC24 0320F809 */  jalr        $t9
/* 02AC28 0042AC28 8F050000 */   lw         $a1, 0x0($t8)
/* 02AC2C 0042AC2C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AC30 0042AC30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AC34 0042AC34 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AC38 0042AC38 03E00008 */  jr          $ra
/* 02AC3C 0042AC3C 00000000 */   nop
