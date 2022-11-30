glabel obj_checksum_not_match # 442
# _gp_disp: 0xFBF2FEC
.set noreorder; .cpload $t9; # .set reorder
/* 02AD60 0042AD60 8F99841C */  lw          $t9, %call16(obj_liblist_csum)($gp)
/* 02AD64 0042AD64 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02AD68 0042AD68 AFA40020 */  sw          $a0, 0x20($sp)
/* 02AD6C 0042AD6C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AD70 0042AD70 00A02025 */  move        $a0, $a1
/* 02AD74 0042AD74 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AD78 0042AD78 0320F809 */  jalr        $t9
/* 02AD7C 0042AD7C 00C02825 */   move       $a1, $a2
/* 02AD80 0042AD80 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02AD84 0042AD84 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AD88 0042AD88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AD8C 0042AD8C 8DCF0150 */  lw          $t7, 0x150($t6)
/* 02AD90 0042AD90 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AD94 0042AD94 004F1026 */  xor         $v0, $v0, $t7
/* 02AD98 0042AD98 03E00008 */  jr          $ra
/* 02AD9C 0042AD9C 0002102B */   sltu       $v0, $zero, $v0
