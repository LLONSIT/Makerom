.section .rodata
glabel STR_10010320
/* 040320 10010320 */ .asciz "w"
                      .balign 4

glabel STR_10010324
/* 040324 10010324 */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_10010340
/* 040340 10010340 */ .asciz ".globl _%sSegmentRomStart; "
                      .balign 4

glabel STR_1001035C
/* 04035C 1001035C */ .asciz "_%sSegmentRomStart = 0x%08x\n"
                      .balign 4

glabel STR_1001037C
/* 04037C 1001037C */ .asciz ".globl _%sSegmentRomEnd; "
                      .balign 4

glabel STR_10010398
/* 040398 10010398 */ .asciz "_%sSegmentRomEnd = 0x%08x\n"
                      .balign 4

glabel STR_100103B4
/* 0403B4 100103B4 */ .asciz ".globl _%sSegmentStart; "
                      .balign 4

glabel STR_100103D0
/* 0403D0 100103D0 */ .asciz "_%sSegmentStart = 0x%08x\n"
                      .balign 4

glabel STR_100103EC
/* 0403EC 100103EC */ .asciz ".globl _%sSegmentTextStart; "
                      .balign 4

glabel STR_1001040C
/* 04040C 1001040C */ .asciz "_%sSegmentTextStart = 0x%08x\n"
                      .balign 4

glabel STR_1001042C
/* 04042C 1001042C */ .asciz ".globl _%sSegmentTextEnd; "
                      .balign 4

glabel STR_10010448
/* 040448 10010448 */ .asciz "_%sSegmentTextEnd = 0x%08x\n"
                      .balign 4

glabel STR_10010464
/* 040464 10010464 */ .asciz ".globl _%sSegmentDataStart; "
                      .balign 4

glabel STR_10010484
/* 040484 10010484 */ .asciz "_%sSegmentDataStart = 0x%08x\n"
                      .balign 4

glabel STR_100104A4
/* 0404A4 100104A4 */ .asciz ".globl _%sSegmentDataEnd; "
                      .balign 4

glabel STR_100104C0
/* 0404C0 100104C0 */ .asciz "_%sSegmentDataEnd = 0x%08x\n"
                      .balign 4

glabel STR_100104DC
/* 0404DC 100104DC */ .asciz ".globl _%sSegmentBssStart; "
                      .balign 4

glabel STR_100104F8
/* 0404F8 100104F8 */ .asciz "_%sSegmentBssStart = 0x%08x\n"
                      .balign 4

glabel STR_10010518
/* 040518 10010518 */ .asciz ".globl _%sSegmentBssEnd; "
                      .balign 4

glabel STR_10010534
/* 040534 10010534 */ .asciz "_%sSegmentBssEnd = 0x%08x\n"
                      .balign 4

glabel STR_10010550
/* 040550 10010550 */ .asciz ".globl _%sSegmentEnd; "
                      .balign 4

glabel STR_10010568
/* 040568 10010568 */ .asciz "_%sSegmentEnd = 0x%08x\n"
                      .balign 4

glabel STR_10010580
/* 040580 10010580 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10010590
/* 040590 10010590 */ .asciz "$TOOLROOT/usr/bin/cc -c -non_shared -o "
                      .balign 4

glabel STR_100105B8
/* 0405B8 100105B8 */ .asciz " "
                      .balign 4

glabel STR_100105BC
/* 0405BC 100105BC */ .asciz "  %s\n"
                      .balign 4


