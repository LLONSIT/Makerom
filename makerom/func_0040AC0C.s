.section .rodata
glabel STR_1000F648
/* 03F648 1000F648 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_1000F654
/* 03F654 1000F654 */ .asciz "Boot"
                      .balign 4

glabel STR_1000F65C
/* 03F65C 1000F65C */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_1000F674
/* 03F674 1000F674 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000F68C
/* 03F68C 1000F68C */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4


.section .text
glabel func_0040AC0C # 7
# _gp_disp: 0xFC13134
.set noreorder; .cpload $t9; # .set reorder
/* 00AC18 0040AC18 27BDFD50 */  addiu       $sp, $sp, -0x2B0
/* 00AC1C 0040AC1C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00AC20 0040AC20 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00AC24 0040AC24 AFA402B0 */  sw          $a0, 0x2B0($sp)
/* 00AC28 0040AC28 8FAE02B0 */  lw          $t6, 0x2B0($sp)
/* 00AC2C 0040AC2C 15C0000D */  bnez        $t6, .L0040AC64
/* 00AC30 0040AC30 00000000 */   nop
/* 00AC34 0040AC34 8F998018 */  lw          $t9, %got(func_0040B780)($gp)
/* 00AC38 0040AC38 8F85802C */  lw          $a1, %got(STR_1000F648)($gp)
/* 00AC3C 0040AC3C 8F86802C */  lw          $a2, %got(STR_1000F654)($gp)
/* 00AC40 0040AC40 2739B780 */  addiu       $t9, $t9, %lo(func_0040B780)
/* 00AC44 0040AC44 27A401AC */  addiu       $a0, $sp, 0x1AC
/* 00AC48 0040AC48 24A5F648 */  addiu       $a1, $a1, %lo(STR_1000F648)
/* 00AC4C 0040AC4C 0320F809 */  jalr        $t9
/* 00AC50 0040AC50 24C6F654 */   addiu      $a2, $a2, %lo(STR_1000F654)
/* 00AC54 0040AC54 10400003 */  beqz        $v0, .L0040AC64
/* 00AC58 0040AC58 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00AC5C 0040AC5C 27AF01AC */  addiu       $t7, $sp, 0x1AC
/* 00AC60 0040AC60 AFAF02B0 */  sw          $t7, 0x2B0($sp)
.L0040AC64:
/* 00AC64 0040AC64 8FB802B0 */  lw          $t8, 0x2B0($sp)
/* 00AC68 0040AC68 1300006A */  beqz        $t8, .L0040AE14
/* 00AC6C 0040AC6C 00000000 */   nop
/* 00AC70 0040AC70 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 00AC74 0040AC74 8FA402B0 */  lw          $a0, 0x2B0($sp)
/* 00AC78 0040AC78 24050800 */  addiu       $a1, $zero, 0x800
/* 00AC7C 0040AC7C 0320F809 */  jalr        $t9
/* 00AC80 0040AC80 00000000 */   nop
/* 00AC84 0040AC84 AFA202AC */  sw          $v0, 0x2AC($sp)
/* 00AC88 0040AC88 8FB902AC */  lw          $t9, 0x2AC($sp)
/* 00AC8C 0040AC8C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AC90 0040AC90 07210014 */  bgez        $t9, .L0040ACE4
/* 00AC94 0040AC94 00000000 */   nop
/* 00AC98 0040AC98 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00AC9C 0040AC9C 8F85802C */  lw          $a1, %got(STR_1000F65C)($gp)
/* 00ACA0 0040ACA0 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00ACA4 0040ACA4 27A40024 */  addiu       $a0, $sp, 0x24
/* 00ACA8 0040ACA8 8FA702B0 */  lw          $a3, 0x2B0($sp)
/* 00ACAC 0040ACAC 24A5F65C */  addiu       $a1, $a1, %lo(STR_1000F65C)
/* 00ACB0 0040ACB0 0320F809 */  jalr        $t9
/* 00ACB4 0040ACB4 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00ACB8 0040ACB8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ACBC 0040ACBC 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00ACC0 0040ACC0 27A40024 */  addiu       $a0, $sp, 0x24
/* 00ACC4 0040ACC4 0320F809 */  jalr        $t9
/* 00ACC8 0040ACC8 00000000 */   nop
/* 00ACCC 0040ACCC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ACD0 0040ACD0 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00ACD4 0040ACD4 24040001 */  addiu       $a0, $zero, 0x1
/* 00ACD8 0040ACD8 0320F809 */  jalr        $t9
/* 00ACDC 0040ACDC 00000000 */   nop
/* 00ACE0 0040ACE0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040ACE4:
/* 00ACE4 0040ACE4 8F9980BC */  lw          $t9, %call16(fstat)($gp)
/* 00ACE8 0040ACE8 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00ACEC 0040ACEC 27A50124 */  addiu       $a1, $sp, 0x124
/* 00ACF0 0040ACF0 0320F809 */  jalr        $t9
/* 00ACF4 0040ACF4 00000000 */   nop
/* 00ACF8 0040ACF8 04410019 */  bgez        $v0, .L0040AD60
/* 00ACFC 0040ACFC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00AD00 0040AD00 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00AD04 0040AD04 8F85802C */  lw          $a1, %got(STR_1000F674)($gp)
/* 00AD08 0040AD08 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00AD0C 0040AD0C 27A40024 */  addiu       $a0, $sp, 0x24
/* 00AD10 0040AD10 8FA702B0 */  lw          $a3, 0x2B0($sp)
/* 00AD14 0040AD14 24A5F674 */  addiu       $a1, $a1, %lo(STR_1000F674)
/* 00AD18 0040AD18 0320F809 */  jalr        $t9
/* 00AD1C 0040AD1C 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00AD20 0040AD20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AD24 0040AD24 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00AD28 0040AD28 27A40024 */  addiu       $a0, $sp, 0x24
/* 00AD2C 0040AD2C 0320F809 */  jalr        $t9
/* 00AD30 0040AD30 00000000 */   nop
/* 00AD34 0040AD34 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AD38 0040AD38 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00AD3C 0040AD3C 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00AD40 0040AD40 0320F809 */  jalr        $t9
/* 00AD44 0040AD44 00000000 */   nop
/* 00AD48 0040AD48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AD4C 0040AD4C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00AD50 0040AD50 24040001 */  addiu       $a0, $zero, 0x1
/* 00AD54 0040AD54 0320F809 */  jalr        $t9
/* 00AD58 0040AD58 00000000 */   nop
/* 00AD5C 0040AD5C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040AD60:
/* 00AD60 0040AD60 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 00AD64 0040AD64 8FA40154 */  lw          $a0, 0x154($sp)
/* 00AD68 0040AD68 0320F809 */  jalr        $t9
/* 00AD6C 0040AD6C 00000000 */   nop
/* 00AD70 0040AD70 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AD74 0040AD74 8F818720 */  lw          $at, %got(bootBuf)($gp)
/* 00AD78 0040AD78 AC220000 */  sw          $v0, 0x0($at)
/* 00AD7C 0040AD7C 8F888720 */  lw          $t0, %got(bootBuf)($gp)
/* 00AD80 0040AD80 8D080000 */  lw          $t0, 0x0($t0)
/* 00AD84 0040AD84 15000015 */  bnez        $t0, .L0040ADDC
/* 00AD88 0040AD88 00000000 */   nop
/* 00AD8C 0040AD8C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00AD90 0040AD90 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00AD94 0040AD94 8F85802C */  lw          $a1, %got(STR_1000F68C)($gp)
/* 00AD98 0040AD98 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00AD9C 0040AD9C 8FA70154 */  lw          $a3, 0x154($sp)
/* 00ADA0 0040ADA0 24840020 */  addiu       $a0, $a0, 0x20
/* 00ADA4 0040ADA4 24A5F68C */  addiu       $a1, $a1, %lo(STR_1000F68C)
/* 00ADA8 0040ADA8 0320F809 */  jalr        $t9
/* 00ADAC 0040ADAC 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00ADB0 0040ADB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ADB4 0040ADB4 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00ADB8 0040ADB8 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00ADBC 0040ADBC 0320F809 */  jalr        $t9
/* 00ADC0 0040ADC0 00000000 */   nop
/* 00ADC4 0040ADC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ADC8 0040ADC8 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00ADCC 0040ADCC 24040001 */  addiu       $a0, $zero, 0x1
/* 00ADD0 0040ADD0 0320F809 */  jalr        $t9
/* 00ADD4 0040ADD4 00000000 */   nop
/* 00ADD8 0040ADD8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040ADDC:
/* 00ADDC 0040ADDC 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00ADE0 0040ADE0 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00ADE4 0040ADE4 0320F809 */  jalr        $t9
/* 00ADE8 0040ADE8 00000000 */   nop
/* 00ADEC 0040ADEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ADF0 0040ADF0 8F9981B0 */  lw          $t9, %call16(readCoff)($gp)
/* 00ADF4 0040ADF4 8F858720 */  lw          $a1, %got(bootBuf)($gp)
/* 00ADF8 0040ADF8 8FA402B0 */  lw          $a0, 0x2B0($sp)
/* 00ADFC 0040ADFC 0320F809 */  jalr        $t9
/* 00AE00 0040AE00 8CA50000 */   lw         $a1, 0x0($a1)
/* 00AE04 0040AE04 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AE08 0040AE08 8F818730 */  lw          $at, %got(bootWordAlignedByteSize)($gp)
/* 00AE0C 0040AE0C 10000003 */  b           .L0040AE1C
/* 00AE10 0040AE10 AC220000 */   sw         $v0, 0x0($at)
.L0040AE14:
/* 00AE14 0040AE14 8F818720 */  lw          $at, %got(bootBuf)($gp)
/* 00AE18 0040AE18 AC200000 */  sw          $zero, 0x0($at)
.L0040AE1C:
/* 00AE1C 0040AE1C 10000001 */  b           .L0040AE24
/* 00AE20 0040AE20 00000000 */   nop
.L0040AE24:
/* 00AE24 0040AE24 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00AE28 0040AE28 27BD02B0 */  addiu       $sp, $sp, 0x2B0
/* 00AE2C 0040AE2C 03E00008 */  jr          $ra
/* 00AE30 0040AE30 00000000 */   nop
