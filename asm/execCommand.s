.section .rodata
glabel STR_1000F954
/* 03F954 1000F954 */ .asciz "makerom: cannot execute command: %s\n"
                      .balign 4

glabel STR_1000F97C
/* 03F97C 1000F97C */ .asciz "makerom: [%s] returned %d (%08x), errno=%d\n"
                      .balign 4


.section .text
glabel execCommand # 16
# _gp_disp: 0xFC11FB8
.set noreorder; .cpload $t9; # .set reorder
/* 00BD94 0040BD94 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00BD98 0040BD98 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00BD9C 0040BD9C AFBC0020 */  sw          $gp, 0x20($sp)
/* 00BDA0 0040BDA0 AFA40030 */  sw          $a0, 0x30($sp)
/* 00BDA4 0040BDA4 8F9980D0 */  lw          $t9, %call16(system)($gp)
/* 00BDA8 0040BDA8 8FA40030 */  lw          $a0, 0x30($sp)
/* 00BDAC 0040BDAC 0320F809 */  jalr        $t9
/* 00BDB0 0040BDB0 00000000 */   nop
/* 00BDB4 0040BDB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00BDB8 0040BDB8 AFA2002C */  sw          $v0, 0x2C($sp)
/* 00BDBC 0040BDBC 8FAE002C */  lw          $t6, 0x2C($sp)
/* 00BDC0 0040BDC0 2401FFFF */  addiu       $at, $zero, -0x1
/* 00BDC4 0040BDC4 15C10013 */  bne         $t6, $at, .L0040BE14
/* 00BDC8 0040BDC8 00000000 */   nop
/* 00BDCC 0040BDCC 8F8F804C */  lw          $t7, %got(errno)($gp)
/* 00BDD0 0040BDD0 8F998050 */  lw          $t9, %got(sys_errlist)($gp)
/* 00BDD4 0040BDD4 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00BDD8 0040BDD8 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00BDDC 0040BDDC 8F85802C */  lw          $a1, %got(STR_1000F954)($gp)
/* 00BDE0 0040BDE0 24840020 */  addiu       $a0, $a0, 0x20
/* 00BDE4 0040BDE4 000FC080 */  sll         $t8, $t7, 2
/* 00BDE8 0040BDE8 03194021 */  addu        $t0, $t8, $t9
/* 00BDEC 0040BDEC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00BDF0 0040BDF0 8D060000 */  lw          $a2, 0x0($t0)
/* 00BDF4 0040BDF4 24A5F954 */  addiu       $a1, $a1, %lo(STR_1000F954)
/* 00BDF8 0040BDF8 0320F809 */  jalr        $t9
/* 00BDFC 0040BDFC 00000000 */   nop
/* 00BE00 0040BE00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00BE04 0040BE04 1000003B */  b           .L0040BEF4
/* 00BE08 0040BE08 2402FFFF */   addiu      $v0, $zero, -0x1
/* 00BE0C 0040BE0C 10000037 */  b           .L0040BEEC
/* 00BE10 0040BE10 00000000 */   nop
.L0040BE14:
/* 00BE14 0040BE14 27A9002C */  addiu       $t1, $sp, 0x2C
/* 00BE18 0040BE18 8D2A0000 */  lw          $t2, 0x0($t1)
/* 00BE1C 0040BE1C 314B00FF */  andi        $t3, $t2, 0xFF
/* 00BE20 0040BE20 15600009 */  bnez        $t3, .L0040BE48
/* 00BE24 0040BE24 00000000 */   nop
/* 00BE28 0040BE28 000A6203 */  sra         $t4, $t2, 8
/* 00BE2C 0040BE2C 318D00FF */  andi        $t5, $t4, 0xFF
/* 00BE30 0040BE30 15A00005 */  bnez        $t5, .L0040BE48
/* 00BE34 0040BE34 00000000 */   nop
/* 00BE38 0040BE38 1000002E */  b           .L0040BEF4
/* 00BE3C 0040BE3C 00001025 */   move       $v0, $zero
/* 00BE40 0040BE40 1000002A */  b           .L0040BEEC
/* 00BE44 0040BE44 00000000 */   nop
.L0040BE48:
/* 00BE48 0040BE48 8F8E8680 */  lw          $t6, %got(keep_going)($gp)
/* 00BE4C 0040BE4C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00BE50 0040BE50 11C0000F */  beqz        $t6, .L0040BE90
/* 00BE54 0040BE54 00000000 */   nop
/* 00BE58 0040BE58 27AF002C */  addiu       $t7, $sp, 0x2C
/* 00BE5C 0040BE5C 8DF80000 */  lw          $t8, 0x0($t7)
/* 00BE60 0040BE60 331900FF */  andi        $t9, $t8, 0xFF
/* 00BE64 0040BE64 1720000A */  bnez        $t9, .L0040BE90
/* 00BE68 0040BE68 00000000 */   nop
/* 00BE6C 0040BE6C 00184203 */  sra         $t0, $t8, 8
/* 00BE70 0040BE70 310900FF */  andi        $t1, $t0, 0xFF
/* 00BE74 0040BE74 24010001 */  addiu       $at, $zero, 0x1
/* 00BE78 0040BE78 15210005 */  bne         $t1, $at, .L0040BE90
/* 00BE7C 0040BE7C 00000000 */   nop
/* 00BE80 0040BE80 1000001C */  b           .L0040BEF4
/* 00BE84 0040BE84 24020001 */   addiu      $v0, $zero, 0x1
/* 00BE88 0040BE88 10000018 */  b           .L0040BEEC
/* 00BE8C 0040BE8C 00000000 */   nop
.L0040BE90:
/* 00BE90 0040BE90 8F8B865C */  lw          $t3, %got(debug)($gp)
/* 00BE94 0040BE94 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00BE98 0040BE98 11600012 */  beqz        $t3, .L0040BEE4
/* 00BE9C 0040BE9C 00000000 */   nop
/* 00BEA0 0040BEA0 8F8D804C */  lw          $t5, %got(errno)($gp)
/* 00BEA4 0040BEA4 27AA002C */  addiu       $t2, $sp, 0x2C
/* 00BEA8 0040BEA8 8D470000 */  lw          $a3, 0x0($t2)
/* 00BEAC 0040BEAC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00BEB0 0040BEB0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00BEB4 0040BEB4 8F85802C */  lw          $a1, %got(STR_1000F97C)($gp)
/* 00BEB8 0040BEB8 8FAC002C */  lw          $t4, 0x2C($sp)
/* 00BEBC 0040BEBC 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00BEC0 0040BEC0 00073A03 */  sra         $a3, $a3, 8
/* 00BEC4 0040BEC4 30E700FF */  andi        $a3, $a3, 0xFF
/* 00BEC8 0040BEC8 8FA60030 */  lw          $a2, 0x30($sp)
/* 00BECC 0040BECC 24840020 */  addiu       $a0, $a0, 0x20
/* 00BED0 0040BED0 24A5F97C */  addiu       $a1, $a1, %lo(STR_1000F97C)
/* 00BED4 0040BED4 AFAC0010 */  sw          $t4, 0x10($sp)
/* 00BED8 0040BED8 0320F809 */  jalr        $t9
/* 00BEDC 0040BEDC AFAD0014 */   sw         $t5, 0x14($sp)
/* 00BEE0 0040BEE0 8FBC0020 */  lw          $gp, 0x20($sp)
.L0040BEE4:
/* 00BEE4 0040BEE4 10000003 */  b           .L0040BEF4
/* 00BEE8 0040BEE8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040BEEC:
/* 00BEEC 0040BEEC 10000001 */  b           .L0040BEF4
/* 00BEF0 0040BEF0 00000000 */   nop
.L0040BEF4:
/* 00BEF4 0040BEF4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00BEF8 0040BEF8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00BEFC 0040BEFC 03E00008 */  jr          $ra
/* 00BF00 0040BF00 00000000 */   nop
/* 00BF04 0040BF04 00000000 */  nop
/* 00BF08 0040BF08 00000000 */  nop
/* 00BF0C 0040BF0C 00000000 */  nop
