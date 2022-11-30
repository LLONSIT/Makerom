glabel ldrseek # 227
# _gp_disp: 0xFBF87A4
.set noreorder; .cpload $t9; # .set reorder
/* 0255A8 004255A8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0255AC 004255AC AFBF001C */  sw          $ra, 0x1C($sp)
/* 0255B0 004255B0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0255B4 004255B4 AFA50024 */  sw          $a1, 0x24($sp)
/* 0255B8 004255B8 8C8E002C */  lw          $t6, 0x2C($a0)
/* 0255BC 004255BC 30A7FFFF */  andi        $a3, $a1, 0xFFFF
/* 0255C0 004255C0 0007C080 */  sll         $t8, $a3, 2
/* 0255C4 004255C4 8DCF0098 */  lw          $t7, 0x98($t6)
/* 0255C8 004255C8 0307C021 */  addu        $t8, $t8, $a3
/* 0255CC 004255CC 0018C0C0 */  sll         $t8, $t8, 3
/* 0255D0 004255D0 01F8C821 */  addu        $t9, $t7, $t8
/* 0255D4 004255D4 8F25FFF0 */  lw          $a1, -0x10($t9)
/* 0255D8 004255D8 8F998250 */  lw          $t9, %call16(ldfseek)($gp)
/* 0255DC 004255DC 00003025 */  move        $a2, $zero
/* 0255E0 004255E0 0320F809 */  jalr        $t9
/* 0255E4 004255E4 00000000 */   nop
/* 0255E8 004255E8 14400003 */  bnez        $v0, .L004255F8
/* 0255EC 004255EC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0255F0 004255F0 10000002 */  b           .L004255FC
/* 0255F4 004255F4 24020001 */   addiu      $v0, $zero, 0x1
.L004255F8:
/* 0255F8 004255F8 00001025 */  move        $v0, $zero
.L004255FC:
/* 0255FC 004255FC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 025600 00425600 27BD0020 */  addiu       $sp, $sp, 0x20
/* 025604 00425604 03E00008 */  jr          $ra
/* 025608 00425608 00000000 */   nop
