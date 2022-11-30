glabel func_00419CA8 # 91
/* 019CA8 00419CA8 00801025 */  move        $v0, $a0
/* 019CAC 00419CAC 00061840 */  sll         $v1, $a2, 1
/* 019CB0 00419CB0 00832021 */  addu        $a0, $a0, $v1
/* 019CB4 00419CB4 0044382B */  sltu        $a3, $v0, $a0
/* 019CB8 00419CB8 00A32821 */  addu        $a1, $a1, $v1
/* 019CBC 00419CBC 10E0000A */  beqz        $a3, .L00419CE8
/* 019CC0 00419CC0 2484FFFE */   addiu      $a0, $a0, -0x2
.L00419CC4:
/* 019CC4 00419CC4 90AFFFFE */  lbu         $t7, -0x2($a1)
/* 019CC8 00419CC8 90AEFFFF */  lbu         $t6, -0x1($a1)
/* 019CCC 00419CCC 0044382B */  sltu        $a3, $v0, $a0
/* 019CD0 00419CD0 000FC200 */  sll         $t8, $t7, 8
/* 019CD4 00419CD4 01D8C821 */  addu        $t9, $t6, $t8
/* 019CD8 00419CD8 2484FFFE */  addiu       $a0, $a0, -0x2
/* 019CDC 00419CDC 24A5FFFE */  addiu       $a1, $a1, -0x2
/* 019CE0 00419CE0 14E0FFF8 */  bnez        $a3, .L00419CC4
/* 019CE4 00419CE4 A4990002 */   sh         $t9, 0x2($a0)
.L00419CE8:
/* 019CE8 00419CE8 03E00008 */  jr          $ra
/* 019CEC 00419CEC 00000000 */   nop
