.section .rodata
glabel STR_100108AC
/* 0408AC 100108AC */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_100108D8
/* 0408D8 100108D8 */ .asciz "makerom: %s: cannot find %s section\n"
                      .balign 4


.section .text
glabel func_0040F5C0 # 28
# _gp_disp: 0xFC0E780
.set noreorder; .cpload $t9; # .set reorder
/* 00F5CC 0040F5CC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00F5D0 0040F5D0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00F5D4 0040F5D4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00F5D8 0040F5D8 AFA40030 */  sw          $a0, 0x30($sp)
/* 00F5DC 0040F5DC AFA50034 */  sw          $a1, 0x34($sp)
/* 00F5E0 0040F5E0 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00F5E4 0040F5E4 240E0001 */  addiu       $t6, $zero, 0x1
/* 00F5E8 0040F5E8 AFAE0024 */  sw          $t6, 0x24($sp)
/* 00F5EC 0040F5EC 8DF80010 */  lw          $t8, 0x10($t7)
/* 00F5F0 0040F5F0 97190030 */  lhu         $t9, 0x30($t8)
/* 00F5F4 0040F5F4 2F210002 */  sltiu       $at, $t9, 0x2
/* 00F5F8 0040F5F8 1420003C */  bnez        $at, .L0040F6EC
/* 00F5FC 0040F5FC 00000000 */   nop
.L0040F600:
/* 00F600 0040F600 8F998220 */  lw          $t9, %call16(_elf_getscn)($gp)
/* 00F604 0040F604 8FA80030 */  lw          $t0, 0x30($sp)
/* 00F608 0040F608 8FA50024 */  lw          $a1, 0x24($sp)
/* 00F60C 0040F60C 0320F809 */  jalr        $t9
/* 00F610 0040F610 8D04000C */   lw         $a0, 0xC($t0)
/* 00F614 0040F614 AFA2002C */  sw          $v0, 0x2C($sp)
/* 00F618 0040F618 8FA9002C */  lw          $t1, 0x2C($sp)
/* 00F61C 0040F61C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F620 0040F620 1120000A */  beqz        $t1, .L0040F64C
/* 00F624 0040F624 00000000 */   nop
/* 00F628 0040F628 8F99820C */  lw          $t9, %call16(elf32_getshdr)($gp)
/* 00F62C 0040F62C 01202025 */  move        $a0, $t1
/* 00F630 0040F630 0320F809 */  jalr        $t9
/* 00F634 0040F634 00000000 */   nop
/* 00F638 0040F638 AFA20028 */  sw          $v0, 0x28($sp)
/* 00F63C 0040F63C 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00F640 0040F640 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F644 0040F644 1540000D */  bnez        $t2, .L0040F67C
/* 00F648 0040F648 00000000 */   nop
.L0040F64C:
/* 00F64C 0040F64C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F650 0040F650 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F654 0040F654 8F85802C */  lw          $a1, %got(STR_100108AC)($gp)
/* 00F658 0040F658 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00F65C 0040F65C 8FA70024 */  lw          $a3, 0x24($sp)
/* 00F660 0040F660 24840020 */  addiu       $a0, $a0, 0x20
/* 00F664 0040F664 24A508AC */  addiu       $a1, $a1, %lo(STR_100108AC)
/* 00F668 0040F668 0320F809 */  jalr        $t9
/* 00F66C 0040F66C 8D660004 */   lw         $a2, 0x4($t3)
/* 00F670 0040F670 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F674 0040F674 10000034 */  b           .L0040F748
/* 00F678 0040F678 00001025 */   move       $v0, $zero
.L0040F67C:
/* 00F67C 0040F67C 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00F680 0040F680 8F9981E4 */  lw          $t9, %call16(elf_strptr)($gp)
/* 00F684 0040F684 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00F688 0040F688 8D8D0010 */  lw          $t5, 0x10($t4)
/* 00F68C 0040F68C 8D84000C */  lw          $a0, 0xC($t4)
/* 00F690 0040F690 8DC60000 */  lw          $a2, 0x0($t6)
/* 00F694 0040F694 0320F809 */  jalr        $t9
/* 00F698 0040F698 95A50032 */   lhu        $a1, 0x32($t5)
/* 00F69C 0040F69C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F6A0 0040F6A0 AFA20020 */  sw          $v0, 0x20($sp)
/* 00F6A4 0040F6A4 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 00F6A8 0040F6A8 8FA40020 */  lw          $a0, 0x20($sp)
/* 00F6AC 0040F6AC 8FA50034 */  lw          $a1, 0x34($sp)
/* 00F6B0 0040F6B0 0320F809 */  jalr        $t9
/* 00F6B4 0040F6B4 00000000 */   nop
/* 00F6B8 0040F6B8 14400003 */  bnez        $v0, .L0040F6C8
/* 00F6BC 0040F6BC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00F6C0 0040F6C0 1000000A */  b           .L0040F6EC
/* 00F6C4 0040F6C4 00000000 */   nop
.L0040F6C8:
/* 00F6C8 0040F6C8 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00F6CC 0040F6CC 8FB90030 */  lw          $t9, 0x30($sp)
/* 00F6D0 0040F6D0 25F80001 */  addiu       $t8, $t7, 0x1
/* 00F6D4 0040F6D4 AFB80024 */  sw          $t8, 0x24($sp)
/* 00F6D8 0040F6D8 8F280010 */  lw          $t0, 0x10($t9)
/* 00F6DC 0040F6DC 95090030 */  lhu         $t1, 0x30($t0)
/* 00F6E0 0040F6E0 0309082B */  sltu        $at, $t8, $t1
/* 00F6E4 0040F6E4 1420FFC6 */  bnez        $at, .L0040F600
/* 00F6E8 0040F6E8 00000000 */   nop
.L0040F6EC:
/* 00F6EC 0040F6EC 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00F6F0 0040F6F0 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00F6F4 0040F6F4 8D6C0010 */  lw          $t4, 0x10($t3)
/* 00F6F8 0040F6F8 958D0030 */  lhu         $t5, 0x30($t4)
/* 00F6FC 0040F6FC 014D082B */  sltu        $at, $t2, $t5
/* 00F700 0040F700 1420000D */  bnez        $at, .L0040F738
/* 00F704 0040F704 00000000 */   nop
/* 00F708 0040F708 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00F70C 0040F70C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00F710 0040F710 8F85802C */  lw          $a1, %got(STR_100108D8)($gp)
/* 00F714 0040F714 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00F718 0040F718 8FA70034 */  lw          $a3, 0x34($sp)
/* 00F71C 0040F71C 24840020 */  addiu       $a0, $a0, 0x20
/* 00F720 0040F720 24A508D8 */  addiu       $a1, $a1, %lo(STR_100108D8)
/* 00F724 0040F724 0320F809 */  jalr        $t9
/* 00F728 0040F728 8DC60004 */   lw         $a2, 0x4($t6)
/* 00F72C 0040F72C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F730 0040F730 10000005 */  b           .L0040F748
/* 00F734 0040F734 00001025 */   move       $v0, $zero
.L0040F738:
/* 00F738 0040F738 10000003 */  b           .L0040F748
/* 00F73C 0040F73C 8FA20028 */   lw         $v0, 0x28($sp)
/* 00F740 0040F740 10000001 */  b           .L0040F748
/* 00F744 0040F744 00000000 */   nop
.L0040F748:
/* 00F748 0040F748 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00F74C 0040F74C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00F750 0040F750 03E00008 */  jr          $ra
/* 00F754 0040F754 00000000 */   nop
