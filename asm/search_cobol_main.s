glabel search_cobol_main # 618
/* 037F44 00437F44 8C8E009C */  lw          $t6, 0x9C($a0)
/* 037F48 00437F48 8C8200D8 */  lw          $v0, 0xD8($a0)
/* 037F4C 00437F4C 8DCF0058 */  lw          $t7, 0x58($t6)
/* 037F50 00437F50 00401825 */  move        $v1, $v0
/* 037F54 00437F54 00024900 */  sll         $t1, $v0, 4
/* 037F58 00437F58 004F2821 */  addu        $a1, $v0, $t7
/* 037F5C 00437F5C 0045082B */  sltu        $at, $v0, $a1
/* 037F60 00437F60 50200011 */  beql        $at, $zero, .L00437FA8
/* 037F64 00437F64 2402FFFF */   addiu      $v0, $zero, -0x1
/* 037F68 00437F68 8C9800AC */  lw          $t8, 0xAC($a0)
/* 037F6C 00437F6C 0002C900 */  sll         $t9, $v0, 4
/* 037F70 00437F70 00095023 */  negu        $t2, $t1
/* 037F74 00437F74 03194021 */  addu        $t0, $t8, $t9
/* 037F78 00437F78 010A3021 */  addu        $a2, $t0, $t2
.L00437F7C:
/* 037F7C 00437F7C 8CCB0000 */  lw          $t3, 0x0($a2)
/* 037F80 00437F80 000B6840 */  sll         $t5, $t3, 1
/* 037F84 00437F84 05A30004 */  bgezl       $t5, .L00437F98
/* 037F88 00437F88 24630001 */   addiu      $v1, $v1, 0x1
/* 037F8C 00437F8C 03E00008 */  jr          $ra
/* 037F90 00437F90 00601025 */   move       $v0, $v1
/* 037F94 00437F94 24630001 */  addiu       $v1, $v1, 0x1
.L00437F98:
/* 037F98 00437F98 0065082B */  sltu        $at, $v1, $a1
/* 037F9C 00437F9C 1420FFF7 */  bnez        $at, .L00437F7C
/* 037FA0 00437FA0 24C60010 */   addiu      $a2, $a2, 0x10
/* 037FA4 00437FA4 2402FFFF */  addiu       $v0, $zero, -0x1
.L00437FA8:
/* 037FA8 00437FA8 03E00008 */  jr          $ra
/* 037FAC 00437FAC 00000000 */   nop
