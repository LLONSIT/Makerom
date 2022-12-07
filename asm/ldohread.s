glabel ldohread # 235
/* 025A84 00425A84 8C8E002C */  lw          $t6, 0x2C($a0)
/* 025A88 00425A88 00A04025 */  move        $t0, $a1
/* 025A8C 00425A8C 00001025 */  move        $v0, $zero
/* 025A90 00425A90 8DC30094 */  lw          $v1, 0x94($t6)
/* 025A94 00425A94 10600011 */  beqz        $v1, .L00425ADC
/* 025A98 00425A98 24690030 */   addiu      $t1, $v1, 0x30
/* 025A9C 00425A9C 0060C825 */  move        $t9, $v1
.L00425AA0:
/* 025AA0 00425AA0 8F380000 */  lw          $t8, 0x0($t9)
/* 025AA4 00425AA4 2739000C */  addiu       $t9, $t9, 0xC
/* 025AA8 00425AA8 2508000C */  addiu       $t0, $t0, 0xC
/* 025AAC 00425AAC AD18FFF4 */  sw          $t8, -0xC($t0)
/* 025AB0 00425AB0 8F2FFFF8 */  lw          $t7, -0x8($t9)
/* 025AB4 00425AB4 AD0FFFF8 */  sw          $t7, -0x8($t0)
/* 025AB8 00425AB8 8F38FFFC */  lw          $t8, -0x4($t9)
/* 025ABC 00425ABC 1729FFF8 */  bne         $t9, $t1, .L00425AA0
/* 025AC0 00425AC0 AD18FFFC */   sw         $t8, -0x4($t0)
/* 025AC4 00425AC4 8F380000 */  lw          $t8, 0x0($t9)
/* 025AC8 00425AC8 24020001 */  addiu       $v0, $zero, 0x1
/* 025ACC 00425ACC AD180000 */  sw          $t8, 0x0($t0)
/* 025AD0 00425AD0 8F2F0004 */  lw          $t7, 0x4($t9)
/* 025AD4 00425AD4 03E00008 */  jr          $ra
/* 025AD8 00425AD8 AD0F0004 */   sw         $t7, 0x4($t0)
.L00425ADC:
/* 025ADC 00425ADC 03E00008 */  jr          $ra
/* 025AE0 00425AE0 00000000 */   nop
