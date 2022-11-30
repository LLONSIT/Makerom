glabel obj_dynsym_got # 422
# _gp_disp: 0xFBF3358
.set noreorder; .cpload $t9; # .set reorder
/* 02A9F4 0042A9F4 8F998318 */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02A9F8 0042A9F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A9FC 0042A9FC AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AA00 0042AA00 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AA04 0042AA04 AFA40020 */  sw          $a0, 0x20($sp)
/* 02AA08 0042AA08 0320F809 */  jalr        $t9
/* 02AA0C 0042AA0C AFA50024 */   sw         $a1, 0x24($sp)
/* 02AA10 0042AA10 8FA50024 */  lw          $a1, 0x24($sp)
/* 02AA14 0042AA14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AA18 0042AA18 00A2082B */  sltu        $at, $a1, $v0
/* 02AA1C 0042AA1C 10200007 */  beqz        $at, .L0042AA3C
/* 02AA20 0042AA20 00000000 */   nop
/* 02AA24 0042AA24 8F9983E8 */  lw          $t9, %call16(obj_dynsym_value)($gp)
/* 02AA28 0042AA28 8FA40020 */  lw          $a0, 0x20($sp)
/* 02AA2C 0042AA2C 0320F809 */  jalr        $t9
/* 02AA30 0042AA30 00000000 */   nop
/* 02AA34 0042AA34 1000000F */  b           .L0042AA74
/* 02AA38 0042AA38 8FBC0018 */   lw         $gp, 0x18($sp)
.L0042AA3C:
/* 02AA3C 0042AA3C 8F998318 */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02AA40 0042AA40 8FA40020 */  lw          $a0, 0x20($sp)
/* 02AA44 0042AA44 0320F809 */  jalr        $t9
/* 02AA48 0042AA48 00000000 */   nop
/* 02AA4C 0042AA4C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02AA50 0042AA50 8FA50024 */  lw          $a1, 0x24($sp)
/* 02AA54 0042AA54 00024080 */  sll         $t0, $v0, 2
/* 02AA58 0042AA58 8DCF012C */  lw          $t7, 0x12C($t6)
/* 02AA5C 0042AA5C 0005C080 */  sll         $t8, $a1, 2
/* 02AA60 0042AA60 00084823 */  negu        $t1, $t0
/* 02AA64 0042AA64 01F8C821 */  addu        $t9, $t7, $t8
/* 02AA68 0042AA68 03295021 */  addu        $t2, $t9, $t1
/* 02AA6C 0042AA6C 8D420000 */  lw          $v0, 0x0($t2)
/* 02AA70 0042AA70 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042AA74:
/* 02AA74 0042AA74 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AA78 0042AA78 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AA7C 0042AA7C 03E00008 */  jr          $ra
/* 02AA80 0042AA80 00000000 */   nop
