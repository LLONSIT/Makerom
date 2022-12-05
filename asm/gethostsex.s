glabel gethostsex # 201
/* 023F50 00423F50 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 023F54 00423F54 240E0001 */  addiu       $t6, $zero, 0x1
/* 023F58 00423F58 AFAE0004 */  sw          $t6, 0x4($sp)
/* 023F5C 00423F5C 83AF0004 */  lb          $t7, 0x4($sp)
/* 023F60 00423F60 24010001 */  addiu       $at, $zero, 0x1
/* 023F64 00423F64 00001025 */  move        $v0, $zero
/* 023F68 00423F68 15E10003 */  bne         $t7, $at, .L00423F78
/* 023F6C 00423F6C 00000000 */   nop
/* 023F70 00423F70 10000001 */  b           .L00423F78
/* 023F74 00423F74 24020001 */   addiu      $v0, $zero, 0x1
.L00423F78:
/* 023F78 00423F78 03E00008 */  jr          $ra
/* 023F7C 00423F7C 27BD0008 */   addiu      $sp, $sp, 0x8
