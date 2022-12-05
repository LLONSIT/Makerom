glabel func_00420C60 # 164
/* 020C60 00420C60 00801025 */  move        $v0, $a0
/* 020C64 00420C64 000618C0 */  sll         $v1, $a2, 3
/* 020C68 00420C68 00832021 */  addu        $a0, $a0, $v1
/* 020C6C 00420C6C 0044382B */  sltu        $a3, $v0, $a0
/* 020C70 00420C70 00A32821 */  addu        $a1, $a1, $v1
/* 020C74 00420C74 10E0001B */  beqz        $a3, .L00420CE4
/* 020C78 00420C78 2484FFF8 */   addiu      $a0, $a0, -0x8
.L00420C7C:
/* 020C7C 00420C7C 90AEFFFC */  lbu         $t6, -0x4($a1)
/* 020C80 00420C80 90B8FFFD */  lbu         $t8, -0x3($a1)
/* 020C84 00420C84 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 020C88 00420C88 000E7A00 */  sll         $t7, $t6, 8
/* 020C8C 00420C8C 01F8C821 */  addu        $t9, $t7, $t8
/* 020C90 00420C90 90ACFFFF */  lbu         $t4, -0x1($a1)
/* 020C94 00420C94 00194200 */  sll         $t0, $t9, 8
/* 020C98 00420C98 01095021 */  addu        $t2, $t0, $t1
/* 020C9C 00420C9C 000A5A00 */  sll         $t3, $t2, 8
/* 020CA0 00420CA0 018B6821 */  addu        $t5, $t4, $t3
/* 020CA4 00420CA4 AC8D0004 */  sw          $t5, 0x4($a0)
/* 020CA8 00420CA8 90AEFFF8 */  lbu         $t6, -0x8($a1)
/* 020CAC 00420CAC 90B8FFF9 */  lbu         $t8, -0x7($a1)
/* 020CB0 00420CB0 90A9FFFA */  lbu         $t1, -0x6($a1)
/* 020CB4 00420CB4 000E7A00 */  sll         $t7, $t6, 8
/* 020CB8 00420CB8 01F8C821 */  addu        $t9, $t7, $t8
/* 020CBC 00420CBC 90ABFFFB */  lbu         $t3, -0x5($a1)
/* 020CC0 00420CC0 00194200 */  sll         $t0, $t9, 8
/* 020CC4 00420CC4 01095021 */  addu        $t2, $t0, $t1
/* 020CC8 00420CC8 000A6200 */  sll         $t4, $t2, 8
/* 020CCC 00420CCC 0044382B */  sltu        $a3, $v0, $a0
/* 020CD0 00420CD0 016C6821 */  addu        $t5, $t3, $t4
/* 020CD4 00420CD4 2484FFF8 */  addiu       $a0, $a0, -0x8
/* 020CD8 00420CD8 24A5FFF8 */  addiu       $a1, $a1, -0x8
/* 020CDC 00420CDC 14E0FFE7 */  bnez        $a3, .L00420C7C
/* 020CE0 00420CE0 AC8D0008 */   sw         $t5, 0x8($a0)
.L00420CE4:
/* 020CE4 00420CE4 03E00008 */  jr          $ra
/* 020CE8 00420CE8 00000000 */   nop
