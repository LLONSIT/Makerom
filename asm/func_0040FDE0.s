.section .rodata
glabel STR_10010B70
/* 040B70 10010B70 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10010B84
/* 040B84 10010B84 */ .asciz "makerom: lstat failed: %s\n"
                      .balign 4

glabel STR_10010BA0
/* 040BA0 10010BA0 */ .asciz "makerom: %s: segment size changed\n"
                      .balign 4

glabel STR_10010BC4
/* 040BC4 10010BC4 */ .asciz "makerom: %s: read failed (%s)\n"
                      .balign 4


.section .text
glabel func_0040FDE0 # 30
# _gp_disp: 0xFC0DF60
.set noreorder; .cpload $t9; # .set reorder
/* 00FDEC 0040FDEC 27BDFF40 */  addiu       $sp, $sp, -0xC0
/* 00FDF0 0040FDF0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00FDF4 0040FDF4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00FDF8 0040FDF8 AFA400C0 */  sw          $a0, 0xC0($sp)
/* 00FDFC 0040FDFC AFA000AC */  sw          $zero, 0xAC($sp)
/* 00FE00 0040FE00 8FAE00C0 */  lw          $t6, 0xC0($sp)
/* 00FE04 0040FE04 8DCF0024 */  lw          $t7, 0x24($t6)
/* 00FE08 0040FE08 AFAF00B4 */  sw          $t7, 0xB4($sp)
/* 00FE0C 0040FE0C 8FB800C0 */  lw          $t8, 0xC0($sp)
/* 00FE10 0040FE10 8F190008 */  lw          $t9, 0x8($t8)
/* 00FE14 0040FE14 13200077 */  beqz        $t9, .L0040FFF4
/* 00FE18 0040FE18 AFB900BC */   sw         $t9, 0xBC($sp)
.L0040FE1C:
/* 00FE1C 0040FE1C 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 00FE20 0040FE20 8FA800BC */  lw          $t0, 0xBC($sp)
/* 00FE24 0040FE24 00002825 */  move        $a1, $zero
/* 00FE28 0040FE28 0320F809 */  jalr        $t9
/* 00FE2C 0040FE2C 8D040004 */   lw         $a0, 0x4($t0)
/* 00FE30 0040FE30 AFA200B8 */  sw          $v0, 0xB8($sp)
/* 00FE34 0040FE34 8FA900B8 */  lw          $t1, 0xB8($sp)
/* 00FE38 0040FE38 2401FFFF */  addiu       $at, $zero, -0x1
/* 00FE3C 0040FE3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FE40 0040FE40 15210012 */  bne         $t1, $at, .L0040FE8C
/* 00FE44 0040FE44 00000000 */   nop
/* 00FE48 0040FE48 8F8B804C */  lw          $t3, %got(errno)($gp)
/* 00FE4C 0040FE4C 8F8D8050 */  lw          $t5, %got(sys_errlist)($gp)
/* 00FE50 0040FE50 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FE54 0040FE54 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00FE58 0040FE58 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FE5C 0040FE5C 8F85802C */  lw          $a1, %got(STR_10010B70)($gp)
/* 00FE60 0040FE60 8FAA00BC */  lw          $t2, 0xBC($sp)
/* 00FE64 0040FE64 000B6080 */  sll         $t4, $t3, 2
/* 00FE68 0040FE68 018D7021 */  addu        $t6, $t4, $t5
/* 00FE6C 0040FE6C 8DC70000 */  lw          $a3, 0x0($t6)
/* 00FE70 0040FE70 24840020 */  addiu       $a0, $a0, 0x20
/* 00FE74 0040FE74 24A50B70 */  addiu       $a1, $a1, %lo(STR_10010B70)
/* 00FE78 0040FE78 0320F809 */  jalr        $t9
/* 00FE7C 0040FE7C 8D460004 */   lw         $a2, 0x4($t2)
/* 00FE80 0040FE80 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FE84 0040FE84 1000005F */  b           .L00410004
/* 00FE88 0040FE88 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FE8C:
/* 00FE8C 0040FE8C 8F9980BC */  lw          $t9, %call16(fstat)($gp)
/* 00FE90 0040FE90 8FA400B8 */  lw          $a0, 0xB8($sp)
/* 00FE94 0040FE94 27A50024 */  addiu       $a1, $sp, 0x24
/* 00FE98 0040FE98 0320F809 */  jalr        $t9
/* 00FE9C 0040FE9C 00000000 */   nop
/* 00FEA0 0040FEA0 2401FFFF */  addiu       $at, $zero, -0x1
/* 00FEA4 0040FEA4 14410011 */  bne         $v0, $at, .L0040FEEC
/* 00FEA8 0040FEA8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00FEAC 0040FEAC 8F8F804C */  lw          $t7, %got(errno)($gp)
/* 00FEB0 0040FEB0 8F998050 */  lw          $t9, %got(sys_errlist)($gp)
/* 00FEB4 0040FEB4 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FEB8 0040FEB8 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00FEBC 0040FEBC 8F85802C */  lw          $a1, %got(STR_10010B84)($gp)
/* 00FEC0 0040FEC0 24840020 */  addiu       $a0, $a0, 0x20
/* 00FEC4 0040FEC4 000FC080 */  sll         $t8, $t7, 2
/* 00FEC8 0040FEC8 03194021 */  addu        $t0, $t8, $t9
/* 00FECC 0040FECC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FED0 0040FED0 8D060000 */  lw          $a2, 0x0($t0)
/* 00FED4 0040FED4 24A50B84 */  addiu       $a1, $a1, %lo(STR_10010B84)
/* 00FED8 0040FED8 0320F809 */  jalr        $t9
/* 00FEDC 0040FEDC 00000000 */   nop
/* 00FEE0 0040FEE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FEE4 0040FEE4 10000047 */  b           .L00410004
/* 00FEE8 0040FEE8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FEEC:
/* 00FEEC 0040FEEC 8FA90054 */  lw          $t1, 0x54($sp)
/* 00FEF0 0040FEF0 AFA900B0 */  sw          $t1, 0xB0($sp)
/* 00FEF4 0040FEF4 8FAA00AC */  lw          $t2, 0xAC($sp)
/* 00FEF8 0040FEF8 8FAB00B0 */  lw          $t3, 0xB0($sp)
/* 00FEFC 0040FEFC 014B6021 */  addu        $t4, $t2, $t3
/* 00FF00 0040FF00 AFAC00AC */  sw          $t4, 0xAC($sp)
/* 00FF04 0040FF04 8FAE00C0 */  lw          $t6, 0xC0($sp)
/* 00FF08 0040FF08 8FAD00AC */  lw          $t5, 0xAC($sp)
/* 00FF0C 0040FF0C 8DCF0030 */  lw          $t7, 0x30($t6)
/* 00FF10 0040FF10 01ED082B */  sltu        $at, $t7, $t5
/* 00FF14 0040FF14 1020000C */  beqz        $at, .L0040FF48
/* 00FF18 0040FF18 00000000 */   nop
/* 00FF1C 0040FF1C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FF20 0040FF20 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FF24 0040FF24 8F85802C */  lw          $a1, %got(STR_10010BA0)($gp)
/* 00FF28 0040FF28 8FB800C0 */  lw          $t8, 0xC0($sp)
/* 00FF2C 0040FF2C 24840020 */  addiu       $a0, $a0, 0x20
/* 00FF30 0040FF30 24A50BA0 */  addiu       $a1, $a1, %lo(STR_10010BA0)
/* 00FF34 0040FF34 0320F809 */  jalr        $t9
/* 00FF38 0040FF38 8F060004 */   lw         $a2, 0x4($t8)
/* 00FF3C 0040FF3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FF40 0040FF40 10000030 */  b           .L00410004
/* 00FF44 0040FF44 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FF48:
/* 00FF48 0040FF48 8F99802C */  lw          $t9, %got(B_10016A60)($gp)
/* 00FF4C 0040FF4C 8FA800B4 */  lw          $t0, 0xB4($sp)
/* 00FF50 0040FF50 8FA400B8 */  lw          $a0, 0xB8($sp)
/* 00FF54 0040FF54 8F396A60 */  lw          $t9, %lo(B_10016A60)($t9)
/* 00FF58 0040FF58 8FA600B0 */  lw          $a2, 0xB0($sp)
/* 00FF5C 0040FF5C 03282821 */  addu        $a1, $t9, $t0
/* 00FF60 0040FF60 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 00FF64 0040FF64 0320F809 */  jalr        $t9
/* 00FF68 0040FF68 00000000 */   nop
/* 00FF6C 0040FF6C 8FA900B0 */  lw          $t1, 0xB0($sp)
/* 00FF70 0040FF70 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FF74 0040FF74 10490012 */  beq         $v0, $t1, .L0040FFC0
/* 00FF78 0040FF78 00000000 */   nop
/* 00FF7C 0040FF7C 8F8B804C */  lw          $t3, %got(errno)($gp)
/* 00FF80 0040FF80 8F8E8050 */  lw          $t6, %got(sys_errlist)($gp)
/* 00FF84 0040FF84 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00FF88 0040FF88 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00FF8C 0040FF8C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00FF90 0040FF90 8F85802C */  lw          $a1, %got(STR_10010BC4)($gp)
/* 00FF94 0040FF94 8FAA00BC */  lw          $t2, 0xBC($sp)
/* 00FF98 0040FF98 000B6080 */  sll         $t4, $t3, 2
/* 00FF9C 0040FF9C 018E6821 */  addu        $t5, $t4, $t6
/* 00FFA0 0040FFA0 8DA70000 */  lw          $a3, 0x0($t5)
/* 00FFA4 0040FFA4 24840020 */  addiu       $a0, $a0, 0x20
/* 00FFA8 0040FFA8 24A50BC4 */  addiu       $a1, $a1, %lo(STR_10010BC4)
/* 00FFAC 0040FFAC 0320F809 */  jalr        $t9
/* 00FFB0 0040FFB0 8D460004 */   lw         $a2, 0x4($t2)
/* 00FFB4 0040FFB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FFB8 0040FFB8 10000012 */  b           .L00410004
/* 00FFBC 0040FFBC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FFC0:
/* 00FFC0 0040FFC0 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00FFC4 0040FFC4 8FA400B8 */  lw          $a0, 0xB8($sp)
/* 00FFC8 0040FFC8 0320F809 */  jalr        $t9
/* 00FFCC 0040FFCC 00000000 */   nop
/* 00FFD0 0040FFD0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00FFD4 0040FFD4 8FAF00B4 */  lw          $t7, 0xB4($sp)
/* 00FFD8 0040FFD8 8FB800B0 */  lw          $t8, 0xB0($sp)
/* 00FFDC 0040FFDC 01F8C821 */  addu        $t9, $t7, $t8
/* 00FFE0 0040FFE0 AFB900B4 */  sw          $t9, 0xB4($sp)
/* 00FFE4 0040FFE4 8FA800BC */  lw          $t0, 0xBC($sp)
/* 00FFE8 0040FFE8 8D090000 */  lw          $t1, 0x0($t0)
/* 00FFEC 0040FFEC 1520FF8B */  bnez        $t1, .L0040FE1C
/* 00FFF0 0040FFF0 AFA900BC */   sw         $t1, 0xBC($sp)
.L0040FFF4:
/* 00FFF4 0040FFF4 10000003 */  b           .L00410004
/* 00FFF8 0040FFF8 00001025 */   move       $v0, $zero
/* 00FFFC 0040FFFC 10000001 */  b           .L00410004
/* 010000 00410000 00000000 */   nop
.L00410004:
/* 010004 00410004 8FBF001C */  lw          $ra, 0x1C($sp)
/* 010008 00410008 27BD00C0 */  addiu       $sp, $sp, 0xC0
/* 01000C 0041000C 03E00008 */  jr          $ra
/* 010010 00410010 00000000 */   nop
