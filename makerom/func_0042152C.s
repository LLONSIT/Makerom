glabel func_0042152C # 174
/* 02152C 0042152C 00801025 */  move        $v0, $a0
/* 021530 00421530 00061880 */  sll         $v1, $a2, 2
/* 021534 00421534 00832021 */  addu        $a0, $a0, $v1
/* 021538 00421538 0044382B */  sltu        $a3, $v0, $a0
/* 02153C 0042153C 00A32821 */  addu        $a1, $a1, $v1
/* 021540 00421540 10E00010 */  beqz        $a3, .L00421584
/* 021544 00421544 2484FFFC */   addiu      $a0, $a0, -0x4
.L00421548:
/* 021548 00421548 90AEFFFC */  lbu         $t6, -0x4($a1)
/* 02154C 0042154C 90B8FFFD */  lbu         $t8, -0x3($a1)
/* 021550 00421550 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 021554 00421554 000E7A00 */  sll         $t7, $t6, 8
/* 021558 00421558 01F8C821 */  addu        $t9, $t7, $t8
/* 02155C 0042155C 90ACFFFF */  lbu         $t4, -0x1($a1)
/* 021560 00421560 00194200 */  sll         $t0, $t9, 8
/* 021564 00421564 01095021 */  addu        $t2, $t0, $t1
/* 021568 00421568 000A5A00 */  sll         $t3, $t2, 8
/* 02156C 0042156C 0044382B */  sltu        $a3, $v0, $a0
/* 021570 00421570 018B6821 */  addu        $t5, $t4, $t3
/* 021574 00421574 2484FFFC */  addiu       $a0, $a0, -0x4
/* 021578 00421578 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 02157C 0042157C 14E0FFF2 */  bnez        $a3, .L00421548
/* 021580 00421580 AC8D0004 */   sw         $t5, 0x4($a0)
.L00421584:
/* 021584 00421584 03E00008 */  jr          $ra
/* 021588 00421588 00000000 */   nop
/* 02158C 0042158C 00000000 */  nop