.section .text
glabel createSegmentSymbols # 24
# _gp_disp: 0xFC0FB80
.set noreorder; .cpload $t9; # .set reorder
/* 00E1CC 0040E1CC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E1D0 0040E1D0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00E1D4 0040E1D4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00E1D8 0040E1D8 AFA40030 */  sw          $a0, 0x30($sp)
/* 00E1DC 0040E1DC AFA50034 */  sw          $a1, 0x34($sp)
/* 00E1E0 0040E1E0 AFB00014 */  sw          $s0, 0x14($sp)
/* 00E1E4 0040E1E4 8F99807C */  lw          $t9, %call16(fopen)($gp)
/* 00E1E8 0040E1E8 8F85802C */  lw          $a1, %got(STR_10010320)($gp)
/* 00E1EC 0040E1EC 8FA40030 */  lw          $a0, 0x30($sp)
/* 00E1F0 0040E1F0 0320F809 */  jalr        $t9
/* 00E1F4 0040E1F4 24A50320 */   addiu      $a1, $a1, %lo(STR_10010320)
/* 00E1F8 0040E1F8 AFA2002C */  sw          $v0, 0x2C($sp)
/* 00E1FC 0040E1FC 8FAE002C */  lw          $t6, 0x2C($sp)
/* 00E200 0040E200 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E204 0040E204 15C0000B */  bnez        $t6, .L0040E234
/* 00E208 0040E208 00000000 */   nop
/* 00E20C 0040E20C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E210 0040E210 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00E214 0040E214 8F85802C */  lw          $a1, %got(STR_10010324)($gp)
/* 00E218 0040E218 8FA60030 */  lw          $a2, 0x30($sp)
/* 00E21C 0040E21C 24840020 */  addiu       $a0, $a0, 0x20
/* 00E220 0040E220 0320F809 */  jalr        $t9
/* 00E224 0040E224 24A50324 */   addiu      $a1, $a1, %lo(STR_10010324)
/* 00E228 0040E228 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E22C 0040E22C 1000013B */  b           .L0040E71C
/* 00E230 0040E230 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E234:
/* 00E234 0040E234 8F8F8654 */  lw          $t7, %got(segmentList)($gp)
/* 00E238 0040E238 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00E23C 0040E23C 11E000DF */  beqz        $t7, .L0040E5BC
/* 00E240 0040E240 AFAF0028 */   sw         $t7, 0x28($sp)
.L0040E244:
/* 00E244 0040E244 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E248 0040E248 8F85802C */  lw          $a1, %got(STR_10010340)($gp)
/* 00E24C 0040E24C 8FB80028 */  lw          $t8, 0x28($sp)
/* 00E250 0040E250 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E254 0040E254 24A50340 */  addiu       $a1, $a1, %lo(STR_10010340)
/* 00E258 0040E258 0320F809 */  jalr        $t9
/* 00E25C 0040E25C 8F060004 */   lw         $a2, 0x4($t8)
/* 00E260 0040E260 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E264 0040E264 8FB90028 */  lw          $t9, 0x28($sp)
/* 00E268 0040E268 8F898674 */  lw          $t1, %got(offset)($gp)
/* 00E26C 0040E26C 8F85802C */  lw          $a1, %got(STR_1001035C)($gp)
/* 00E270 0040E270 8F280024 */  lw          $t0, 0x24($t9)
/* 00E274 0040E274 8D290000 */  lw          $t1, 0x0($t1)
/* 00E278 0040E278 8F260004 */  lw          $a2, 0x4($t9)
/* 00E27C 0040E27C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E280 0040E280 01093821 */  addu        $a3, $t0, $t1
/* 00E284 0040E284 24E71000 */  addiu       $a3, $a3, 0x1000
/* 00E288 0040E288 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E28C 0040E28C 0320F809 */  jalr        $t9
/* 00E290 0040E290 24A5035C */   addiu      $a1, $a1, %lo(STR_1001035C)
/* 00E294 0040E294 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E298 0040E298 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E29C 0040E29C 8F85802C */  lw          $a1, %got(STR_1001037C)($gp)
/* 00E2A0 0040E2A0 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E2A4 0040E2A4 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E2A8 0040E2A8 24A5037C */  addiu       $a1, $a1, %lo(STR_1001037C)
/* 00E2AC 0040E2AC 0320F809 */  jalr        $t9
/* 00E2B0 0040E2B0 8D460004 */   lw         $a2, 0x4($t2)
/* 00E2B4 0040E2B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E2B8 0040E2B8 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00E2BC 0040E2BC 8F8D8674 */  lw          $t5, %got(offset)($gp)
/* 00E2C0 0040E2C0 8F85802C */  lw          $a1, %got(STR_10010398)($gp)
/* 00E2C4 0040E2C4 8D6C0024 */  lw          $t4, 0x24($t3)
/* 00E2C8 0040E2C8 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00E2CC 0040E2CC 8D6F002C */  lw          $t7, 0x2C($t3)
/* 00E2D0 0040E2D0 8D790030 */  lw          $t9, 0x30($t3)
/* 00E2D4 0040E2D4 018D7021 */  addu        $t6, $t4, $t5
/* 00E2D8 0040E2D8 01CFC021 */  addu        $t8, $t6, $t7
/* 00E2DC 0040E2DC 8D690034 */  lw          $t1, 0x34($t3)
/* 00E2E0 0040E2E0 03194021 */  addu        $t0, $t8, $t9
/* 00E2E4 0040E2E4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E2E8 0040E2E8 01093821 */  addu        $a3, $t0, $t1
/* 00E2EC 0040E2EC 24E71000 */  addiu       $a3, $a3, 0x1000
/* 00E2F0 0040E2F0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E2F4 0040E2F4 8D660004 */  lw          $a2, 0x4($t3)
/* 00E2F8 0040E2F8 0320F809 */  jalr        $t9
/* 00E2FC 0040E2FC 24A50398 */   addiu      $a1, $a1, %lo(STR_10010398)
/* 00E300 0040E300 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E304 0040E304 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E308 0040E308 8D4C0028 */  lw          $t4, 0x28($t2)
/* 00E30C 0040E30C 318D0002 */  andi        $t5, $t4, 0x2
/* 00E310 0040E310 11A000A6 */  beqz        $t5, .L0040E5AC
/* 00E314 0040E314 00000000 */   nop
/* 00E318 0040E318 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E31C 0040E31C 8F85802C */  lw          $a1, %got(STR_100103B4)($gp)
/* 00E320 0040E320 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00E324 0040E324 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E328 0040E328 24A503B4 */  addiu       $a1, $a1, %lo(STR_100103B4)
/* 00E32C 0040E32C 0320F809 */  jalr        $t9
/* 00E330 0040E330 8DC60004 */   lw         $a2, 0x4($t6)
/* 00E334 0040E334 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E338 0040E338 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00E33C 0040E33C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E340 0040E340 8F85802C */  lw          $a1, %got(STR_100103D0)($gp)
/* 00E344 0040E344 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E348 0040E348 8DE60004 */  lw          $a2, 0x4($t7)
/* 00E34C 0040E34C 8DE70010 */  lw          $a3, 0x10($t7)
/* 00E350 0040E350 0320F809 */  jalr        $t9
/* 00E354 0040E354 24A503D0 */   addiu      $a1, $a1, %lo(STR_100103D0)
/* 00E358 0040E358 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E35C 0040E35C 8FB80028 */  lw          $t8, 0x28($sp)
/* 00E360 0040E360 8F19002C */  lw          $t9, 0x2C($t8)
/* 00E364 0040E364 13200025 */  beqz        $t9, .L0040E3FC
/* 00E368 0040E368 00000000 */   nop
/* 00E36C 0040E36C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E370 0040E370 8F85802C */  lw          $a1, %got(STR_100103EC)($gp)
/* 00E374 0040E374 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00E378 0040E378 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E37C 0040E37C 24A503EC */  addiu       $a1, $a1, %lo(STR_100103EC)
/* 00E380 0040E380 0320F809 */  jalr        $t9
/* 00E384 0040E384 8D660004 */   lw         $a2, 0x4($t3)
/* 00E388 0040E388 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E38C 0040E38C 8FA80028 */  lw          $t0, 0x28($sp)
/* 00E390 0040E390 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E394 0040E394 8F85802C */  lw          $a1, %got(STR_1001040C)($gp)
/* 00E398 0040E398 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E39C 0040E39C 8D060004 */  lw          $a2, 0x4($t0)
/* 00E3A0 0040E3A0 8D070064 */  lw          $a3, 0x64($t0)
/* 00E3A4 0040E3A4 0320F809 */  jalr        $t9
/* 00E3A8 0040E3A8 24A5040C */   addiu      $a1, $a1, %lo(STR_1001040C)
/* 00E3AC 0040E3AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E3B0 0040E3B0 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E3B4 0040E3B4 8F85802C */  lw          $a1, %got(STR_1001042C)($gp)
/* 00E3B8 0040E3B8 8FA90028 */  lw          $t1, 0x28($sp)
/* 00E3BC 0040E3BC 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E3C0 0040E3C0 24A5042C */  addiu       $a1, $a1, %lo(STR_1001042C)
/* 00E3C4 0040E3C4 0320F809 */  jalr        $t9
/* 00E3C8 0040E3C8 8D260004 */   lw         $a2, 0x4($t1)
/* 00E3CC 0040E3CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E3D0 0040E3D0 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E3D4 0040E3D4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E3D8 0040E3D8 8F85802C */  lw          $a1, %got(STR_10010448)($gp)
/* 00E3DC 0040E3DC 8D4C0064 */  lw          $t4, 0x64($t2)
/* 00E3E0 0040E3E0 8D4D002C */  lw          $t5, 0x2C($t2)
/* 00E3E4 0040E3E4 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E3E8 0040E3E8 8D460004 */  lw          $a2, 0x4($t2)
/* 00E3EC 0040E3EC 24A50448 */  addiu       $a1, $a1, %lo(STR_10010448)
/* 00E3F0 0040E3F0 0320F809 */  jalr        $t9
/* 00E3F4 0040E3F4 018D3821 */   addu       $a3, $t4, $t5
/* 00E3F8 0040E3F8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E3FC:
/* 00E3FC 0040E3FC 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00E400 0040E400 8DCF0030 */  lw          $t7, 0x30($t6)
/* 00E404 0040E404 8DD80034 */  lw          $t8, 0x34($t6)
/* 00E408 0040E408 01F8C821 */  addu        $t9, $t7, $t8
/* 00E40C 0040E40C 13200027 */  beqz        $t9, .L0040E4AC
/* 00E410 0040E410 00000000 */   nop
/* 00E414 0040E414 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E418 0040E418 8F85802C */  lw          $a1, %got(STR_10010464)($gp)
/* 00E41C 0040E41C 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00E420 0040E420 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E424 0040E424 24A50464 */  addiu       $a1, $a1, %lo(STR_10010464)
/* 00E428 0040E428 0320F809 */  jalr        $t9
/* 00E42C 0040E42C 8D660004 */   lw         $a2, 0x4($t3)
/* 00E430 0040E430 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E434 0040E434 8FA80028 */  lw          $t0, 0x28($sp)
/* 00E438 0040E438 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E43C 0040E43C 8F85802C */  lw          $a1, %got(STR_10010484)($gp)
/* 00E440 0040E440 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E444 0040E444 8D060004 */  lw          $a2, 0x4($t0)
/* 00E448 0040E448 8D070068 */  lw          $a3, 0x68($t0)
/* 00E44C 0040E44C 0320F809 */  jalr        $t9
/* 00E450 0040E450 24A50484 */   addiu      $a1, $a1, %lo(STR_10010484)
/* 00E454 0040E454 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E458 0040E458 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E45C 0040E45C 8F85802C */  lw          $a1, %got(STR_100104A4)($gp)
/* 00E460 0040E460 8FA90028 */  lw          $t1, 0x28($sp)
/* 00E464 0040E464 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E468 0040E468 24A504A4 */  addiu       $a1, $a1, %lo(STR_100104A4)
/* 00E46C 0040E46C 0320F809 */  jalr        $t9
/* 00E470 0040E470 8D260004 */   lw         $a2, 0x4($t1)
/* 00E474 0040E474 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E478 0040E478 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E47C 0040E47C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E480 0040E480 8F85802C */  lw          $a1, %got(STR_100104C0)($gp)
/* 00E484 0040E484 8D4C0068 */  lw          $t4, 0x68($t2)
/* 00E488 0040E488 8D4D0030 */  lw          $t5, 0x30($t2)
/* 00E48C 0040E48C 8D4F0034 */  lw          $t7, 0x34($t2)
/* 00E490 0040E490 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E494 0040E494 018D7021 */  addu        $t6, $t4, $t5
/* 00E498 0040E498 8D460004 */  lw          $a2, 0x4($t2)
/* 00E49C 0040E49C 24A504C0 */  addiu       $a1, $a1, %lo(STR_100104C0)
/* 00E4A0 0040E4A0 0320F809 */  jalr        $t9
/* 00E4A4 0040E4A4 01CF3821 */   addu       $a3, $t6, $t7
/* 00E4A8 0040E4A8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E4AC:
/* 00E4AC 0040E4AC 8FB80028 */  lw          $t8, 0x28($sp)
/* 00E4B0 0040E4B0 8F19003C */  lw          $t9, 0x3C($t8)
/* 00E4B4 0040E4B4 8F0B0038 */  lw          $t3, 0x38($t8)
/* 00E4B8 0040E4B8 032B4021 */  addu        $t0, $t9, $t3
/* 00E4BC 0040E4BC 11000028 */  beqz        $t0, .L0040E560
/* 00E4C0 0040E4C0 00000000 */   nop
/* 00E4C4 0040E4C4 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E4C8 0040E4C8 8F85802C */  lw          $a1, %got(STR_100104DC)($gp)
/* 00E4CC 0040E4CC 8FA90028 */  lw          $t1, 0x28($sp)
/* 00E4D0 0040E4D0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E4D4 0040E4D4 24A504DC */  addiu       $a1, $a1, %lo(STR_100104DC)
/* 00E4D8 0040E4D8 0320F809 */  jalr        $t9
/* 00E4DC 0040E4DC 8D260004 */   lw         $a2, 0x4($t1)
/* 00E4E0 0040E4E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E4E4 0040E4E4 8FAC0028 */  lw          $t4, 0x28($sp)
/* 00E4E8 0040E4E8 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E4EC 0040E4EC 8F85802C */  lw          $a1, %got(STR_100104F8)($gp)
/* 00E4F0 0040E4F0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E4F4 0040E4F4 8D860004 */  lw          $a2, 0x4($t4)
/* 00E4F8 0040E4F8 8D870070 */  lw          $a3, 0x70($t4)
/* 00E4FC 0040E4FC 0320F809 */  jalr        $t9
/* 00E500 0040E500 24A504F8 */   addiu      $a1, $a1, %lo(STR_100104F8)
/* 00E504 0040E504 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E508 0040E508 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E50C 0040E50C 8F85802C */  lw          $a1, %got(STR_10010518)($gp)
/* 00E510 0040E510 8FAD0028 */  lw          $t5, 0x28($sp)
/* 00E514 0040E514 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E518 0040E518 24A50518 */  addiu       $a1, $a1, %lo(STR_10010518)
/* 00E51C 0040E51C 0320F809 */  jalr        $t9
/* 00E520 0040E520 8DA60004 */   lw         $a2, 0x4($t5)
/* 00E524 0040E524 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E528 0040E528 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E52C 0040E52C 8F85802C */  lw          $a1, %got(STR_10010534)($gp)
/* 00E530 0040E530 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E534 0040E534 8D4E0070 */  lw          $t6, 0x70($t2)
/* 00E538 0040E538 8D4F0038 */  lw          $t7, 0x38($t2)
/* 00E53C 0040E53C 8D59003C */  lw          $t9, 0x3C($t2)
/* 00E540 0040E540 8D460004 */  lw          $a2, 0x4($t2)
/* 00E544 0040E544 01CFC021 */  addu        $t8, $t6, $t7
/* 00E548 0040E548 03193821 */  addu        $a3, $t8, $t9
/* 00E54C 0040E54C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E550 0040E550 24A50534 */  addiu       $a1, $a1, %lo(STR_10010534)
/* 00E554 0040E554 0320F809 */  jalr        $t9
/* 00E558 0040E558 00000000 */   nop
/* 00E55C 0040E55C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E560:
/* 00E560 0040E560 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E564 0040E564 8F85802C */  lw          $a1, %got(STR_10010550)($gp)
/* 00E568 0040E568 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00E56C 0040E56C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E570 0040E570 24A50550 */  addiu       $a1, $a1, %lo(STR_10010550)
/* 00E574 0040E574 0320F809 */  jalr        $t9
/* 00E578 0040E578 8D660004 */   lw         $a2, 0x4($t3)
/* 00E57C 0040E57C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E580 0040E580 8FA80028 */  lw          $t0, 0x28($sp)
/* 00E584 0040E584 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E588 0040E588 8F85802C */  lw          $a1, %got(STR_10010568)($gp)
/* 00E58C 0040E58C 8D090074 */  lw          $t1, 0x74($t0)
/* 00E590 0040E590 8D0C003C */  lw          $t4, 0x3C($t0)
/* 00E594 0040E594 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E598 0040E598 8D060004 */  lw          $a2, 0x4($t0)
/* 00E59C 0040E59C 24A50568 */  addiu       $a1, $a1, %lo(STR_10010568)
/* 00E5A0 0040E5A0 0320F809 */  jalr        $t9
/* 00E5A4 0040E5A4 012C3821 */   addu       $a3, $t1, $t4
/* 00E5A8 0040E5A8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E5AC:
/* 00E5AC 0040E5AC 8FAD0028 */  lw          $t5, 0x28($sp)
/* 00E5B0 0040E5B0 8DAE0000 */  lw          $t6, 0x0($t5)
/* 00E5B4 0040E5B4 15C0FF23 */  bnez        $t6, .L0040E244
/* 00E5B8 0040E5B8 AFAE0028 */   sw         $t6, 0x28($sp)
.L0040E5BC:
/* 00E5BC 0040E5BC 8F998080 */  lw          $t9, %call16(fclose)($gp)
/* 00E5C0 0040E5C0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E5C4 0040E5C4 0320F809 */  jalr        $t9
/* 00E5C8 0040E5C8 00000000 */   nop
/* 00E5CC 0040E5CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E5D0 0040E5D0 8F99805C */  lw          $t9, %call16(sysconf)($gp)
/* 00E5D4 0040E5D4 24040001 */  addiu       $a0, $zero, 0x1
/* 00E5D8 0040E5D8 0320F809 */  jalr        $t9
/* 00E5DC 0040E5DC 00000000 */   nop
/* 00E5E0 0040E5E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E5E4 0040E5E4 00408025 */  move        $s0, $v0
/* 00E5E8 0040E5E8 02002025 */  move        $a0, $s0
/* 00E5EC 0040E5EC 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 00E5F0 0040E5F0 0320F809 */  jalr        $t9
/* 00E5F4 0040E5F4 00000000 */   nop
/* 00E5F8 0040E5F8 AFA20024 */  sw          $v0, 0x24($sp)
/* 00E5FC 0040E5FC 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00E600 0040E600 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E604 0040E604 15E0000A */  bnez        $t7, .L0040E630
/* 00E608 0040E608 00000000 */   nop
/* 00E60C 0040E60C 8F998060 */  lw          $t9, %call16(fprintf)($gp)
/* 00E610 0040E610 8F848040 */  lw          $a0, %got(__iob)($gp)
/* 00E614 0040E614 8F85802C */  lw          $a1, %got(STR_10010580)($gp)
/* 00E618 0040E618 24840020 */  addiu       $a0, $a0, 0x20
/* 00E61C 0040E61C 0320F809 */  jalr        $t9
/* 00E620 0040E620 24A50580 */   addiu      $a1, $a1, %lo(STR_10010580)
/* 00E624 0040E624 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E628 0040E628 1000003C */  b           .L0040E71C
/* 00E62C 0040E62C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E630:
/* 00E630 0040E630 8F98802C */  lw          $t8, %got(STR_10010590)($gp)
/* 00E634 0040E634 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00E638 0040E638 27180590 */  addiu       $t8, $t8, %lo(STR_10010590)
/* 00E63C 0040E63C 27080024 */  addiu       $t0, $t8, 0x24
.L0040E640:
/* 00E640 0040E640 8B0B0000 */  lwl         $t3, 0x0($t8)
/* 00E644 0040E644 9B0B0003 */  lwr         $t3, 0x3($t8)
/* 00E648 0040E648 2718000C */  addiu       $t8, $t8, 0xC
/* 00E64C 0040E64C 254A000C */  addiu       $t2, $t2, 0xC
/* 00E650 0040E650 A94BFFF4 */  swl         $t3, -0xC($t2)
/* 00E654 0040E654 B94BFFF7 */  swr         $t3, -0x9($t2)
/* 00E658 0040E658 8B19FFF8 */  lwl         $t9, -0x8($t8)
/* 00E65C 0040E65C 9B19FFFB */  lwr         $t9, -0x5($t8)
/* 00E660 0040E660 A959FFF8 */  swl         $t9, -0x8($t2)
/* 00E664 0040E664 B959FFFB */  swr         $t9, -0x5($t2)
/* 00E668 0040E668 8B0BFFFC */  lwl         $t3, -0x4($t8)
/* 00E66C 0040E66C 9B0BFFFF */  lwr         $t3, -0x1($t8)
/* 00E670 0040E670 A94BFFFC */  swl         $t3, -0x4($t2)
/* 00E674 0040E674 1708FFF2 */  bne         $t8, $t0, .L0040E640
/* 00E678 0040E678 B94BFFFF */   swr        $t3, -0x1($t2)
/* 00E67C 0040E67C 8B0B0000 */  lwl         $t3, 0x0($t8)
/* 00E680 0040E680 9B0B0003 */  lwr         $t3, 0x3($t8)
/* 00E684 0040E684 A94B0000 */  swl         $t3, 0x0($t2)
/* 00E688 0040E688 B94B0003 */  swr         $t3, 0x3($t2)
/* 00E68C 0040E68C 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00E690 0040E690 8FA40024 */  lw          $a0, 0x24($sp)
/* 00E694 0040E694 8FA50034 */  lw          $a1, 0x34($sp)
/* 00E698 0040E698 0320F809 */  jalr        $t9
/* 00E69C 0040E69C 00000000 */   nop
/* 00E6A0 0040E6A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E6A4 0040E6A4 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00E6A8 0040E6A8 8F85802C */  lw          $a1, %got(STR_100105B8)($gp)
/* 00E6AC 0040E6AC 8FA40024 */  lw          $a0, 0x24($sp)
/* 00E6B0 0040E6B0 0320F809 */  jalr        $t9
/* 00E6B4 0040E6B4 24A505B8 */   addiu      $a1, $a1, %lo(STR_100105B8)
/* 00E6B8 0040E6B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E6BC 0040E6BC 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 00E6C0 0040E6C0 8FA40024 */  lw          $a0, 0x24($sp)
/* 00E6C4 0040E6C4 8FA50030 */  lw          $a1, 0x30($sp)
/* 00E6C8 0040E6C8 0320F809 */  jalr        $t9
/* 00E6CC 0040E6CC 00000000 */   nop
/* 00E6D0 0040E6D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E6D4 0040E6D4 8F89865C */  lw          $t1, %got(debug)($gp)
/* 00E6D8 0040E6D8 8D290000 */  lw          $t1, 0x0($t1)
/* 00E6DC 0040E6DC 11200007 */  beqz        $t1, .L0040E6FC
/* 00E6E0 0040E6E0 00000000 */   nop
/* 00E6E4 0040E6E4 8F998090 */  lw          $t9, %call16(printf)($gp)
/* 00E6E8 0040E6E8 8F84802C */  lw          $a0, %got(STR_100105BC)($gp)
/* 00E6EC 0040E6EC 8FA50024 */  lw          $a1, 0x24($sp)
/* 00E6F0 0040E6F0 0320F809 */  jalr        $t9
/* 00E6F4 0040E6F4 248405BC */   addiu      $a0, $a0, %lo(STR_100105BC)
/* 00E6F8 0040E6F8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E6FC:
/* 00E6FC 0040E6FC 8F998188 */  lw          $t9, %call16(execCommand)($gp)
/* 00E700 0040E700 8FA40024 */  lw          $a0, 0x24($sp)
/* 00E704 0040E704 0320F809 */  jalr        $t9
/* 00E708 0040E708 00000000 */   nop
/* 00E70C 0040E70C 10000003 */  b           .L0040E71C
/* 00E710 0040E710 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00E714 0040E714 10000001 */  b           .L0040E71C
/* 00E718 0040E718 00000000 */   nop
.L0040E71C:
/* 00E71C 0040E71C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00E720 0040E720 8FB00014 */  lw          $s0, 0x14($sp)
/* 00E724 0040E724 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E728 0040E728 03E00008 */  jr          $ra
/* 00E72C 0040E72C 00000000 */   nop
