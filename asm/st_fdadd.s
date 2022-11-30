.section .rodata
glabel STR_10013BE0
/* 043BE0 10013BE0 */ .asciz "st_fdadd: number of files (%d) exceeds max (%d)\n"
                      .balign 4

glabel STR_10013C14
/* 043C14 10013C14 */ .asciz "st_fdadd: allocation botch (%d fds and %d cfds) in %s\n"
                      .balign 4

glabel STR_10013C50
/* 043C50 10013C50 */ .asciz "</4Debug/>"
                      .balign 4

glabel STR_10013C5C
/* 043C5C 10013C5C */ .asciz ":"
                      .balign 4

glabel STR_10013C60
/* 043C60 10013C60 */ .asciz ":"
                      .balign 4

glabel STR_10013C64
/* 043C64 10013C64 */ .asciz "st_fdadd: could not malloc path name!! %d\n"
                      .balign 4

glabel STR_10013C90
/* 043C90 10013C90 */ .asciz "PWD"
                      .balign 4

glabel STR_10013C98
/* 043C98 10013C98 */ .asciz "Cannot st_fdadd: cannot malloc %d bytes to hold file name\n"
                      .balign 4

glabel STR_10013CD4
/* 043CD4 10013CD4 */ .asciz "/"
                      .balign 4

glabel STR_10013CD8
/* 043CD8 10013CD8 */ .asciz "%lu"
                      .balign 4

glabel STR_10013CDC
/* 043CDC 10013CDC */ .asciz "-1"
                      .balign 4

glabel STR_10013CE0
/* 043CE0 10013CE0 */ .asciz "%lu"
                      .balign 4


