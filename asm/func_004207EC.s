glabel func_004207EC # 159
/* 0207EC 004207EC 00801025 */  move        $v0, $a0
/* 0207F0 004207F0 00061880 */  sll         $v1, $a2, 2
/* 0207F4 004207F4 00832021 */  addu        $a0, $a0, $v1
/* 0207F8 004207F8 0044382B */  sltu        $a3, $v0, $a0
/* 0207FC 004207FC 00A32821 */  addu        $a1, $a1, $v1
/* 020800 00420800 10E00010 */  beqz        $a3, .L00420844
/* 020804 00420804 2484FFFC */   addiu      $a0, $a0, -0x4
.L00420808:
/* 020808 00420808 90AEFFFF */  lbu         $t6, -0x1($a1)
/* 02080C 0042080C 90B8FFFE */  lbu         $t8, -0x2($a1)
/* 020810 00420810 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 020814 00420814 000E7A00 */  sll         $t7, $t6, 8
/* 020818 00420818 01F8C821 */  addu        $t9, $t7, $t8
/* 02081C 0042081C 90ACFFFC */  lbu         $t4, -0x4($a1)
/* 020820 00420820 00194200 */  sll         $t0, $t9, 8
/* 020824 00420824 01095021 */  addu        $t2, $t0, $t1
/* 020828 00420828 000A5A00 */  sll         $t3, $t2, 8
/* 02082C 0042082C 0044382B */  sltu        $a3, $v0, $a0
/* 020830 00420830 018B6821 */  addu        $t5, $t4, $t3
/* 020834 00420834 2484FFFC */  addiu       $a0, $a0, -0x4
/* 020838 00420838 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 02083C 0042083C 14E0FFF2 */  bnez        $a3, .L00420808
/* 020840 00420840 AC8D0004 */   sw         $t5, 0x4($a0)
.L00420844:
/* 020844 00420844 03E00008 */  jr          $ra
/* 020848 00420848 00000000 */   nop