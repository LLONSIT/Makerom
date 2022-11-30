glabel list_last # 552
/* 02FAF4 0042FAF4 10800006 */  beqz        $a0, .L0042FB10
/* 02FAF8 0042FAF8 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02FAFC 0042FAFC 8C830008 */  lw          $v1, 0x8($a0)
/* 02FB00 0042FB00 10600003 */  beqz        $v1, .L0042FB10
/* 02FB04 0042FB04 00000000 */   nop
/* 02FB08 0042FB08 03E00008 */  jr          $ra
/* 02FB0C 0042FB0C 8C620000 */   lw         $v0, 0x0($v1)
.L0042FB10:
/* 02FB10 0042FB10 03E00008 */  jr          $ra
/* 02FB14 0042FB14 00000000 */   nop
