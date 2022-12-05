.section .rodata
glabel STR_1000F870
/* 03F870 1000F870 */ .asciz "ROOT"
                      .balign 4

glabel STR_1000F878
/* 03F878 1000F878 */ .asciz "WORKAREA"
                      .balign 4

glabel STR_1000F884
/* 03F884 1000F884 */ .asciz "/"
                      .balign 4

glabel STR_1000F888
/* 03F888 1000F888 */ .asciz "gloadFindFile: can't find file %s\n"
                      .balign 4


.section .text
glabel func_0040B780 # 11
# _gp_disp: 0xFC125C0
.set noreorder; .cpload $t9; # .set reorder
/* 00B78C 0040B78C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00B790 0040B790 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00B794 0040B794 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00B798 0040B798 AFA40038 */  sw          $a0, 0x38($sp)
/* 00B79C 0040B79C AFA5003C */  sw          $a1, 0x3C($sp)
/* 00B7A0 0040B7A0 AFA60040 */  sw          $a2, 0x40($sp)
/* 00B7A4 0040B7A4 AFB00014 */  sw          $s0, 0x14($sp)
/* 00B7A8 0040B7A8 AFA00028 */  sw          $zero, 0x28($sp)
.L0040B7AC:
/* 00B7AC 0040B7AC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00B7B0 0040B7B0 A1C00000 */  sb          $zero, 0x0($t6)
/* 00B7B4 0040B7B4 8FB00028 */  lw          $s0, 0x28($sp)
/* 00B7B8 0040B7B8 12000009 */  beqz        $s0, .L0040B7E0
/* 00B7BC 0040B7BC 00000000 */   nop
/* 00B7C0 0040B7C0 24010001 */  addiu       $at, $zero, 0x1
/* 00B7C4 0040B7C4 1201000B */  beq         $s0, $at, .L0040B7F4
/* 00B7C8 0040B7C8 00000000 */   nop
/* 00B7CC 0040B7CC 24010002 */  addiu       $at, $zero, 0x2
/* 00B7D0 0040B7D0 1201000D */  beq         $s0, $at, .L0040B808
/* 00B7D4 0040B7D4 00000000 */   nop
/* 00B7D8 0040B7D8 1000000E */  b           .L0040B814
/* 00B7DC 0040B7DC 00000000 */   nop
.L0040B7E0:
/* 00B7E0 0040B7E0 8F8F802C */  lw          $t7, %got(STR_1000F870)($gp)
/* 00B7E4 0040B7E4 25EFF870 */  addiu       $t7, $t7, %lo(STR_1000F870)
/* 00B7E8 0040B7E8 AFAF0034 */  sw          $t7, 0x34($sp)
/* 00B7EC 0040B7EC 10000009 */  b           .L0040B814
/* 00B7F0 0040B7F0 00000000 */   nop
.L0040B7F4:
/* 00B7F4 0040B7F4 8F98802C */  lw          $t8, %got(STR_1000F878)($gp)
/* 00B7F8 0040B7F8 2718F878 */  addiu       $t8, $t8, %lo(STR_1000F878)
/* 00B7FC 0040B7FC AFB80034 */  sw          $t8, 0x34($sp)
/* 00B800 0040B800 10000004 */  b           .L0040B814
/* 00B804 0040B804 00000000 */   nop
.L0040B808:
/* 00B808 0040B808 AFA00034 */  sw          $zero, 0x34($sp)
/* 00B80C 0040B80C 10000001 */  b           .L0040B814
/* 00B810 0040B810 00000000 */   nop
.L0040B814:
/* 00B814 0040B814 8FB90034 */  lw          $t9, 0x34($sp)
/* 00B818 0040B818 13200012 */  beqz        $t9, .L0040B864
/* 00B81C 0040B81C 00000000 */   nop
/* 00B820 0040B820 8F998094 */  lw          $t9, %call16(getenv)($gp)
/* 00B824 0040B824 8FA40034 */  lw          $a0, 0x34($sp)
/* 00B828 0040B828 0320F809 */  jalr        $t9
/* 00B82C 0040B82C 00000000 */   nop
/* 00B830 0040B830 AFA20030 */  sw          $v0, 0x30($sp)
/* 00B834 0040B834 8FA80030 */  lw          $t0, 0x30($sp)
/* 00B838 0040B838 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B83C 0040B83C 15000003 */  bnez        $t0, .L0040B84C
/* 00B840 0040B840 00000000 */   nop
/* 00B844 0040B844 10000025 */  b           .L0040B8DC
/* 00B848 0040B848 00000000 */   nop
.L0040B84C:
/* 00B84C 0040B84C 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00B850 0040B850 8FA40038 */  lw          $a0, 0x38($sp)
/* 00B854 0040B854 8FA50030 */  lw          $a1, 0x30($sp)
/* 00B858 0040B858 0320F809 */  jalr        $t9
/* 00B85C 0040B85C 00000000 */   nop
/* 00B860 0040B860 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B864:
/* 00B864 0040B864 8FA9003C */  lw          $t1, 0x3C($sp)
/* 00B868 0040B868 1120000D */  beqz        $t1, .L0040B8A0
/* 00B86C 0040B86C 00000000 */   nop
/* 00B870 0040B870 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00B874 0040B874 8FA40038 */  lw          $a0, 0x38($sp)
/* 00B878 0040B878 8FA5003C */  lw          $a1, 0x3C($sp)
/* 00B87C 0040B87C 0320F809 */  jalr        $t9
/* 00B880 0040B880 00000000 */   nop
/* 00B884 0040B884 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B888 0040B888 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00B88C 0040B88C 8F85802C */  lw          $a1, %got(STR_1000F884)($gp)
/* 00B890 0040B890 8FA40038 */  lw          $a0, 0x38($sp)
/* 00B894 0040B894 0320F809 */  jalr        $t9
/* 00B898 0040B898 24A5F884 */   addiu      $a1, $a1, %lo(STR_1000F884)
/* 00B89C 0040B89C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B8A0:
/* 00B8A0 0040B8A0 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00B8A4 0040B8A4 8FA40038 */  lw          $a0, 0x38($sp)
/* 00B8A8 0040B8A8 8FA50040 */  lw          $a1, 0x40($sp)
/* 00B8AC 0040B8AC 0320F809 */  jalr        $t9
/* 00B8B0 0040B8B0 00000000 */   nop
/* 00B8B4 0040B8B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B8B8 0040B8B8 8F9980C8 */  lw          $t9, %call16(access)($gp)
/* 00B8BC 0040B8BC 8FA40038 */  lw          $a0, 0x38($sp)
/* 00B8C0 0040B8C0 24050004 */  addiu       $a1, $zero, 0x4
/* 00B8C4 0040B8C4 0320F809 */  jalr        $t9
/* 00B8C8 0040B8C8 00000000 */   nop
/* 00B8CC 0040B8CC 14400003 */  bnez        $v0, .L0040B8DC
/* 00B8D0 0040B8D0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00B8D4 0040B8D4 10000014 */  b           .L0040B928
/* 00B8D8 0040B8D8 8FA20038 */   lw         $v0, 0x38($sp)
.L0040B8DC:
/* 00B8DC 0040B8DC 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00B8E0 0040B8E0 254B0001 */  addiu       $t3, $t2, 0x1
/* 00B8E4 0040B8E4 29610003 */  slti        $at, $t3, 0x3
/* 00B8E8 0040B8E8 1420FFB0 */  bnez        $at, .L0040B7AC
/* 00B8EC 0040B8EC AFAB0028 */   sw         $t3, 0x28($sp)
/* 00B8F0 0040B8F0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00B8F4 0040B8F4 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00B8F8 0040B8F8 8F85802C */  lw          $a1, %got(STR_1000F888)($gp)
/* 00B8FC 0040B8FC 8FA60038 */  lw          $a2, 0x38($sp)
/* 00B900 0040B900 24840020 */  addiu       $a0, $a0, 0x20
/* 00B904 0040B904 0320F809 */  jalr        $t9
/* 00B908 0040B908 24A5F888 */   addiu      $a1, $a1, %lo(STR_1000F888)
/* 00B90C 0040B90C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B910 0040B910 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00B914 0040B914 A1800000 */  sb          $zero, 0x0($t4)
/* 00B918 0040B918 10000003 */  b           .L0040B928
/* 00B91C 0040B91C 00001025 */   move       $v0, $zero
/* 00B920 0040B920 10000001 */  b           .L0040B928
/* 00B924 0040B924 00000000 */   nop
.L0040B928:
/* 00B928 0040B928 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00B92C 0040B92C 8FB00014 */  lw          $s0, 0x14($sp)
/* 00B930 0040B930 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00B934 0040B934 03E00008 */  jr          $ra
/* 00B938 0040B938 00000000 */   nop
