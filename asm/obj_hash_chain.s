glabel obj_hash_chain # 421
# _gp_disp: 0xFBF33B0
.set noreorder; .cpload $t9; # .set reorder
/* 02A99C 0042A99C 8F9983FC */  lw          $t9, %call16(obj_nbucket)($gp)
/* 02A9A0 0042A9A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A9A4 0042A9A4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A9A8 0042A9A8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A9AC 0042A9AC AFA40020 */  sw          $a0, 0x20($sp)
/* 02A9B0 0042A9B0 0320F809 */  jalr        $t9
/* 02A9B4 0042A9B4 AFA50024 */   sw         $a1, 0x24($sp)
/* 02A9B8 0042A9B8 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02A9BC 0042A9BC 8FA80024 */  lw          $t0, 0x24($sp)
/* 02A9C0 0042A9C0 0002C080 */  sll         $t8, $v0, 2
/* 02A9C4 0042A9C4 8DCF0118 */  lw          $t7, 0x118($t6)
/* 02A9C8 0042A9C8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A9CC 0042A9CC 00084880 */  sll         $t1, $t0, 2
/* 02A9D0 0042A9D0 01F8C821 */  addu        $t9, $t7, $t8
/* 02A9D4 0042A9D4 03295021 */  addu        $t2, $t9, $t1
/* 02A9D8 0042A9D8 8D420008 */  lw          $v0, 0x8($t2)
/* 02A9DC 0042A9DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A9E0 0042A9E0 03E00008 */  jr          $ra
/* 02A9E4 0042A9E4 27BD0020 */   addiu      $sp, $sp, 0x20
