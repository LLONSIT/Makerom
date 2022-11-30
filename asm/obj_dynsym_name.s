glabel obj_dynsym_name # 413
# _gp_disp: 0xFBF34C4
.set noreorder; .cpload $t9; # .set reorder
/* 02A888 0042A888 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A88C 0042A88C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A890 0042A890 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A894 0042A894 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02A898 0042A898 8F9983E0 */  lw          $t9, %call16(obj_dynstring)($gp)
/* 02A89C 0042A89C 00057900 */  sll         $t7, $a1, 4
/* 02A8A0 0042A8A0 01CFC021 */  addu        $t8, $t6, $t7
/* 02A8A4 0042A8A4 0320F809 */  jalr        $t9
/* 02A8A8 0042A8A8 8F050000 */   lw         $a1, 0x0($t8)
/* 02A8AC 0042A8AC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A8B0 0042A8B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A8B4 0042A8B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A8B8 0042A8B8 03E00008 */  jr          $ra
/* 02A8BC 0042A8BC 00000000 */   nop
