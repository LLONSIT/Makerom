.section .rodata
glabel STR_1000FF60
/* 03FF60 1000FF60 */ .asciz "makerom: out of date\n"
                      .balign 4

glabel STR_1000FF78
/* 03FF78 1000FF78 */ .asciz "makerom: segment \"%s\": not found in any wave\n"
                      .balign 4

glabel STR_1000FFA8
/* 03FFA8 1000FFA8 */ .asciz "makerom: malloc failed [RomSize= %d kB]\n"
                      .balign 4


.section .text
glabel scanSegments # 19
# _gp_disp: 0xFC113E0
.set noreorder; .cpload $t9; # .set reorder
/* 00C96C 0040C96C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00C970 0040C970 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00C974 0040C974 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00C978 0040C978 240E0050 */  addiu       $t6, $zero, 0x50
/* 00C97C 0040C97C AFAE0028 */  sw          $t6, 0x28($sp)
/* 00C980 0040C980 8F9981D4 */  lw          $t9, %call16(elf_version)($gp)
/* 00C984 0040C984 24040001 */  addiu       $a0, $zero, 0x1
/* 00C988 0040C988 0320F809 */  jalr        $t9
/* 00C98C 0040C98C 00000000 */   nop
/* 00C990 0040C990 1440000A */  bnez        $v0, .L0040C9BC
/* 00C994 0040C994 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00C998 0040C998 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C99C 0040C99C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00C9A0 0040C9A0 8F85802C */  lw          $a1, %got(STR_1000FF60)($gp)
/* 00C9A4 0040C9A4 24840020 */  addiu       $a0, $a0, 0x20
/* 00C9A8 0040C9A8 0320F809 */  jalr        $t9
/* 00C9AC 0040C9AC 24A5FF60 */   addiu      $a1, $a1, %lo(STR_1000FF60)
/* 00C9B0 0040C9B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C9B4 0040C9B4 10000077 */  b           .L0040CB94
/* 00C9B8 0040C9B8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040C9BC:
/* 00C9BC 0040C9BC 8F8F8654 */  lw          $t7, %got(segmentList)($gp)
/* 00C9C0 0040C9C0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00C9C4 0040C9C4 11E0004B */  beqz        $t7, .L0040CAF4
/* 00C9C8 0040C9C8 AFAF002C */   sw         $t7, 0x2C($sp)
.L0040C9CC:
/* 00C9CC 0040C9CC 8FB8002C */  lw          $t8, 0x2C($sp)
/* 00C9D0 0040C9D0 8F19000C */  lw          $t9, 0xC($t8)
/* 00C9D4 0040C9D4 1720000C */  bnez        $t9, .L0040CA08
/* 00C9D8 0040C9D8 00000000 */   nop
/* 00C9DC 0040C9DC 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00C9E0 0040C9E0 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00C9E4 0040C9E4 8F85802C */  lw          $a1, %got(STR_1000FF78)($gp)
/* 00C9E8 0040C9E8 8FA8002C */  lw          $t0, 0x2C($sp)
/* 00C9EC 0040C9EC 24840020 */  addiu       $a0, $a0, 0x20
/* 00C9F0 0040C9F0 24A5FF78 */  addiu       $a1, $a1, %lo(STR_1000FF78)
/* 00C9F4 0040C9F4 0320F809 */  jalr        $t9
/* 00C9F8 0040C9F8 8D060004 */   lw         $a2, 0x4($t0)
/* 00C9FC 0040C9FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CA00 0040CA00 10000064 */  b           .L0040CB94
/* 00CA04 0040CA04 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CA08:
/* 00CA08 0040CA08 8FA90028 */  lw          $t1, 0x28($sp)
/* 00CA0C 0040CA0C 8FAA002C */  lw          $t2, 0x2C($sp)
/* 00CA10 0040CA10 AD490024 */  sw          $t1, 0x24($t2)
/* 00CA14 0040CA14 8FAB002C */  lw          $t3, 0x2C($sp)
/* 00CA18 0040CA18 8D6C0028 */  lw          $t4, 0x28($t3)
/* 00CA1C 0040CA1C 318D0002 */  andi        $t5, $t4, 0x2
/* 00CA20 0040CA20 11A0000D */  beqz        $t5, .L0040CA58
/* 00CA24 0040CA24 00000000 */   nop
/* 00CA28 0040CA28 8F998018 */  lw          $t9, %got(func_0040CBA4)($gp)
/* 00CA2C 0040CA2C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00CA30 0040CA30 2739CBA4 */  addiu       $t9, $t9, %lo(func_0040CBA4)
/* 00CA34 0040CA34 0320F809 */  jalr        $t9
/* 00CA38 0040CA38 00000000 */   nop
/* 00CA3C 0040CA3C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00CA40 0040CA40 14410003 */  bne         $v0, $at, .L0040CA50
/* 00CA44 0040CA44 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CA48 0040CA48 10000052 */  b           .L0040CB94
/* 00CA4C 0040CA4C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CA50:
/* 00CA50 0040CA50 10000010 */  b           .L0040CA94
/* 00CA54 0040CA54 00000000 */   nop
.L0040CA58:
/* 00CA58 0040CA58 8FAE002C */  lw          $t6, 0x2C($sp)
/* 00CA5C 0040CA5C 8DCF0028 */  lw          $t7, 0x28($t6)
/* 00CA60 0040CA60 31F80004 */  andi        $t8, $t7, 0x4
/* 00CA64 0040CA64 1300000B */  beqz        $t8, .L0040CA94
/* 00CA68 0040CA68 00000000 */   nop
/* 00CA6C 0040CA6C 8F998018 */  lw          $t9, %got(func_0040DA68)($gp)
/* 00CA70 0040CA70 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00CA74 0040CA74 2739DA68 */  addiu       $t9, $t9, %lo(func_0040DA68)
/* 00CA78 0040CA78 0320F809 */  jalr        $t9
/* 00CA7C 0040CA7C 00000000 */   nop
/* 00CA80 0040CA80 2401FFFF */  addiu       $at, $zero, -0x1
/* 00CA84 0040CA84 14410003 */  bne         $v0, $at, .L0040CA94
/* 00CA88 0040CA88 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CA8C 0040CA8C 10000041 */  b           .L0040CB94
/* 00CA90 0040CA90 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CA94:
/* 00CA94 0040CA94 8FB9002C */  lw          $t9, 0x2C($sp)
/* 00CA98 0040CA98 8F280024 */  lw          $t0, 0x24($t9)
/* 00CA9C 0040CA9C AFA80028 */  sw          $t0, 0x28($sp)
/* 00CAA0 0040CAA0 8FA9002C */  lw          $t1, 0x2C($sp)
/* 00CAA4 0040CAA4 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00CAA8 0040CAA8 8D2A002C */  lw          $t2, 0x2C($t1)
/* 00CAAC 0040CAAC 8D2B0030 */  lw          $t3, 0x30($t1)
/* 00CAB0 0040CAB0 8D2D0034 */  lw          $t5, 0x34($t1)
/* 00CAB4 0040CAB4 014B6021 */  addu        $t4, $t2, $t3
/* 00CAB8 0040CAB8 018D7021 */  addu        $t6, $t4, $t5
/* 00CABC 0040CABC 01EEC021 */  addu        $t8, $t7, $t6
/* 00CAC0 0040CAC0 AFB80028 */  sw          $t8, 0x28($sp)
/* 00CAC4 0040CAC4 8FB9002C */  lw          $t9, 0x2C($sp)
/* 00CAC8 0040CAC8 8FA50028 */  lw          $a1, 0x28($sp)
/* 00CACC 0040CACC 8F240048 */  lw          $a0, 0x48($t9)
/* 00CAD0 0040CAD0 8F9981AC */  lw          $t9, %call16(ALIGNn)($gp)
/* 00CAD4 0040CAD4 0320F809 */  jalr        $t9
/* 00CAD8 0040CAD8 00000000 */   nop
/* 00CADC 0040CADC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CAE0 0040CAE0 AFA20028 */  sw          $v0, 0x28($sp)
/* 00CAE4 0040CAE4 8FA8002C */  lw          $t0, 0x2C($sp)
/* 00CAE8 0040CAE8 8D0A0000 */  lw          $t2, 0x0($t0)
/* 00CAEC 0040CAEC 1540FFB7 */  bnez        $t2, .L0040C9CC
/* 00CAF0 0040CAF0 AFAA002C */   sw         $t2, 0x2C($sp)
.L0040CAF4:
/* 00CAF4 0040CAF4 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00CAF8 0040CAF8 2D610051 */  sltiu       $at, $t3, 0x51
/* 00CAFC 0040CAFC 14200003 */  bnez        $at, .L0040CB0C
/* 00CB00 0040CB00 00000000 */   nop
/* 00CB04 0040CB04 10000003 */  b           .L0040CB14
/* 00CB08 0040CB08 AFAB0024 */   sw         $t3, 0x24($sp)
.L0040CB0C:
/* 00CB0C 0040CB0C 24090050 */  addiu       $t1, $zero, 0x50
/* 00CB10 0040CB10 AFA90024 */  sw          $t1, 0x24($sp)
.L0040CB14:
/* 00CB14 0040CB14 8F9980D4 */  lw          $t9, %call16(calloc)($gp)
/* 00CB18 0040CB18 8FA40024 */  lw          $a0, 0x24($sp)
/* 00CB1C 0040CB1C 24050001 */  addiu       $a1, $zero, 0x1
/* 00CB20 0040CB20 0320F809 */  jalr        $t9
/* 00CB24 0040CB24 00000000 */   nop
/* 00CB28 0040CB28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CB2C 0040CB2C 8F81802C */  lw          $at, %got(B_10016A60)($gp)
/* 00CB30 0040CB30 AC226A60 */  sw          $v0, %lo(B_10016A60)($at)
/* 00CB34 0040CB34 8F8C802C */  lw          $t4, %got(B_10016A60)($gp)
/* 00CB38 0040CB38 8D8C6A60 */  lw          $t4, %lo(B_10016A60)($t4)
/* 00CB3C 0040CB3C 15800011 */  bnez        $t4, .L0040CB84
/* 00CB40 0040CB40 00000000 */   nop
/* 00CB44 0040CB44 8FA60024 */  lw          $a2, 0x24($sp)
/* 00CB48 0040CB48 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00CB4C 0040CB4C 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00CB50 0040CB50 24C603FF */  addiu       $a2, $a2, 0x3FF
/* 00CB54 0040CB54 8F85802C */  lw          $a1, %got(STR_1000FFA8)($gp)
/* 00CB58 0040CB58 24840020 */  addiu       $a0, $a0, 0x20
/* 00CB5C 0040CB5C 24A5FFA8 */  addiu       $a1, $a1, %lo(STR_1000FFA8)
/* 00CB60 0040CB60 04C10002 */  bgez        $a2, .L0040CB6C
/* 00CB64 0040CB64 00C00821 */   addu       $at, $a2, $zero
/* 00CB68 0040CB68 24C103FF */  addiu       $at, $a2, 0x3FF
.L0040CB6C:
/* 00CB6C 0040CB6C 00013283 */  sra         $a2, $at, 10
/* 00CB70 0040CB70 0320F809 */  jalr        $t9
/* 00CB74 0040CB74 00000000 */   nop
/* 00CB78 0040CB78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CB7C 0040CB7C 10000005 */  b           .L0040CB94
/* 00CB80 0040CB80 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CB84:
/* 00CB84 0040CB84 10000003 */  b           .L0040CB94
/* 00CB88 0040CB88 00001025 */   move       $v0, $zero
/* 00CB8C 0040CB8C 10000001 */  b           .L0040CB94
/* 00CB90 0040CB90 00000000 */   nop
.L0040CB94:
/* 00CB94 0040CB94 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00CB98 0040CB98 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00CB9C 0040CB9C 03E00008 */  jr          $ra
/* 00CBA0 0040CBA0 00000000 */   nop
