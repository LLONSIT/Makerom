.section .rodata
glabel STR_10013CE4
/* 043CE4 10013CE4 */ .asciz "st_stradd: argument is nil\n"
                      .balign 4


.section .text
glabel st_stradd # 656
# _gp_disp: 0xFBE3034
.set noreorder; .cpload $t9; # .set reorder
/* 03AD18 0043AD18 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03AD1C 0043AD1C AFBF0024 */  sw          $ra, 0x24($sp)
/* 03AD20 0043AD20 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03AD24 0043AD24 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03AD28 0043AD28 AFB10018 */  sw          $s1, 0x18($sp)
/* 03AD2C 0043AD2C AFB00014 */  sw          $s0, 0x14($sp)
/* 03AD30 0043AD30 14800006 */  bnez        $a0, .L0043AD4C
/* 03AD34 0043AD34 AFA40028 */   sw         $a0, 0x28($sp)
/* 03AD38 0043AD38 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 03AD3C 0043AD3C 8F84802C */  lw          $a0, %got(STR_10013CE4)($gp)
/* 03AD40 0043AD40 0320F809 */  jalr        $t9
/* 03AD44 0043AD44 24843CE4 */   addiu      $a0, $a0, %lo(STR_10013CE4)
/* 03AD48 0043AD48 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043AD4C:
/* 03AD4C 0043AD4C 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 03AD50 0043AD50 8FA40028 */  lw          $a0, 0x28($sp)
/* 03AD54 0043AD54 0320F809 */  jalr        $t9
/* 03AD58 0043AD58 00000000 */   nop
/* 03AD5C 0043AD5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AD60 0043AD60 24520001 */  addiu       $s2, $v0, 0x1
/* 03AD64 0043AD64 8F8F87C4 */  lw          $t7, %got(st_pchdr)($gp)
/* 03AD68 0043AD68 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03AD6C 0043AD6C 8DF80004 */  lw          $t8, 0x4($t7)
/* 03AD70 0043AD70 17000006 */  bnez        $t8, .L0043AD8C
/* 03AD74 0043AD74 00000000 */   nop
/* 03AD78 0043AD78 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AD7C 0043AD7C 8F84802C */  lw          $a0, %got(D_10015B60)($gp)
/* 03AD80 0043AD80 0320F809 */  jalr        $t9
/* 03AD84 0043AD84 24845B60 */   addiu      $a0, $a0, %lo(D_10015B60)
/* 03AD88 0043AD88 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043AD8C:
/* 03AD8C 0043AD8C 8F9187C8 */  lw          $s1, %got(pcfdcur)($gp)
/* 03AD90 0043AD90 8E300000 */  lw          $s0, 0x0($s1)
/* 03AD94 0043AD94 56000008 */  bnel        $s0, $zero, .L0043ADB8
/* 03AD98 0043AD98 8E19003C */   lw         $t9, 0x3C($s0)
/* 03AD9C 0043AD9C 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03ADA0 0043ADA0 8F84802C */  lw          $a0, %got(D_10015B9C)($gp)
/* 03ADA4 0043ADA4 0320F809 */  jalr        $t9
/* 03ADA8 0043ADA8 24845B9C */   addiu      $a0, $a0, %lo(D_10015B9C)
/* 03ADAC 0043ADAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03ADB0 0043ADB0 8E300000 */  lw          $s0, 0x0($s1)
/* 03ADB4 0043ADB4 8E19003C */  lw          $t9, 0x3C($s0)
.L0043ADB8:
/* 03ADB8 0043ADB8 33280080 */  andi        $t0, $t9, 0x80
/* 03ADBC 0043ADBC 51000008 */  beql        $t0, $zero, .L0043ADE0
/* 03ADC0 0043ADC0 8E090000 */   lw         $t1, 0x0($s0)
/* 03ADC4 0043ADC4 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03ADC8 0043ADC8 8F84802C */  lw          $a0, %got(D_10015BD0)($gp)
/* 03ADCC 0043ADCC 0320F809 */  jalr        $t9
/* 03ADD0 0043ADD0 24845BD0 */   addiu      $a0, $a0, %lo(D_10015BD0)
/* 03ADD4 0043ADD4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03ADD8 0043ADD8 8E300000 */  lw          $s0, 0x0($s1)
/* 03ADDC 0043ADDC 8E090000 */  lw          $t1, 0x0($s0)
.L0043ADE0:
/* 03ADE0 0043ADE0 8E0A0018 */  lw          $t2, 0x18($s0)
/* 03ADE4 0043ADE4 8D23000C */  lw          $v1, 0xC($t1)
/* 03ADE8 0043ADE8 00725821 */  addu        $t3, $v1, $s2
/* 03ADEC 0043ADEC 014B082A */  slt         $at, $t2, $t3
/* 03ADF0 0043ADF0 10200012 */  beqz        $at, .L0043AE3C
/* 03ADF4 0043ADF4 00000000 */   nop
.L0043ADF8:
/* 03ADF8 0043ADF8 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03ADFC 0043ADFC 8E040014 */  lw          $a0, 0x14($s0)
/* 03AE00 0043AE00 26050018 */  addiu       $a1, $s0, 0x18
/* 03AE04 0043AE04 24060001 */  addiu       $a2, $zero, 0x1
/* 03AE08 0043AE08 0320F809 */  jalr        $t9
/* 03AE0C 0043AE0C 24070200 */   addiu      $a3, $zero, 0x200
/* 03AE10 0043AE10 8E2C0000 */  lw          $t4, 0x0($s1)
/* 03AE14 0043AE14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AE18 0043AE18 AD820014 */  sw          $v0, 0x14($t4)
/* 03AE1C 0043AE1C 8E300000 */  lw          $s0, 0x0($s1)
/* 03AE20 0043AE20 8E0D0000 */  lw          $t5, 0x0($s0)
/* 03AE24 0043AE24 8E0E0018 */  lw          $t6, 0x18($s0)
/* 03AE28 0043AE28 8DA3000C */  lw          $v1, 0xC($t5)
/* 03AE2C 0043AE2C 00727821 */  addu        $t7, $v1, $s2
/* 03AE30 0043AE30 01CF082A */  slt         $at, $t6, $t7
/* 03AE34 0043AE34 1420FFF0 */  bnez        $at, .L0043ADF8
/* 03AE38 0043AE38 00000000 */   nop
.L0043AE3C:
/* 03AE3C 0043AE3C 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 03AE40 0043AE40 8E180014 */  lw          $t8, 0x14($s0)
/* 03AE44 0043AE44 8FA50028 */  lw          $a1, 0x28($sp)
/* 03AE48 0043AE48 0320F809 */  jalr        $t9
/* 03AE4C 0043AE4C 03032021 */   addu       $a0, $t8, $v1
/* 03AE50 0043AE50 8E390000 */  lw          $t9, 0x0($s1)
/* 03AE54 0043AE54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03AE58 0043AE58 8F240000 */  lw          $a0, 0x0($t9)
/* 03AE5C 0043AE5C 8C82000C */  lw          $v0, 0xC($a0)
/* 03AE60 0043AE60 00524021 */  addu        $t0, $v0, $s2
/* 03AE64 0043AE64 AC88000C */  sw          $t0, 0xC($a0)
/* 03AE68 0043AE68 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03AE6C 0043AE6C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03AE70 0043AE70 8FB10018 */  lw          $s1, 0x18($sp)
/* 03AE74 0043AE74 8FB00014 */  lw          $s0, 0x14($sp)
/* 03AE78 0043AE78 03E00008 */  jr          $ra
/* 03AE7C 0043AE7C 27BD0028 */   addiu      $sp, $sp, 0x28
