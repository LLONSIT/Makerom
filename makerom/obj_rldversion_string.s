glabel obj_rldversion_string # 354
/* 02A4D0 0042A4D0 8C830148 */  lw          $v1, 0x148($a0)
/* 02A4D4 0042A4D4 8C8E0160 */  lw          $t6, 0x160($a0)
/* 02A4D8 0042A4D8 01C3082B */  sltu        $at, $t6, $v1
/* 02A4DC 0042A4DC 50200004 */  beql        $at, $zero, .L0042A4F0
/* 02A4E0 0042A4E0 8C8F011C */   lw         $t7, 0x11C($a0)
/* 02A4E4 0042A4E4 03E00008 */  jr          $ra
/* 02A4E8 0042A4E8 8C82011C */   lw         $v0, 0x11C($a0)
/* 02A4EC 0042A4EC 8C8F011C */  lw          $t7, 0x11C($a0)
.L0042A4F0:
/* 02A4F0 0042A4F0 01E31021 */  addu        $v0, $t7, $v1
/* 02A4F4 0042A4F4 03E00008 */  jr          $ra
/* 02A4F8 0042A4F8 00000000 */   nop
