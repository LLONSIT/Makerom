.section .rodata
glabel STR_10014120
/* 044120 10014120 */ .asciz "st_textblock: block pending set in illegal case\n"
                      .balign 4


.section .text
glabel st_textblock # 690
# _gp_disp: 0xFBE1260
.set noreorder; .cpload $t9; # .set reorder
/* 03CAEC 0043CAEC 8F83802C */  lw          $v1, %got(D_10015D44)($gp)
/* 03CAF0 0043CAF0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03CAF4 0043CAF4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03CAF8 0043CAF8 24635D44 */  addiu       $v1, $v1, %lo(D_10015D44)
/* 03CAFC 0043CAFC 8C620000 */  lw          $v0, 0x0($v1)
/* 03CB00 0043CB00 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03CB04 0043CB04 1040002A */  beqz        $v0, .L0043CBB0
/* 03CB08 0043CB08 00000000 */   nop
/* 03CB0C 0043CB0C 8F8E8030 */  lw          $t6, %got(B_1001B804)($gp)
/* 03CB10 0043CB10 00002025 */  move        $a0, $zero
/* 03CB14 0043CB14 00002825 */  move        $a1, $zero
/* 03CB18 0043CB18 8DCEB804 */  lw          $t6, %lo(B_1001B804)($t6)
/* 03CB1C 0043CB1C 29C10002 */  slti        $at, $t6, 0x2
/* 03CB20 0043CB20 14200023 */  bnez        $at, .L0043CBB0
/* 03CB24 0043CB24 00000000 */   nop
/* 03CB28 0043CB28 AC600000 */  sw          $zero, 0x0($v1)
/* 03CB2C 0043CB2C 8F9985FC */  lw          $t9, %call16(st_symadd)($gp)
/* 03CB30 0043CB30 24060007 */  addiu       $a2, $zero, 0x7
/* 03CB34 0043CB34 24070001 */  addiu       $a3, $zero, 0x1
/* 03CB38 0043CB38 0320F809 */  jalr        $t9
/* 03CB3C 0043CB3C AFA00010 */   sw         $zero, 0x10($sp)
/* 03CB40 0043CB40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CB44 0043CB44 AFA20034 */  sw          $v0, 0x34($sp)
/* 03CB48 0043CB48 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03CB4C 0043CB4C 0320F809 */  jalr        $t9
/* 03CB50 0043CB50 00000000 */   nop
/* 03CB54 0043CB54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CB58 0043CB58 8FAF0034 */  lw          $t7, 0x34($sp)
/* 03CB5C 0043CB5C 27A3002C */  addiu       $v1, $sp, 0x2C
/* 03CB60 0043CB60 8F998030 */  lw          $t9, %got(B_1001B804)($gp)
/* 03CB64 0043CB64 8F988030 */  lw          $t8, %got(B_1001B800)($gp)
/* 03CB68 0043CB68 AFA2002C */  sw          $v0, 0x2C($sp)
/* 03CB6C 0043CB6C 8F39B804 */  lw          $t9, %lo(B_1001B804)($t9)
/* 03CB70 0043CB70 8F18B800 */  lw          $t8, %lo(B_1001B800)($t8)
/* 03CB74 0043CB74 AFAF0030 */  sw          $t7, 0x30($sp)
/* 03CB78 0043CB78 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03CB7C 0043CB7C 001940C0 */  sll         $t0, $t9, 3
/* 03CB80 0043CB80 03084821 */  addu        $t1, $t8, $t0
/* 03CB84 0043CB84 AD2BFFF8 */  sw          $t3, -0x8($t1)
/* 03CB88 0043CB88 8C6A0004 */  lw          $t2, 0x4($v1)
/* 03CB8C 0043CB8C AD2AFFFC */  sw          $t2, -0x4($t1)
/* 03CB90 0043CB90 8C640000 */  lw          $a0, 0x0($v1)
/* 03CB94 0043CB94 8F9985CC */  lw          $t9, %call16(st_idn_dn)($gp)
/* 03CB98 0043CB98 AFA40000 */  sw          $a0, 0x0($sp)
/* 03CB9C 0043CB9C 8C650004 */  lw          $a1, 0x4($v1)
/* 03CBA0 0043CBA0 0320F809 */  jalr        $t9
/* 03CBA4 0043CBA4 AFA50004 */   sw         $a1, 0x4($sp)
/* 03CBA8 0043CBA8 10000009 */  b           .L0043CBD0
/* 03CBAC 0043CBAC 8FBC0020 */   lw         $gp, 0x20($sp)
.L0043CBB0:
/* 03CBB0 0043CBB0 50400007 */  beql        $v0, $zero, .L0043CBD0
/* 03CBB4 0043CBB4 00001025 */   move       $v0, $zero
/* 03CBB8 0043CBB8 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03CBBC 0043CBBC 8F84802C */  lw          $a0, %got(STR_10014120)($gp)
/* 03CBC0 0043CBC0 0320F809 */  jalr        $t9
/* 03CBC4 0043CBC4 24844120 */   addiu      $a0, $a0, %lo(STR_10014120)
/* 03CBC8 0043CBC8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03CBCC 0043CBCC 00001025 */  move        $v0, $zero
.L0043CBD0:
/* 03CBD0 0043CBD0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03CBD4 0043CBD4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03CBD8 0043CBD8 03E00008 */  jr          $ra
/* 03CBDC 0043CBDC 00000000 */   nop
