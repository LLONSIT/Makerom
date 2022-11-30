glabel func_00425F98 # 241
/* 025F98 00425F98 8C830004 */  lw          $v1, 0x4($a0)
/* 025F9C 00425F9C 8CA60004 */  lw          $a2, 0x4($a1)
/* 025FA0 00425FA0 0066082B */  sltu        $at, $v1, $a2
/* 025FA4 00425FA4 10200003 */  beqz        $at, .L00425FB4
/* 025FA8 00425FA8 00C31026 */   xor        $v0, $a2, $v1
/* 025FAC 00425FAC 03E00008 */  jr          $ra
/* 025FB0 00425FB0 2402FFFF */   addiu      $v0, $zero, -0x1
.L00425FB4:
/* 025FB4 00425FB4 0002102B */  sltu        $v0, $zero, $v0
/* 025FB8 00425FB8 03E00008 */  jr          $ra
/* 025FBC 00425FBC 00000000 */   nop
