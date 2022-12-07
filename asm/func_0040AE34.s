.section .rodata
glabel STR_1000F6BC
/* 03F6BC 1000F6BC */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_1000F6C8
/* 03F6C8 1000F6C8 */ .asciz "pif2Boot"
                      .balign 4

glabel STR_1000F6D4
/* 03F6D4 1000F6D4 */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_1000F6EC
/* 03F6EC 1000F6EC */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000F704
/* 03F704 1000F704 */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4


.section .text
glabel func_0040AE34 # 8
# _gp_disp: 0xFC12F0C
.set noreorder; .cpload $t9; # .set reorder
/* 00AE40 0040AE40 27BDFD50 */  addiu       $sp, $sp, -0x2B0
/* 00AE44 0040AE44 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00AE48 0040AE48 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00AE4C 0040AE4C AFA402B0 */  sw          $a0, 0x2B0($sp)
/* 00AE50 0040AE50 8FAE02B0 */  lw          $t6, 0x2B0($sp)
/* 00AE54 0040AE54 15C0000D */  bnez        $t6, .L0040AE8C
/* 00AE58 0040AE58 00000000 */   nop
/* 00AE5C 0040AE5C 8F998018 */  lw          $t9, %got(func_0040B780)($gp)
/* 00AE60 0040AE60 8F85802C */  lw          $a1, %got(STR_1000F6BC)($gp)
/* 00AE64 0040AE64 8F86802C */  lw          $a2, %got(STR_1000F6C8)($gp)
/* 00AE68 0040AE68 2739B780 */  addiu       $t9, $t9, %lo(func_0040B780)
/* 00AE6C 0040AE6C 27A401AC */  addiu       $a0, $sp, 0x1AC
/* 00AE70 0040AE70 24A5F6BC */  addiu       $a1, $a1, %lo(STR_1000F6BC)
/* 00AE74 0040AE74 0320F809 */  jalr        $t9
/* 00AE78 0040AE78 24C6F6C8 */   addiu      $a2, $a2, %lo(STR_1000F6C8)
/* 00AE7C 0040AE7C 10400003 */  beqz        $v0, .L0040AE8C
/* 00AE80 0040AE80 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00AE84 0040AE84 27AF01AC */  addiu       $t7, $sp, 0x1AC
/* 00AE88 0040AE88 AFAF02B0 */  sw          $t7, 0x2B0($sp)
.L0040AE8C:
/* 00AE8C 0040AE8C 8FB802B0 */  lw          $t8, 0x2B0($sp)
/* 00AE90 0040AE90 1300006A */  beqz        $t8, .L0040B03C
/* 00AE94 0040AE94 00000000 */   nop
/* 00AE98 0040AE98 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 00AE9C 0040AE9C 8FA402B0 */  lw          $a0, 0x2B0($sp)
/* 00AEA0 0040AEA0 24050800 */  addiu       $a1, $zero, 0x800
/* 00AEA4 0040AEA4 0320F809 */  jalr        $t9
/* 00AEA8 0040AEA8 00000000 */   nop
/* 00AEAC 0040AEAC AFA202AC */  sw          $v0, 0x2AC($sp)
/* 00AEB0 0040AEB0 8FB902AC */  lw          $t9, 0x2AC($sp)
/* 00AEB4 0040AEB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AEB8 0040AEB8 07210014 */  bgez        $t9, .L0040AF0C
/* 00AEBC 0040AEBC 00000000 */   nop
/* 00AEC0 0040AEC0 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00AEC4 0040AEC4 8F85802C */  lw          $a1, %got(STR_1000F6D4)($gp)
/* 00AEC8 0040AEC8 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00AECC 0040AECC 27A40024 */  addiu       $a0, $sp, 0x24
/* 00AED0 0040AED0 8FA702B0 */  lw          $a3, 0x2B0($sp)
/* 00AED4 0040AED4 24A5F6D4 */  addiu       $a1, $a1, %lo(STR_1000F6D4)
/* 00AED8 0040AED8 0320F809 */  jalr        $t9
/* 00AEDC 0040AEDC 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00AEE0 0040AEE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AEE4 0040AEE4 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00AEE8 0040AEE8 27A40024 */  addiu       $a0, $sp, 0x24
/* 00AEEC 0040AEEC 0320F809 */  jalr        $t9
/* 00AEF0 0040AEF0 00000000 */   nop
/* 00AEF4 0040AEF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AEF8 0040AEF8 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00AEFC 0040AEFC 24040001 */  addiu       $a0, $zero, 0x1
/* 00AF00 0040AF00 0320F809 */  jalr        $t9
/* 00AF04 0040AF04 00000000 */   nop
/* 00AF08 0040AF08 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040AF0C:
/* 00AF0C 0040AF0C 8F9980BC */  lw          $t9, %call16(fstat)($gp)
/* 00AF10 0040AF10 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00AF14 0040AF14 27A50124 */  addiu       $a1, $sp, 0x124
/* 00AF18 0040AF18 0320F809 */  jalr        $t9
/* 00AF1C 0040AF1C 00000000 */   nop
/* 00AF20 0040AF20 04410019 */  bgez        $v0, .L0040AF88
/* 00AF24 0040AF24 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00AF28 0040AF28 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00AF2C 0040AF2C 8F85802C */  lw          $a1, %got(STR_1000F6EC)($gp)
/* 00AF30 0040AF30 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00AF34 0040AF34 27A40024 */  addiu       $a0, $sp, 0x24
/* 00AF38 0040AF38 8FA702B0 */  lw          $a3, 0x2B0($sp)
/* 00AF3C 0040AF3C 24A5F6EC */  addiu       $a1, $a1, %lo(STR_1000F6EC)
/* 00AF40 0040AF40 0320F809 */  jalr        $t9
/* 00AF44 0040AF44 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00AF48 0040AF48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AF4C 0040AF4C 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00AF50 0040AF50 27A40024 */  addiu       $a0, $sp, 0x24
/* 00AF54 0040AF54 0320F809 */  jalr        $t9
/* 00AF58 0040AF58 00000000 */   nop
/* 00AF5C 0040AF5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AF60 0040AF60 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00AF64 0040AF64 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00AF68 0040AF68 0320F809 */  jalr        $t9
/* 00AF6C 0040AF6C 00000000 */   nop
/* 00AF70 0040AF70 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AF74 0040AF74 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00AF78 0040AF78 24040001 */  addiu       $a0, $zero, 0x1
/* 00AF7C 0040AF7C 0320F809 */  jalr        $t9
/* 00AF80 0040AF80 00000000 */   nop
/* 00AF84 0040AF84 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040AF88:
/* 00AF88 0040AF88 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 00AF8C 0040AF8C 8FA40154 */  lw          $a0, 0x154($sp)
/* 00AF90 0040AF90 0320F809 */  jalr        $t9
/* 00AF94 0040AF94 00000000 */   nop
/* 00AF98 0040AF98 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AF9C 0040AF9C 8F818728 */  lw          $at, %got(pif2bootBuf)($gp)
/* 00AFA0 0040AFA0 AC220000 */  sw          $v0, 0x0($at)
/* 00AFA4 0040AFA4 8F888728 */  lw          $t0, %got(pif2bootBuf)($gp)
/* 00AFA8 0040AFA8 8D080000 */  lw          $t0, 0x0($t0)
/* 00AFAC 0040AFAC 15000015 */  bnez        $t0, .L0040B004
/* 00AFB0 0040AFB0 00000000 */   nop
/* 00AFB4 0040AFB4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00AFB8 0040AFB8 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00AFBC 0040AFBC 8F85802C */  lw          $a1, %got(STR_1000F704)($gp)
/* 00AFC0 0040AFC0 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00AFC4 0040AFC4 8FA70154 */  lw          $a3, 0x154($sp)
/* 00AFC8 0040AFC8 24840020 */  addiu       $a0, $a0, 0x20
/* 00AFCC 0040AFCC 24A5F704 */  addiu       $a1, $a1, %lo(STR_1000F704)
/* 00AFD0 0040AFD0 0320F809 */  jalr        $t9
/* 00AFD4 0040AFD4 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00AFD8 0040AFD8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AFDC 0040AFDC 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00AFE0 0040AFE0 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00AFE4 0040AFE4 0320F809 */  jalr        $t9
/* 00AFE8 0040AFE8 00000000 */   nop
/* 00AFEC 0040AFEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00AFF0 0040AFF0 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00AFF4 0040AFF4 24040001 */  addiu       $a0, $zero, 0x1
/* 00AFF8 0040AFF8 0320F809 */  jalr        $t9
/* 00AFFC 0040AFFC 00000000 */   nop
/* 00B000 0040B000 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B004:
/* 00B004 0040B004 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B008 0040B008 8FA402AC */  lw          $a0, 0x2AC($sp)
/* 00B00C 0040B00C 0320F809 */  jalr        $t9
/* 00B010 0040B010 00000000 */   nop
/* 00B014 0040B014 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B018 0040B018 8F9981B0 */  lw          $t9, %call16(readCoff)($gp)
/* 00B01C 0040B01C 8F858728 */  lw          $a1, %got(pif2bootBuf)($gp)
/* 00B020 0040B020 8FA402B0 */  lw          $a0, 0x2B0($sp)
/* 00B024 0040B024 0320F809 */  jalr        $t9
/* 00B028 0040B028 8CA50000 */   lw         $a1, 0x0($a1)
/* 00B02C 0040B02C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B030 0040B030 8F818734 */  lw          $at, %got(pif2bootWordAlignedByteSize)($gp)
/* 00B034 0040B034 10000003 */  b           .L0040B044
/* 00B038 0040B038 AC220000 */   sw         $v0, 0x0($at)
.L0040B03C:
/* 00B03C 0040B03C 8F818728 */  lw          $at, %got(pif2bootBuf)($gp)
/* 00B040 0040B040 AC200000 */  sw          $zero, 0x0($at)
.L0040B044:
/* 00B044 0040B044 10000001 */  b           .L0040B04C
/* 00B048 0040B048 00000000 */   nop
.L0040B04C:
/* 00B04C 0040B04C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00B050 0040B050 27BD02B0 */  addiu       $sp, $sp, 0x2B0
/* 00B054 0040B054 03E00008 */  jr          $ra
/* 00B058 0040B058 00000000 */   nop