.section .text
glabel st_fdadd # 652
# _gp_disp: 0xFBE3AB4
.set noreorder; .cpload $t9; # .set reorder
/* 03A298 0043A298 27BDFF10 */  addiu       $sp, $sp, -0xF0
/* 03A29C 0043A29C 8F8A87C4 */  lw          $t2, %got(st_pchdr)($gp)
/* 03A2A0 0043A2A0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03A2A4 0043A2A4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03A2A8 0043A2A8 8D480000 */  lw          $t0, 0x0($t2)
/* 03A2AC 0043A2AC AFA400F0 */  sw          $a0, 0xF0($sp)
/* 03A2B0 0043A2B0 AFA500F4 */  sw          $a1, 0xF4($sp)
/* 03A2B4 0043A2B4 AFA600F8 */  sw          $a2, 0xF8($sp)
/* 03A2B8 0043A2B8 AFA700FC */  sw          $a3, 0xFC($sp)
/* 03A2BC 0043A2BC 8D0E000C */  lw          $t6, 0xC($t0)
/* 03A2C0 0043A2C0 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03A2C4 0043A2C4 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03A2C8 0043A2C8 01C1082A */  slt         $at, $t6, $at
/* 03A2CC 0043A2CC 1420000D */  bnez        $at, .L0043A304
/* 03A2D0 0043A2D0 AFAE0024 */   sw         $t6, 0x24($sp)
/* 03A2D4 0043A2D4 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 03A2D8 0043A2D8 8F84802C */  lw          $a0, %got(STR_10013BE0)($gp)
/* 03A2DC 0043A2DC 3C067FFF */  lui         $a2, (0x7FFFFFFF >> 16)
/* 03A2E0 0043A2E0 34C6FFFF */  ori         $a2, $a2, (0x7FFFFFFF & 0xFFFF)
/* 03A2E4 0043A2E4 01C02825 */  move        $a1, $t6
/* 03A2E8 0043A2E8 0320F809 */  jalr        $t9
/* 03A2EC 0043A2EC 24843BE0 */   addiu      $a0, $a0, %lo(STR_10013BE0)
/* 03A2F0 0043A2F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A2F4 0043A2F4 8F8A87C4 */  lw          $t2, %got(st_pchdr)($gp)
/* 03A2F8 0043A2F8 8D480000 */  lw          $t0, 0x0($t2)
/* 03A2FC 0043A2FC 8D18000C */  lw          $t8, 0xC($t0)
/* 03A300 0043A300 AFB80024 */  sw          $t8, 0x24($sp)
.L0043A304:
/* 03A304 0043A304 8D020010 */  lw          $v0, 0x10($t0)
/* 03A308 0043A308 8FB90024 */  lw          $t9, 0x24($sp)
/* 03A30C 0043A30C 25050010 */  addiu       $a1, $t0, 0x10
/* 03A310 0043A310 24060040 */  addiu       $a2, $zero, 0x40
/* 03A314 0043A314 0322082A */  slt         $at, $t9, $v0
/* 03A318 0043A318 14200037 */  bnez        $at, .L0043A3F8
/* 03A31C 0043A31C 24070019 */   addiu      $a3, $zero, 0x19
/* 03A320 0043A320 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03A324 0043A324 AFA200EC */  sw          $v0, 0xEC($sp)
/* 03A328 0043A328 8D040004 */  lw          $a0, 0x4($t0)
/* 03A32C 0043A32C 0320F809 */  jalr        $t9
/* 03A330 0043A330 AFA200E8 */   sw         $v0, 0xE8($sp)
/* 03A334 0043A334 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A338 0043A338 27A500EC */  addiu       $a1, $sp, 0xEC
/* 03A33C 0043A33C 24060048 */  addiu       $a2, $zero, 0x48
/* 03A340 0043A340 8F8A87C4 */  lw          $t2, %got(st_pchdr)($gp)
/* 03A344 0043A344 24070019 */  addiu       $a3, $zero, 0x19
/* 03A348 0043A348 8D4B0000 */  lw          $t3, 0x0($t2)
/* 03A34C 0043A34C AD620004 */  sw          $v0, 0x4($t3)
/* 03A350 0043A350 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03A354 0043A354 8D4C0000 */  lw          $t4, 0x0($t2)
/* 03A358 0043A358 0320F809 */  jalr        $t9
/* 03A35C 0043A35C 8D840008 */   lw         $a0, 0x8($t4)
/* 03A360 0043A360 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A364 0043A364 8FA900E8 */  lw          $t1, 0xE8($sp)
/* 03A368 0043A368 8F8A87C4 */  lw          $t2, %got(st_pchdr)($gp)
/* 03A36C 0043A36C 8D4D0000 */  lw          $t5, 0x0($t2)
/* 03A370 0043A370 ADA20008 */  sw          $v0, 0x8($t5)
/* 03A374 0043A374 8D4E0000 */  lw          $t6, 0x0($t2)
/* 03A378 0043A378 8FAF00EC */  lw          $t7, 0xEC($sp)
/* 03A37C 0043A37C 8FA700F0 */  lw          $a3, 0xF0($sp)
/* 03A380 0043A380 8DC60010 */  lw          $a2, 0x10($t6)
/* 03A384 0043A384 01E02825 */  move        $a1, $t7
/* 03A388 0043A388 51E6000A */  beql        $t7, $a2, .L0043A3B4
/* 03A38C 0043A38C 01202025 */   move       $a0, $t1
/* 03A390 0043A390 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A394 0043A394 8F84802C */  lw          $a0, %got(STR_10013C14)($gp)
/* 03A398 0043A398 AFA900E8 */  sw          $t1, 0xE8($sp)
/* 03A39C 0043A39C 0320F809 */  jalr        $t9
/* 03A3A0 0043A3A0 24843C14 */   addiu      $a0, $a0, %lo(STR_10013C14)
/* 03A3A4 0043A3A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A3A8 0043A3A8 8FA900E8 */  lw          $t1, 0xE8($sp)
/* 03A3AC 0043A3AC 8F8A87C4 */  lw          $t2, %got(st_pchdr)($gp)
/* 03A3B0 0043A3B0 01202025 */  move        $a0, $t1
.L0043A3B4:
/* 03A3B4 0043A3B4 11200010 */  beqz        $t1, .L0043A3F8
/* 03A3B8 0043A3B8 2529FFFF */   addiu      $t1, $t1, -0x1
/* 03A3BC 0043A3BC 000918C0 */  sll         $v1, $t1, 3
/* 03A3C0 0043A3C0 00691821 */  addu        $v1, $v1, $t1
/* 03A3C4 0043A3C4 000318C0 */  sll         $v1, $v1, 3
/* 03A3C8 0043A3C8 00091180 */  sll         $v0, $t1, 6
.L0043A3CC:
/* 03A3CC 0043A3CC 8D480000 */  lw          $t0, 0x0($t2)
/* 03A3D0 0043A3D0 01202025 */  move        $a0, $t1
/* 03A3D4 0043A3D4 8D180008 */  lw          $t8, 0x8($t0)
/* 03A3D8 0043A3D8 8D0B0004 */  lw          $t3, 0x4($t0)
/* 03A3DC 0043A3DC 0303C821 */  addu        $t9, $t8, $v1
/* 03A3E0 0043A3E0 01626021 */  addu        $t4, $t3, $v0
/* 03A3E4 0043A3E4 2442FFC0 */  addiu       $v0, $v0, -0x40
/* 03A3E8 0043A3E8 2463FFB8 */  addiu       $v1, $v1, -0x48
/* 03A3EC 0043A3EC AD990000 */  sw          $t9, 0x0($t4)
/* 03A3F0 0043A3F0 1520FFF6 */  bnez        $t1, .L0043A3CC
/* 03A3F4 0043A3F4 2529FFFF */   addiu      $t1, $t1, -0x1
.L0043A3F8:
/* 03A3F8 0043A3F8 8D480000 */  lw          $t0, 0x0($t2)
/* 03A3FC 0043A3FC 8F998030 */  lw          $t9, %got(B_1001B708)($gp)
/* 03A400 0043A400 8F8587C8 */  lw          $a1, %got(pcfdcur)($gp)
/* 03A404 0043A404 8D0E000C */  lw          $t6, 0xC($t0)
/* 03A408 0043A408 8D0D0004 */  lw          $t5, 0x4($t0)
/* 03A40C 0043A40C 2739B708 */  addiu       $t9, $t9, %lo(B_1001B708)
/* 03A410 0043A410 000E7980 */  sll         $t7, $t6, 6
/* 03A414 0043A414 01AF5821 */  addu        $t3, $t5, $t7
/* 03A418 0043A418 272D003C */  addiu       $t5, $t9, 0x3C
/* 03A41C 0043A41C ACAB0000 */  sw          $t3, 0x0($a1)
.L0043A420:
/* 03A420 0043A420 8F2E0000 */  lw          $t6, 0x0($t9)
/* 03A424 0043A424 2739000C */  addiu       $t9, $t9, 0xC
/* 03A428 0043A428 256B000C */  addiu       $t3, $t3, 0xC
/* 03A42C 0043A42C AD6EFFF4 */  sw          $t6, -0xC($t3)
/* 03A430 0043A430 8F2CFFF8 */  lw          $t4, -0x8($t9)
/* 03A434 0043A434 AD6CFFF8 */  sw          $t4, -0x8($t3)
/* 03A438 0043A438 8F2EFFFC */  lw          $t6, -0x4($t9)
/* 03A43C 0043A43C 172DFFF8 */  bne         $t9, $t5, .L0043A420
/* 03A440 0043A440 AD6EFFFC */   sw         $t6, -0x4($t3)
/* 03A444 0043A444 8F2E0000 */  lw          $t6, 0x0($t9)
/* 03A448 0043A448 AD6E0000 */  sw          $t6, 0x0($t3)
/* 03A44C 0043A44C 8D480000 */  lw          $t0, 0x0($t2)
/* 03A450 0043A450 8CAB0000 */  lw          $t3, 0x0($a1)
/* 03A454 0043A454 8D0F000C */  lw          $t7, 0xC($t0)
/* 03A458 0043A458 8D0D0008 */  lw          $t5, 0x8($t0)
/* 03A45C 0043A45C 000FC0C0 */  sll         $t8, $t7, 3
/* 03A460 0043A460 030FC021 */  addu        $t8, $t8, $t7
/* 03A464 0043A464 0018C0C0 */  sll         $t8, $t8, 3
/* 03A468 0043A468 030DC821 */  addu        $t9, $t8, $t5
/* 03A46C 0043A46C AD790000 */  sw          $t9, 0x0($t3)
/* 03A470 0043A470 8D480000 */  lw          $t0, 0x0($t2)
/* 03A474 0043A474 8F8D8030 */  lw          $t5, %got(B_1001B6C0)($gp)
/* 03A478 0043A478 8D0C000C */  lw          $t4, 0xC($t0)
/* 03A47C 0043A47C 25ADB6C0 */  addiu       $t5, $t5, %lo(B_1001B6C0)
/* 03A480 0043A480 258E0001 */  addiu       $t6, $t4, 0x1
/* 03A484 0043A484 AD0E000C */  sw          $t6, 0xC($t0)
/* 03A488 0043A488 8CAF0000 */  lw          $t7, 0x0($a1)
/* 03A48C 0043A48C 25AC0048 */  addiu       $t4, $t5, 0x48
/* 03A490 0043A490 8DF80000 */  lw          $t8, 0x0($t7)
.L0043A494:
/* 03A494 0043A494 8DAB0000 */  lw          $t3, 0x0($t5)
/* 03A498 0043A498 25AD000C */  addiu       $t5, $t5, 0xC
/* 03A49C 0043A49C 2718000C */  addiu       $t8, $t8, 0xC
/* 03A4A0 0043A4A0 AF0BFFF4 */  sw          $t3, -0xC($t8)
/* 03A4A4 0043A4A4 8DB9FFF8 */  lw          $t9, -0x8($t5)
/* 03A4A8 0043A4A8 AF19FFF8 */  sw          $t9, -0x8($t8)
/* 03A4AC 0043A4AC 8DABFFFC */  lw          $t3, -0x4($t5)
/* 03A4B0 0043A4B0 15ACFFF8 */  bne         $t5, $t4, .L0043A494
/* 03A4B4 0043A4B4 AF0BFFFC */   sw         $t3, -0x4($t8)
/* 03A4B8 0043A4B8 8CAE0000 */  lw          $t6, 0x0($a1)
/* 03A4BC 0043A4BC 8FAC00F4 */  lw          $t4, 0xF4($sp)
/* 03A4C0 0043A4C0 8DC30000 */  lw          $v1, 0x0($t6)
/* 03A4C4 0043A4C4 000CC0C0 */  sll         $t8, $t4, 3
/* 03A4C8 0043A4C8 9079003C */  lbu         $t9, 0x3C($v1)
/* 03A4CC 0043A4CC 332BFF07 */  andi        $t3, $t9, 0xFF07
/* 03A4D0 0043A4D0 030B7025 */  or          $t6, $t8, $t3
/* 03A4D4 0043A4D4 A06E003C */  sb          $t6, 0x3C($v1)
/* 03A4D8 0043A4D8 8CAF0000 */  lw          $t7, 0x0($a1)
/* 03A4DC 0043A4DC 8FAD00F8 */  lw          $t5, 0xF8($sp)
/* 03A4E0 0043A4E0 8DE30000 */  lw          $v1, 0x0($t7)
/* 03A4E4 0043A4E4 000DC880 */  sll         $t9, $t5, 2
/* 03A4E8 0043A4E8 33380004 */  andi        $t8, $t9, 0x4
/* 03A4EC 0043A4EC 906B003C */  lbu         $t3, 0x3C($v1)
/* 03A4F0 0043A4F0 316EFFFB */  andi        $t6, $t3, 0xFFFB
/* 03A4F4 0043A4F4 030E7825 */  or          $t7, $t8, $t6
/* 03A4F8 0043A4F8 A06F003C */  sb          $t7, 0x3C($v1)
/* 03A4FC 0043A4FC 8CAC0000 */  lw          $t4, 0x0($a1)
/* 03A500 0043A500 8FB900FC */  lw          $t9, 0xFC($sp)
/* 03A504 0043A504 8D830000 */  lw          $v1, 0x0($t4)
/* 03A508 0043A508 0019C180 */  sll         $t8, $t9, 6
/* 03A50C 0043A50C 906E003D */  lbu         $t6, 0x3D($v1)
/* 03A510 0043A510 31CFFF3F */  andi        $t7, $t6, 0xFF3F
/* 03A514 0043A514 030F6025 */  or          $t4, $t8, $t7
/* 03A518 0043A518 A06C003D */  sb          $t4, 0x3D($v1)
/* 03A51C 0043A51C 8F998234 */  lw          $t9, %call16(gethostsex)($gp)
/* 03A520 0043A520 0320F809 */  jalr        $t9
/* 03A524 0043A524 00000000 */   nop
/* 03A528 0043A528 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A52C 0043A52C 2C4B0001 */  sltiu       $t3, $v0, 0x1
/* 03A530 0043A530 316E0001 */  andi        $t6, $t3, 0x1
/* 03A534 0043A534 8F8587C8 */  lw          $a1, %got(pcfdcur)($gp)
/* 03A538 0043A538 8F84802C */  lw          $a0, %got(RO_10013C4C)($gp)
/* 03A53C 0043A53C 8CAD0000 */  lw          $t5, 0x0($a1)
/* 03A540 0043A540 24843C4C */  addiu       $a0, $a0, %lo(RO_10013C4C)
/* 03A544 0043A544 8DA30000 */  lw          $v1, 0x0($t5)
/* 03A548 0043A548 9078003C */  lbu         $t8, 0x3C($v1)
/* 03A54C 0043A54C 330FFFFE */  andi        $t7, $t8, 0xFFFE
/* 03A550 0043A550 01CF6025 */  or          $t4, $t6, $t7
/* 03A554 0043A554 A06C003C */  sb          $t4, 0x3C($v1)
/* 03A558 0043A558 8F9985EC */  lw          $t9, %call16(st_stradd)($gp)
/* 03A55C 0043A55C 0320F809 */  jalr        $t9
/* 03A560 0043A560 00000000 */   nop
/* 03A564 0043A564 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A568 0043A568 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 03A56C 0043A56C 8F9985EC */  lw          $t9, %call16(st_stradd)($gp)
/* 03A570 0043A570 0320F809 */  jalr        $t9
/* 03A574 0043A574 00000000 */   nop
/* 03A578 0043A578 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A57C 0043A57C 8F8587C8 */  lw          $a1, %got(pcfdcur)($gp)
/* 03A580 0043A580 8F8B8704 */  lw          $t3, %got(__sgi_common_dummy_file)($gp)
/* 03A584 0043A584 8CAD0000 */  lw          $t5, 0x0($a1)
/* 03A588 0043A588 8DB90000 */  lw          $t9, 0x0($t5)
/* 03A58C 0043A58C AF220004 */  sw          $v0, 0x4($t9)
/* 03A590 0043A590 8D6B0000 */  lw          $t3, 0x0($t3)
/* 03A594 0043A594 8FB800FC */  lw          $t8, 0xFC($sp)
/* 03A598 0043A598 556000E1 */  bnel        $t3, $zero, .L0043A920
/* 03A59C 0043A59C 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03A5A0 0043A5A0 13000003 */  beqz        $t8, .L0043A5B0
/* 03A5A4 0043A5A4 2B010003 */   slti       $at, $t8, 0x3
/* 03A5A8 0043A5A8 542000DD */  bnel        $at, $zero, .L0043A920
/* 03A5AC 0043A5AC 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043A5B0:
/* 03A5B0 0043A5B0 8F9985EC */  lw          $t9, %call16(st_stradd)($gp)
/* 03A5B4 0043A5B4 8F84802C */  lw          $a0, %got(STR_10013C50)($gp)
/* 03A5B8 0043A5B8 0320F809 */  jalr        $t9
/* 03A5BC 0043A5BC 24843C50 */   addiu      $a0, $a0, %lo(STR_10013C50)
/* 03A5C0 0043A5C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A5C4 0043A5C4 240F0001 */  addiu       $t7, $zero, 0x1
/* 03A5C8 0043A5C8 8F8E802C */  lw          $t6, %got(D_10015C0C)($gp)
/* 03A5CC 0043A5CC 81CE5C0C */  lb          $t6, %lo(D_10015C0C)($t6)
/* 03A5D0 0043A5D0 55C0006D */  bnel        $t6, $zero, .L0043A788
/* 03A5D4 0043A5D4 8FB800F0 */   lw         $t8, 0xF0($sp)
/* 03A5D8 0043A5D8 8F998174 */  lw          $t9, %call16(gethostname)($gp)
/* 03A5DC 0043A5DC 8F81802C */  lw          $at, %got(D_10015C0C)($gp)
/* 03A5E0 0043A5E0 8F848030 */  lw          $a0, %got(B_1001B748)($gp)
/* 03A5E4 0043A5E4 24050040 */  addiu       $a1, $zero, 0x40
/* 03A5E8 0043A5E8 A02F5C0C */  sb          $t7, %lo(D_10015C0C)($at)
/* 03A5EC 0043A5EC 0320F809 */  jalr        $t9
/* 03A5F0 0043A5F0 2484B748 */   addiu      $a0, $a0, %lo(B_1001B748)
/* 03A5F4 0043A5F4 0441000A */  bgez        $v0, .L0043A620
/* 03A5F8 0043A5F8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03A5FC 0043A5FC 8F8D802C */  lw          $t5, %got(STR_10013C5C)($gp)
/* 03A600 0043A600 8F8C8030 */  lw          $t4, %got(B_1001B748)($gp)
/* 03A604 0043A604 25AD3C5C */  addiu       $t5, $t5, %lo(STR_10013C5C)
/* 03A608 0043A608 91AB0000 */  lbu         $t3, 0x0($t5)
/* 03A60C 0043A60C 91B90001 */  lbu         $t9, 0x1($t5)
/* 03A610 0043A610 258CB748 */  addiu       $t4, $t4, %lo(B_1001B748)
/* 03A614 0043A614 A18B0000 */  sb          $t3, 0x0($t4)
/* 03A618 0043A618 10000008 */  b           .L0043A63C
/* 03A61C 0043A61C A1990001 */   sb         $t9, 0x1($t4)
.L0043A620:
/* 03A620 0043A620 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 03A624 0043A624 8F848030 */  lw          $a0, %got(B_1001B748)($gp)
/* 03A628 0043A628 8F85802C */  lw          $a1, %got(STR_10013C60)($gp)
/* 03A62C 0043A62C 2484B748 */  addiu       $a0, $a0, %lo(B_1001B748)
/* 03A630 0043A630 0320F809 */  jalr        $t9
/* 03A634 0043A634 24A53C60 */   addiu      $a1, $a1, %lo(STR_10013C60)
/* 03A638 0043A638 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A63C:
/* 03A63C 0043A63C 8F998178 */  lw          $t9, %call16(pathconf)($gp)
/* 03A640 0043A640 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 03A644 0043A644 24050005 */  addiu       $a1, $zero, 0x5
/* 03A648 0043A648 0320F809 */  jalr        $t9
/* 03A64C 0043A64C 00000000 */   nop
/* 03A650 0043A650 28410005 */  slti        $at, $v0, 0x5
/* 03A654 0043A654 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A658 0043A658 10200002 */  beqz        $at, .L0043A664
/* 03A65C 0043A65C 00401825 */   move       $v1, $v0
/* 03A660 0043A660 24030005 */  addiu       $v1, $zero, 0x5
.L0043A664:
/* 03A664 0043A664 00031880 */  sll         $v1, $v1, 2
/* 03A668 0043A668 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 03A66C 0043A66C 00031080 */  sll         $v0, $v1, 2
/* 03A670 0043A670 00431023 */  subu        $v0, $v0, $v1
/* 03A674 0043A674 2442000A */  addiu       $v0, $v0, 0xA
/* 03A678 0043A678 00402025 */  move        $a0, $v0
/* 03A67C 0043A67C AFA20028 */  sw          $v0, 0x28($sp)
/* 03A680 0043A680 0320F809 */  jalr        $t9
/* 03A684 0043A684 AFA300E4 */   sw         $v1, 0xE4($sp)
/* 03A688 0043A688 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A68C 0043A68C 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 03A690 0043A690 8FA50028 */  lw          $a1, 0x28($sp)
/* 03A694 0043A694 8F818030 */  lw          $at, %got(B_1001B790)($gp)
/* 03A698 0043A698 14400008 */  bnez        $v0, .L0043A6BC
/* 03A69C 0043A69C AC22B790 */   sw         $v0, %lo(B_1001B790)($at)
/* 03A6A0 0043A6A0 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A6A4 0043A6A4 8F84802C */  lw          $a0, %got(STR_10013C64)($gp)
/* 03A6A8 0043A6A8 AFA300E4 */  sw          $v1, 0xE4($sp)
/* 03A6AC 0043A6AC 0320F809 */  jalr        $t9
/* 03A6B0 0043A6B0 24843C64 */   addiu      $a0, $a0, %lo(STR_10013C64)
/* 03A6B4 0043A6B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A6B8 0043A6B8 8FA300E4 */  lw          $v1, 0xE4($sp)
.L0043A6BC:
/* 03A6BC 0043A6BC 8F99817C */  lw          $t9, %call16(getcwd)($gp)
/* 03A6C0 0043A6C0 00002025 */  move        $a0, $zero
/* 03A6C4 0043A6C4 8FA50028 */  lw          $a1, 0x28($sp)
/* 03A6C8 0043A6C8 0320F809 */  jalr        $t9
/* 03A6CC 0043A6CC AFA300E4 */   sw         $v1, 0xE4($sp)
/* 03A6D0 0043A6D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A6D4 0043A6D4 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 03A6D8 0043A6D8 8F818030 */  lw          $at, %got(B_1001B794)($gp)
/* 03A6DC 0043A6DC 14400019 */  bnez        $v0, .L0043A744
/* 03A6E0 0043A6E0 AC22B794 */   sw         $v0, %lo(B_1001B794)($at)
/* 03A6E4 0043A6E4 8F998094 */  lw          $t9, %call16(getenv)($gp)
/* 03A6E8 0043A6E8 8F84802C */  lw          $a0, %got(STR_10013C90)($gp)
/* 03A6EC 0043A6EC AFA300E4 */  sw          $v1, 0xE4($sp)
/* 03A6F0 0043A6F0 0320F809 */  jalr        $t9
/* 03A6F4 0043A6F4 24843C90 */   addiu      $a0, $a0, %lo(STR_10013C90)
/* 03A6F8 0043A6F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A6FC 0043A6FC 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 03A700 0043A700 14400003 */  bnez        $v0, .L0043A710
/* 03A704 0043A704 00402825 */   move       $a1, $v0
/* 03A708 0043A708 8F85802C */  lw          $a1, %got(RO_10013C94)($gp)
/* 03A70C 0043A70C 24A53C94 */  addiu       $a1, $a1, %lo(RO_10013C94)
.L0043A710:
/* 03A710 0043A710 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 03A714 0043A714 8F818030 */  lw          $at, %got(B_1001B794)($gp)
/* 03A718 0043A718 00A02025 */  move        $a0, $a1
/* 03A71C 0043A71C AFA300E4 */  sw          $v1, 0xE4($sp)
/* 03A720 0043A720 0320F809 */  jalr        $t9
/* 03A724 0043A724 AC25B794 */   sw         $a1, %lo(B_1001B794)($at)
/* 03A728 0043A728 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 03A72C 0043A72C 24440001 */  addiu       $a0, $v0, 0x1
/* 03A730 0043A730 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A734 0043A734 0064082A */  slt         $at, $v1, $a0
/* 03A738 0043A738 10200002 */  beqz        $at, .L0043A744
/* 03A73C 0043A73C 00000000 */   nop
/* 03A740 0043A740 00041840 */  sll         $v1, $a0, 1
.L0043A744:
/* 03A744 0043A744 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 03A748 0043A748 00032880 */  sll         $a1, $v1, 2
/* 03A74C 0043A74C 24A5000A */  addiu       $a1, $a1, 0xA
/* 03A750 0043A750 00A02025 */  move        $a0, $a1
/* 03A754 0043A754 0320F809 */  jalr        $t9
/* 03A758 0043A758 AFA50028 */   sw         $a1, 0x28($sp)
/* 03A75C 0043A75C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A760 0043A760 8FA50028 */  lw          $a1, 0x28($sp)
/* 03A764 0043A764 8F818030 */  lw          $at, %got(B_1001B78C)($gp)
/* 03A768 0043A768 14400006 */  bnez        $v0, .L0043A784
/* 03A76C 0043A76C AC22B78C */   sw         $v0, %lo(B_1001B78C)($at)
/* 03A770 0043A770 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03A774 0043A774 8F84802C */  lw          $a0, %got(STR_10013C98)($gp)
/* 03A778 0043A778 0320F809 */  jalr        $t9
/* 03A77C 0043A77C 24843C98 */   addiu      $a0, $a0, %lo(STR_10013C98)
/* 03A780 0043A780 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A784:
/* 03A784 0043A784 8FB800F0 */  lw          $t8, 0xF0($sp)
.L0043A788:
/* 03A788 0043A788 2401002F */  addiu       $at, $zero, 0x2F
/* 03A78C 0043A78C 830E0000 */  lb          $t6, 0x0($t8)
/* 03A790 0043A790 11C10016 */  beq         $t6, $at, .L0043A7EC
/* 03A794 0043A794 00000000 */   nop
/* 03A798 0043A798 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 03A79C 0043A79C 8F858030 */  lw          $a1, %got(B_1001B794)($gp)
/* 03A7A0 0043A7A0 8F848030 */  lw          $a0, %got(B_1001B790)($gp)
/* 03A7A4 0043A7A4 8CA5B794 */  lw          $a1, %lo(B_1001B794)($a1)
/* 03A7A8 0043A7A8 0320F809 */  jalr        $t9
/* 03A7AC 0043A7AC 8C84B790 */   lw         $a0, %lo(B_1001B790)($a0)
/* 03A7B0 0043A7B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A7B4 0043A7B4 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 03A7B8 0043A7B8 8F848030 */  lw          $a0, %got(B_1001B790)($gp)
/* 03A7BC 0043A7BC 8F85802C */  lw          $a1, %got(STR_10013CD4)($gp)
/* 03A7C0 0043A7C0 8C84B790 */  lw          $a0, %lo(B_1001B790)($a0)
/* 03A7C4 0043A7C4 0320F809 */  jalr        $t9
/* 03A7C8 0043A7C8 24A53CD4 */   addiu      $a1, $a1, %lo(STR_10013CD4)
/* 03A7CC 0043A7CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A7D0 0043A7D0 8FA500F0 */  lw          $a1, 0xF0($sp)
/* 03A7D4 0043A7D4 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 03A7D8 0043A7D8 8F848030 */  lw          $a0, %got(B_1001B790)($gp)
/* 03A7DC 0043A7DC 0320F809 */  jalr        $t9
/* 03A7E0 0043A7E0 8C84B790 */   lw         $a0, %lo(B_1001B790)($a0)
/* 03A7E4 0043A7E4 10000007 */  b           .L0043A804
/* 03A7E8 0043A7E8 8FBC0018 */   lw         $gp, 0x18($sp)
.L0043A7EC:
/* 03A7EC 0043A7EC 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 03A7F0 0043A7F0 8F848030 */  lw          $a0, %got(B_1001B790)($gp)
/* 03A7F4 0043A7F4 8FA500F0 */  lw          $a1, 0xF0($sp)
/* 03A7F8 0043A7F8 0320F809 */  jalr        $t9
/* 03A7FC 0043A7FC 8C84B790 */   lw         $a0, %lo(B_1001B790)($a0)
/* 03A800 0043A800 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A804:
/* 03A804 0043A804 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 03A808 0043A808 8F848030 */  lw          $a0, %got(B_1001B78C)($gp)
/* 03A80C 0043A80C 8F858030 */  lw          $a1, %got(B_1001B748)($gp)
/* 03A810 0043A810 8C84B78C */  lw          $a0, %lo(B_1001B78C)($a0)
/* 03A814 0043A814 0320F809 */  jalr        $t9
/* 03A818 0043A818 24A5B748 */   addiu      $a1, $a1, %lo(B_1001B748)
/* 03A81C 0043A81C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A820 0043A820 8F998098 */  lw          $t9, %call16(strcat)($gp)
/* 03A824 0043A824 8F848030 */  lw          $a0, %got(B_1001B78C)($gp)
/* 03A828 0043A828 8F858030 */  lw          $a1, %got(B_1001B790)($gp)
/* 03A82C 0043A82C 8C84B78C */  lw          $a0, %lo(B_1001B78C)($a0)
/* 03A830 0043A830 0320F809 */  jalr        $t9
/* 03A834 0043A834 8CA5B790 */   lw         $a1, %lo(B_1001B790)($a1)
/* 03A838 0043A838 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A83C 0043A83C 8F9985EC */  lw          $t9, %call16(st_stradd)($gp)
/* 03A840 0043A840 8F848030 */  lw          $a0, %got(B_1001B78C)($gp)
/* 03A844 0043A844 0320F809 */  jalr        $t9
/* 03A848 0043A848 8C84B78C */   lw         $a0, %lo(B_1001B78C)($a0)
/* 03A84C 0043A84C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A850 0043A850 240C0001 */  addiu       $t4, $zero, 0x1
/* 03A854 0043A854 8F8F802C */  lw          $t7, %got(D_10015C10)($gp)
/* 03A858 0043A858 8DEF5C10 */  lw          $t7, %lo(D_10015C10)($t7)
/* 03A85C 0043A85C 15E00011 */  bnez        $t7, .L0043A8A4
/* 03A860 0043A860 00000000 */   nop
/* 03A864 0043A864 8F998180 */  lw          $t9, %call16(time)($gp)
/* 03A868 0043A868 8F81802C */  lw          $at, %got(D_10015C10)($gp)
/* 03A86C 0043A86C 00002025 */  move        $a0, $zero
/* 03A870 0043A870 0320F809 */  jalr        $t9
/* 03A874 0043A874 AC2C5C10 */   sw         $t4, %lo(D_10015C10)($at)
/* 03A878 0043A878 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A87C 0043A87C 00403025 */  move        $a2, $v0
/* 03A880 0043A880 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 03A884 0043A884 8F818030 */  lw          $at, %got(B_1001B7B8)($gp)
/* 03A888 0043A888 8F848030 */  lw          $a0, %got(B_1001B798)($gp)
/* 03A88C 0043A88C 8F85802C */  lw          $a1, %got(STR_10013CD8)($gp)
/* 03A890 0043A890 AC22B7B8 */  sw          $v0, %lo(B_1001B7B8)($at)
/* 03A894 0043A894 2484B798 */  addiu       $a0, $a0, %lo(B_1001B798)
/* 03A898 0043A898 0320F809 */  jalr        $t9
/* 03A89C 0043A89C 24A53CD8 */   addiu      $a1, $a1, %lo(STR_10013CD8)
/* 03A8A0 0043A8A0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A8A4:
/* 03A8A4 0043A8A4 8F9985EC */  lw          $t9, %call16(st_stradd)($gp)
/* 03A8A8 0043A8A8 8F848030 */  lw          $a0, %got(B_1001B798)($gp)
/* 03A8AC 0043A8AC 0320F809 */  jalr        $t9
/* 03A8B0 0043A8B0 2484B798 */   addiu      $a0, $a0, %lo(B_1001B798)
/* 03A8B4 0043A8B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A8B8 0043A8B8 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 03A8BC 0043A8BC 27A50034 */  addiu       $a1, $sp, 0x34
/* 03A8C0 0043A8C0 8F9980AC */  lw          $t9, %call16(stat)($gp)
/* 03A8C4 0043A8C4 0320F809 */  jalr        $t9
/* 03A8C8 0043A8C8 00000000 */   nop
/* 03A8CC 0043A8CC 04410007 */  bgez        $v0, .L0043A8EC
/* 03A8D0 0043A8D0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03A8D4 0043A8D4 8F9985EC */  lw          $t9, %call16(st_stradd)($gp)
/* 03A8D8 0043A8D8 8F84802C */  lw          $a0, %got(STR_10013CDC)($gp)
/* 03A8DC 0043A8DC 0320F809 */  jalr        $t9
/* 03A8E0 0043A8E0 24843CDC */   addiu      $a0, $a0, %lo(STR_10013CDC)
/* 03A8E4 0043A8E4 1000000D */  b           .L0043A91C
/* 03A8E8 0043A8E8 8FBC0018 */   lw         $gp, 0x18($sp)
.L0043A8EC:
/* 03A8EC 0043A8EC 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 03A8F0 0043A8F0 8F85802C */  lw          $a1, %got(STR_10013CE0)($gp)
/* 03A8F4 0043A8F4 27A400BC */  addiu       $a0, $sp, 0xBC
/* 03A8F8 0043A8F8 8FA60064 */  lw          $a2, 0x64($sp)
/* 03A8FC 0043A8FC 0320F809 */  jalr        $t9
/* 03A900 0043A900 24A53CE0 */   addiu      $a1, $a1, %lo(STR_10013CE0)
/* 03A904 0043A904 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A908 0043A908 27A400BC */  addiu       $a0, $sp, 0xBC
/* 03A90C 0043A90C 8F9985EC */  lw          $t9, %call16(st_stradd)($gp)
/* 03A910 0043A910 0320F809 */  jalr        $t9
/* 03A914 0043A914 00000000 */   nop
/* 03A918 0043A918 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A91C:
/* 03A91C 0043A91C 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043A920:
/* 03A920 0043A920 27BD00F0 */  addiu       $sp, $sp, 0xF0
/* 03A924 0043A924 03E00008 */  jr          $ra
/* 03A928 0043A928 00000000 */   nop
