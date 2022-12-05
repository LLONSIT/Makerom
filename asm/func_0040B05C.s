.section .rodata
glabel STR_1000F734
/* 03F734 1000F734 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_1000F740
/* 03F740 1000F740 */ .asciz "romheader"
                      .balign 4

glabel STR_1000F74C
/* 03F74C 1000F74C */ .asciz "%s unable to open %s"
                      .balign 4

glabel STR_1000F764
/* 03F764 1000F764 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000F77C
/* 03F77C 1000F77C */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_1000F7AC
/* 03F7AC 1000F7AC */ .asciz "%s: short read from %s.\n"
                      .balign 4

glabel STR_1000F7C8
/* 03F7C8 1000F7C8 */ .asciz "%s: short read from %s.\n"
                      .balign 4


.section .text
glabel func_0040B05C # 9
# _gp_disp: 0xFC12CE4
.set noreorder; .cpload $t9; # .set reorder
/* 00B068 0040B068 27BDFD40 */  addiu       $sp, $sp, -0x2C0
/* 00B06C 0040B06C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00B070 0040B070 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00B074 0040B074 AFA402C0 */  sw          $a0, 0x2C0($sp)
/* 00B078 0040B078 8FAE02C0 */  lw          $t6, 0x2C0($sp)
/* 00B07C 0040B07C 15C0000D */  bnez        $t6, .L0040B0B4
/* 00B080 0040B080 00000000 */   nop
/* 00B084 0040B084 8F998018 */  lw          $t9, %got(func_0040B780)($gp)
/* 00B088 0040B088 8F85802C */  lw          $a1, %got(STR_1000F734)($gp)
/* 00B08C 0040B08C 8F86802C */  lw          $a2, %got(STR_1000F740)($gp)
/* 00B090 0040B090 2739B780 */  addiu       $t9, $t9, %lo(func_0040B780)
/* 00B094 0040B094 27A401BC */  addiu       $a0, $sp, 0x1BC
/* 00B098 0040B098 24A5F734 */  addiu       $a1, $a1, %lo(STR_1000F734)
/* 00B09C 0040B09C 0320F809 */  jalr        $t9
/* 00B0A0 0040B0A0 24C6F740 */   addiu      $a2, $a2, %lo(STR_1000F740)
/* 00B0A4 0040B0A4 10400003 */  beqz        $v0, .L0040B0B4
/* 00B0A8 0040B0A8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00B0AC 0040B0AC 27AF01BC */  addiu       $t7, $sp, 0x1BC
/* 00B0B0 0040B0B0 AFAF02C0 */  sw          $t7, 0x2C0($sp)
.L0040B0B4:
/* 00B0B4 0040B0B4 8FB802C0 */  lw          $t8, 0x2C0($sp)
/* 00B0B8 0040B0B8 13000103 */  beqz        $t8, .L0040B4C8
/* 00B0BC 0040B0BC 00000000 */   nop
/* 00B0C0 0040B0C0 8F9980B4 */  lw          $t9, %call16(open)($gp)
/* 00B0C4 0040B0C4 8FA402C0 */  lw          $a0, 0x2C0($sp)
/* 00B0C8 0040B0C8 24050800 */  addiu       $a1, $zero, 0x800
/* 00B0CC 0040B0CC 0320F809 */  jalr        $t9
/* 00B0D0 0040B0D0 00000000 */   nop
/* 00B0D4 0040B0D4 AFA202BC */  sw          $v0, 0x2BC($sp)
/* 00B0D8 0040B0D8 8FB902BC */  lw          $t9, 0x2BC($sp)
/* 00B0DC 0040B0DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B0E0 0040B0E0 07210014 */  bgez        $t9, .L0040B134
/* 00B0E4 0040B0E4 00000000 */   nop
/* 00B0E8 0040B0E8 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00B0EC 0040B0EC 8F85802C */  lw          $a1, %got(STR_1000F74C)($gp)
/* 00B0F0 0040B0F0 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B0F4 0040B0F4 27A40034 */  addiu       $a0, $sp, 0x34
/* 00B0F8 0040B0F8 8FA702C0 */  lw          $a3, 0x2C0($sp)
/* 00B0FC 0040B0FC 24A5F74C */  addiu       $a1, $a1, %lo(STR_1000F74C)
/* 00B100 0040B100 0320F809 */  jalr        $t9
/* 00B104 0040B104 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00B108 0040B108 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B10C 0040B10C 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00B110 0040B110 27A40034 */  addiu       $a0, $sp, 0x34
/* 00B114 0040B114 0320F809 */  jalr        $t9
/* 00B118 0040B118 00000000 */   nop
/* 00B11C 0040B11C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B120 0040B120 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B124 0040B124 24040001 */  addiu       $a0, $zero, 0x1
/* 00B128 0040B128 0320F809 */  jalr        $t9
/* 00B12C 0040B12C 00000000 */   nop
/* 00B130 0040B130 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B134:
/* 00B134 0040B134 8F9980BC */  lw          $t9, %call16(fstat)($gp)
/* 00B138 0040B138 8FA402BC */  lw          $a0, 0x2BC($sp)
/* 00B13C 0040B13C 27A50134 */  addiu       $a1, $sp, 0x134
/* 00B140 0040B140 0320F809 */  jalr        $t9
/* 00B144 0040B144 00000000 */   nop
/* 00B148 0040B148 04410019 */  bgez        $v0, .L0040B1B0
/* 00B14C 0040B14C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00B150 0040B150 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 00B154 0040B154 8F85802C */  lw          $a1, %got(STR_1000F764)($gp)
/* 00B158 0040B158 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B15C 0040B15C 27A40034 */  addiu       $a0, $sp, 0x34
/* 00B160 0040B160 8FA702C0 */  lw          $a3, 0x2C0($sp)
/* 00B164 0040B164 24A5F764 */  addiu       $a1, $a1, %lo(STR_1000F764)
/* 00B168 0040B168 0320F809 */  jalr        $t9
/* 00B16C 0040B16C 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00B170 0040B170 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B174 0040B174 8F9980B8 */  lw          $t9, %call16(perror)($gp)
/* 00B178 0040B178 27A40034 */  addiu       $a0, $sp, 0x34
/* 00B17C 0040B17C 0320F809 */  jalr        $t9
/* 00B180 0040B180 00000000 */   nop
/* 00B184 0040B184 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B188 0040B188 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B18C 0040B18C 8FA402BC */  lw          $a0, 0x2BC($sp)
/* 00B190 0040B190 0320F809 */  jalr        $t9
/* 00B194 0040B194 00000000 */   nop
/* 00B198 0040B198 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B19C 0040B19C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B1A0 0040B1A0 24040001 */  addiu       $a0, $zero, 0x1
/* 00B1A4 0040B1A4 0320F809 */  jalr        $t9
/* 00B1A8 0040B1A8 00000000 */   nop
/* 00B1AC 0040B1AC 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B1B0:
/* 00B1B0 0040B1B0 8FA80164 */  lw          $t0, 0x164($sp)
/* 00B1B4 0040B1B4 8F818738 */  lw          $at, %got(headerWordAlignedByteSize)($gp)
/* 00B1B8 0040B1B8 AC280000 */  sw          $t0, 0x0($at)
/* 00B1BC 0040B1BC 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 00B1C0 0040B1C0 8F848738 */  lw          $a0, %got(headerWordAlignedByteSize)($gp)
/* 00B1C4 0040B1C4 0320F809 */  jalr        $t9
/* 00B1C8 0040B1C8 8C840000 */   lw         $a0, 0x0($a0)
/* 00B1CC 0040B1CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B1D0 0040B1D0 8F818724 */  lw          $at, %got(headerBuf)($gp)
/* 00B1D4 0040B1D4 AC220000 */  sw          $v0, 0x0($at)
/* 00B1D8 0040B1D8 8F898724 */  lw          $t1, %got(headerBuf)($gp)
/* 00B1DC 0040B1DC 8D290000 */  lw          $t1, 0x0($t1)
/* 00B1E0 0040B1E0 15200016 */  bnez        $t1, .L0040B23C
/* 00B1E4 0040B1E4 00000000 */   nop
/* 00B1E8 0040B1E8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00B1EC 0040B1EC 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00B1F0 0040B1F0 8F85802C */  lw          $a1, %got(STR_1000F77C)($gp)
/* 00B1F4 0040B1F4 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B1F8 0040B1F8 8F878738 */  lw          $a3, %got(headerWordAlignedByteSize)($gp)
/* 00B1FC 0040B1FC 24840020 */  addiu       $a0, $a0, 0x20
/* 00B200 0040B200 24A5F77C */  addiu       $a1, $a1, %lo(STR_1000F77C)
/* 00B204 0040B204 8CC66A20 */  lw          $a2, %lo(B_10016A20)($a2)
/* 00B208 0040B208 0320F809 */  jalr        $t9
/* 00B20C 0040B20C 8CE70000 */   lw         $a3, 0x0($a3)
/* 00B210 0040B210 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B214 0040B214 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B218 0040B218 8FA402BC */  lw          $a0, 0x2BC($sp)
/* 00B21C 0040B21C 0320F809 */  jalr        $t9
/* 00B220 0040B220 00000000 */   nop
/* 00B224 0040B224 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B228 0040B228 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B22C 0040B22C 24040001 */  addiu       $a0, $zero, 0x1
/* 00B230 0040B230 0320F809 */  jalr        $t9
/* 00B234 0040B234 00000000 */   nop
/* 00B238 0040B238 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B23C:
/* 00B23C 0040B23C 27AA0030 */  addiu       $t2, $sp, 0x30
/* 00B240 0040B240 A1400001 */  sb          $zero, 0x1($t2)
/* 00B244 0040B244 8F8B8738 */  lw          $t3, %got(headerWordAlignedByteSize)($gp)
/* 00B248 0040B248 AFA00028 */  sw          $zero, 0x28($sp)
/* 00B24C 0040B24C AFA00024 */  sw          $zero, 0x24($sp)
/* 00B250 0040B250 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00B254 0040B254 19600081 */  blez        $t3, .L0040B45C
/* 00B258 0040B258 00000000 */   nop
.L0040B25C:
/* 00B25C 0040B25C 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 00B260 0040B260 8FA402BC */  lw          $a0, 0x2BC($sp)
/* 00B264 0040B264 27A50030 */  addiu       $a1, $sp, 0x30
/* 00B268 0040B268 0320F809 */  jalr        $t9
/* 00B26C 0040B26C 24060001 */   addiu      $a2, $zero, 0x1
/* 00B270 0040B270 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B274 0040B274 AFA20020 */  sw          $v0, 0x20($sp)
/* 00B278 0040B278 8FAC0020 */  lw          $t4, 0x20($sp)
/* 00B27C 0040B27C 24010001 */  addiu       $at, $zero, 0x1
/* 00B280 0040B280 1181001A */  beq         $t4, $at, .L0040B2EC
/* 00B284 0040B284 00000000 */   nop
/* 00B288 0040B288 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00B28C 0040B28C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00B290 0040B290 8F85802C */  lw          $a1, %got(STR_1000F7AC)($gp)
/* 00B294 0040B294 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B298 0040B298 8FA702C0 */  lw          $a3, 0x2C0($sp)
/* 00B29C 0040B29C 24840020 */  addiu       $a0, $a0, 0x20
/* 00B2A0 0040B2A0 24A5F7AC */  addiu       $a1, $a1, %lo(STR_1000F7AC)
/* 00B2A4 0040B2A4 0320F809 */  jalr        $t9
/* 00B2A8 0040B2A8 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00B2AC 0040B2AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B2B0 0040B2B0 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00B2B4 0040B2B4 8F848724 */  lw          $a0, %got(headerBuf)($gp)
/* 00B2B8 0040B2B8 0320F809 */  jalr        $t9
/* 00B2BC 0040B2BC 8C840000 */   lw         $a0, 0x0($a0)
/* 00B2C0 0040B2C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B2C4 0040B2C4 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B2C8 0040B2C8 8FA402BC */  lw          $a0, 0x2BC($sp)
/* 00B2CC 0040B2CC 0320F809 */  jalr        $t9
/* 00B2D0 0040B2D0 00000000 */   nop
/* 00B2D4 0040B2D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B2D8 0040B2D8 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B2DC 0040B2DC 24040001 */  addiu       $a0, $zero, 0x1
/* 00B2E0 0040B2E0 0320F809 */  jalr        $t9
/* 00B2E4 0040B2E4 00000000 */   nop
/* 00B2E8 0040B2E8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B2EC:
/* 00B2EC 0040B2EC 27AD0030 */  addiu       $t5, $sp, 0x30
/* 00B2F0 0040B2F0 91AE0000 */  lbu         $t6, 0x0($t5)
/* 00B2F4 0040B2F4 2401000A */  addiu       $at, $zero, 0xA
/* 00B2F8 0040B2F8 15C1002D */  bne         $t6, $at, .L0040B3B0
/* 00B2FC 0040B2FC 00000000 */   nop
/* 00B300 0040B300 8F998738 */  lw          $t9, %got(headerWordAlignedByteSize)($gp)
/* 00B304 0040B304 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00B308 0040B308 8F390000 */  lw          $t9, 0x0($t9)
/* 00B30C 0040B30C 25F80001 */  addiu       $t8, $t7, 0x1
/* 00B310 0040B310 AFB80024 */  sw          $t8, 0x24($sp)
/* 00B314 0040B314 0319082A */  slt         $at, $t8, $t9
/* 00B318 0040B318 10200025 */  beqz        $at, .L0040B3B0
/* 00B31C 0040B31C 00000000 */   nop
/* 00B320 0040B320 8F9980C4 */  lw          $t9, %call16(read)($gp)
/* 00B324 0040B324 8FA402BC */  lw          $a0, 0x2BC($sp)
/* 00B328 0040B328 27A50030 */  addiu       $a1, $sp, 0x30
/* 00B32C 0040B32C 0320F809 */  jalr        $t9
/* 00B330 0040B330 24060001 */   addiu      $a2, $zero, 0x1
/* 00B334 0040B334 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B338 0040B338 AFA20020 */  sw          $v0, 0x20($sp)
/* 00B33C 0040B33C 8FA80020 */  lw          $t0, 0x20($sp)
/* 00B340 0040B340 24010001 */  addiu       $at, $zero, 0x1
/* 00B344 0040B344 1101001A */  beq         $t0, $at, .L0040B3B0
/* 00B348 0040B348 00000000 */   nop
/* 00B34C 0040B34C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00B350 0040B350 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00B354 0040B354 8F85802C */  lw          $a1, %got(STR_1000F7C8)($gp)
/* 00B358 0040B358 8F86802C */  lw          $a2, %got(B_10016A20)($gp)
/* 00B35C 0040B35C 8FA702C0 */  lw          $a3, 0x2C0($sp)
/* 00B360 0040B360 24840020 */  addiu       $a0, $a0, 0x20
/* 00B364 0040B364 24A5F7C8 */  addiu       $a1, $a1, %lo(STR_1000F7C8)
/* 00B368 0040B368 0320F809 */  jalr        $t9
/* 00B36C 0040B36C 8CC66A20 */   lw         $a2, %lo(B_10016A20)($a2)
/* 00B370 0040B370 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B374 0040B374 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 00B378 0040B378 8F848724 */  lw          $a0, %got(headerBuf)($gp)
/* 00B37C 0040B37C 0320F809 */  jalr        $t9
/* 00B380 0040B380 8C840000 */   lw         $a0, 0x0($a0)
/* 00B384 0040B384 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B388 0040B388 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B38C 0040B38C 8FA402BC */  lw          $a0, 0x2BC($sp)
/* 00B390 0040B390 0320F809 */  jalr        $t9
/* 00B394 0040B394 00000000 */   nop
/* 00B398 0040B398 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B39C 0040B39C 8F998054 */  lw          $t9, %call16(exit)($gp)
/* 00B3A0 0040B3A0 24040001 */  addiu       $a0, $zero, 0x1
/* 00B3A4 0040B3A4 0320F809 */  jalr        $t9
/* 00B3A8 0040B3A8 00000000 */   nop
/* 00B3AC 0040B3AC 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040B3B0:
/* 00B3B0 0040B3B0 8F998074 */  lw          $t9, %call16(strtol)($gp)
/* 00B3B4 0040B3B4 27A40030 */  addiu       $a0, $sp, 0x30
/* 00B3B8 0040B3B8 00002825 */  move        $a1, $zero
/* 00B3BC 0040B3BC 0320F809 */  jalr        $t9
/* 00B3C0 0040B3C0 24060010 */   addiu      $a2, $zero, 0x10
/* 00B3C4 0040B3C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B3C8 0040B3C8 AFA2002C */  sw          $v0, 0x2C($sp)
/* 00B3CC 0040B3CC 8FA90028 */  lw          $t1, 0x28($sp)
/* 00B3D0 0040B3D0 05210004 */  bgez        $t1, .L0040B3E4
/* 00B3D4 0040B3D4 312A0001 */   andi       $t2, $t1, 0x1
/* 00B3D8 0040B3D8 11400002 */  beqz        $t2, .L0040B3E4
/* 00B3DC 0040B3DC 00000000 */   nop
/* 00B3E0 0040B3E0 254AFFFE */  addiu       $t2, $t2, -0x2
.L0040B3E4:
/* 00B3E4 0040B3E4 1140000B */  beqz        $t2, .L0040B414
/* 00B3E8 0040B3E8 00000000 */   nop
/* 00B3EC 0040B3EC 8F8D8724 */  lw          $t5, %got(headerBuf)($gp)
/* 00B3F0 0040B3F0 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00B3F4 0040B3F4 8FB8002C */  lw          $t8, 0x2C($sp)
/* 00B3F8 0040B3F8 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00B3FC 0040B3FC 000B6043 */  sra         $t4, $t3, 1
/* 00B400 0040B400 018D7021 */  addu        $t6, $t4, $t5
/* 00B404 0040B404 91CF0000 */  lbu         $t7, 0x0($t6)
/* 00B408 0040B408 01F8C825 */  or          $t9, $t7, $t8
/* 00B40C 0040B40C 10000009 */  b           .L0040B434
/* 00B410 0040B410 A1D90000 */   sb         $t9, 0x0($t6)
.L0040B414:
/* 00B414 0040B414 8F8A8724 */  lw          $t2, %got(headerBuf)($gp)
/* 00B418 0040B418 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00B41C 0040B41C 8FA8002C */  lw          $t0, 0x2C($sp)
/* 00B420 0040B420 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00B424 0040B424 000B6043 */  sra         $t4, $t3, 1
/* 00B428 0040B428 00084900 */  sll         $t1, $t0, 4
/* 00B42C 0040B42C 014C6821 */  addu        $t5, $t2, $t4
/* 00B430 0040B430 A1A90000 */  sb          $t1, 0x0($t5)
.L0040B434:
/* 00B434 0040B434 8F888738 */  lw          $t0, %got(headerWordAlignedByteSize)($gp)
/* 00B438 0040B438 8FB90024 */  lw          $t9, 0x24($sp)
/* 00B43C 0040B43C 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00B440 0040B440 8D080000 */  lw          $t0, 0x0($t0)
/* 00B444 0040B444 272E0001 */  addiu       $t6, $t9, 0x1
/* 00B448 0040B448 25F80001 */  addiu       $t8, $t7, 0x1
/* 00B44C 0040B44C 01C8082A */  slt         $at, $t6, $t0
/* 00B450 0040B450 AFB80028 */  sw          $t8, 0x28($sp)
/* 00B454 0040B454 1420FF81 */  bnez        $at, .L0040B25C
/* 00B458 0040B458 AFAE0024 */   sw         $t6, 0x24($sp)
.L0040B45C:
/* 00B45C 0040B45C 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00B460 0040B460 8F818738 */  lw          $at, %got(headerWordAlignedByteSize)($gp)
/* 00B464 0040B464 256AFFFF */  addiu       $t2, $t3, -0x1
/* 00B468 0040B468 000A6043 */  sra         $t4, $t2, 1
/* 00B46C 0040B46C AC2C0000 */  sw          $t4, 0x0($at)
/* 00B470 0040B470 8F898738 */  lw          $t1, %got(headerWordAlignedByteSize)($gp)
/* 00B474 0040B474 8D290000 */  lw          $t1, 0x0($t1)
/* 00B478 0040B478 312D0003 */  andi        $t5, $t1, 0x3
/* 00B47C 0040B47C 11A0000C */  beqz        $t5, .L0040B4B0
/* 00B480 0040B480 00000000 */   nop
/* 00B484 0040B484 8F8F8738 */  lw          $t7, %got(headerWordAlignedByteSize)($gp)
/* 00B488 0040B488 8F818738 */  lw          $at, %got(headerWordAlignedByteSize)($gp)
/* 00B48C 0040B48C 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00B490 0040B490 25F80004 */  addiu       $t8, $t7, 0x4
/* 00B494 0040B494 AC380000 */  sw          $t8, 0x0($at)
/* 00B498 0040B498 8F998738 */  lw          $t9, %got(headerWordAlignedByteSize)($gp)
/* 00B49C 0040B49C 2401FFFC */  addiu       $at, $zero, -0x4
/* 00B4A0 0040B4A0 8F390000 */  lw          $t9, 0x0($t9)
/* 00B4A4 0040B4A4 03217024 */  and         $t6, $t9, $at
/* 00B4A8 0040B4A8 8F818738 */  lw          $at, %got(headerWordAlignedByteSize)($gp)
/* 00B4AC 0040B4AC AC2E0000 */  sw          $t6, 0x0($at)
.L0040B4B0:
/* 00B4B0 0040B4B0 8F9980C0 */  lw          $t9, %call16(close)($gp)
/* 00B4B4 0040B4B4 8FA402BC */  lw          $a0, 0x2BC($sp)
/* 00B4B8 0040B4B8 0320F809 */  jalr        $t9
/* 00B4BC 0040B4BC 00000000 */   nop
/* 00B4C0 0040B4C0 10000003 */  b           .L0040B4D0
/* 00B4C4 0040B4C4 8FBC0018 */   lw         $gp, 0x18($sp)
.L0040B4C8:
/* 00B4C8 0040B4C8 8F818724 */  lw          $at, %got(headerBuf)($gp)
/* 00B4CC 0040B4CC AC200000 */  sw          $zero, 0x0($at)
.L0040B4D0:
/* 00B4D0 0040B4D0 10000001 */  b           .L0040B4D8
/* 00B4D4 0040B4D4 00000000 */   nop
.L0040B4D8:
/* 00B4D8 0040B4D8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00B4DC 0040B4DC 27BD02C0 */  addiu       $sp, $sp, 0x2C0
/* 00B4E0 0040B4E0 03E00008 */  jr          $ra
/* 00B4E4 0040B4E4 00000000 */   nop
