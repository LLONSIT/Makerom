glabel func_0042075C # 157
/* 02075C 0042075C 00801025 */  move        $v0, $a0
/* 020760 00420760 00061840 */  sll         $v1, $a2, 1
/* 020764 00420764 00832021 */  addu        $a0, $a0, $v1
/* 020768 00420768 0044382B */  sltu        $a3, $v0, $a0
/* 02076C 0042076C 00A32821 */  addu        $a1, $a1, $v1
/* 020770 00420770 10E0000A */  beqz        $a3, .L0042079C
/* 020774 00420774 2484FFFE */   addiu      $a0, $a0, -0x2
.L00420778:
/* 020778 00420778 90AFFFFF */  lbu         $t7, -0x1($a1)
/* 02077C 0042077C 90AEFFFE */  lbu         $t6, -0x2($a1)
/* 020780 00420780 0044382B */  sltu        $a3, $v0, $a0
/* 020784 00420784 000FC200 */  sll         $t8, $t7, 8
/* 020788 00420788 01D8C821 */  addu        $t9, $t6, $t8
/* 02078C 0042078C 2484FFFE */  addiu       $a0, $a0, -0x2
/* 020790 00420790 24A5FFFE */  addiu       $a1, $a1, -0x2
/* 020794 00420794 14E0FFF8 */  bnez        $a3, .L00420778
/* 020798 00420798 A4990002 */   sh         $t9, 0x2($a0)
.L0042079C:
/* 02079C 0042079C 03E00008 */  jr          $ra
/* 0207A0 004207A0 00000000 */   nop