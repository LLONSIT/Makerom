glabel func_00422334 # 184
# _gp_disp: 0xFBFBA0C
.set noreorder; .cpload $t9; # .set reorder
/* 022340 00422340 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 022344 00422344 AFBF001C */  sw          $ra, 0x1C($sp)
/* 022348 00422348 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02234C 0042234C AFB00014 */  sw          $s0, 0x14($sp)
/* 022350 00422350 AFA5007C */  sw          $a1, 0x7C($sp)
/* 022354 00422354 8C880050 */  lw          $t0, 0x50($a0)
/* 022358 00422358 00808025 */  move        $s0, $a0
/* 02235C 0042235C 24040006 */  addiu       $a0, $zero, 0x6
/* 022360 00422360 950E0038 */  lhu         $t6, 0x38($t0)
/* 022364 00422364 15C00003 */  bnez        $t6, .L00422374
/* 022368 00422368 00000000 */   nop
/* 02236C 0042236C 100000A2 */  b           .L004225F8
/* 022370 00422370 00001025 */   move       $v0, $zero
.L00422374:
/* 022374 00422374 8F9981C8 */  lw          $t9, %call16(_elf64_fsize)($gp)
/* 022378 00422378 8E060044 */  lw          $a2, 0x44($s0)
/* 02237C 0042237C AFA8003C */  sw          $t0, 0x3C($sp)
/* 022380 00422380 0320F809 */  jalr        $t9
/* 022384 00422384 24050001 */   addiu      $a1, $zero, 0x1
/* 022388 00422388 8FA8003C */  lw          $t0, 0x3C($sp)
/* 02238C 0042238C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 022390 00422390 00403025 */  move        $a2, $v0
/* 022394 00422394 950F0036 */  lhu         $t7, 0x36($t0)
/* 022398 00422398 2418020D */  addiu       $t8, $zero, 0x20D
/* 02239C 0042239C 504F0006 */  beql        $v0, $t7, .L004223B8
/* 0223A0 004223A0 95190038 */   lhu        $t9, 0x38($t0)
/* 0223A4 004223A4 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 0223A8 004223A8 2402FFFF */  addiu       $v0, $zero, -0x1
/* 0223AC 004223AC 10000092 */  b           .L004225F8
/* 0223B0 004223B0 AC380000 */   sw         $t8, 0x0($at)
/* 0223B4 004223B4 95190038 */  lhu         $t9, 0x38($t0)
.L004223B8:
/* 0223B8 004223B8 8F8586F0 */  lw          $a1, %got(_elf_work)($gp)
/* 0223BC 004223BC AFA8003C */  sw          $t0, 0x3C($sp)
/* 0223C0 004223C0 00D90019 */  multu       $a2, $t9
/* 0223C4 004223C4 8F9981CC */  lw          $t9, %call16(_elf64_msize)($gp)
/* 0223C8 004223C8 24040006 */  addiu       $a0, $zero, 0x6
/* 0223CC 004223CC 8CA50000 */  lw          $a1, 0x0($a1)
/* 0223D0 004223D0 00003012 */  mflo        $a2
/* 0223D4 004223D4 AFA60074 */  sw          $a2, 0x74($sp)
/* 0223D8 004223D8 0320F809 */  jalr        $t9
/* 0223DC 004223DC 00000000 */   nop
/* 0223E0 004223E0 8FA8003C */  lw          $t0, 0x3C($sp)
/* 0223E4 004223E4 24180000 */  addiu       $t8, $zero, 0x0
/* 0223E8 004223E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0223EC 004223EC 95090038 */  lhu         $t1, 0x38($t0)
/* 0223F0 004223F0 00490019 */  multu       $v0, $t1
/* 0223F4 004223F4 00005012 */  mflo        $t2
/* 0223F8 004223F8 AFAA0070 */  sw          $t2, 0x70($sp)
/* 0223FC 004223FC 8D0F0024 */  lw          $t7, 0x24($t0)
/* 022400 00422400 8D0E0020 */  lw          $t6, 0x20($t0)
/* 022404 00422404 03005025 */  move        $t2, $t8
/* 022408 00422408 AFAF0034 */  sw          $t7, 0x34($sp)
/* 02240C 0042240C AFAE0030 */  sw          $t6, 0x30($sp)
/* 022410 00422410 55C00004 */  bnel        $t6, $zero, .L00422424
/* 022414 00422414 8E0B0034 */   lw         $t3, 0x34($s0)
/* 022418 00422418 11E00019 */  beqz        $t7, .L00422480
/* 02241C 0042241C 00000000 */   nop
/* 022420 00422420 8E0B0034 */  lw          $t3, 0x34($s0)
.L00422424:
/* 022424 00422424 030E082B */  sltu        $at, $t8, $t6
/* 022428 00422428 AFB80028 */  sw          $t8, 0x28($sp)
/* 02242C 0042242C 0160C825 */  move        $t9, $t3
/* 022430 00422430 14200013 */  bnez        $at, .L00422480
/* 022434 00422434 AFAB002C */   sw         $t3, 0x2C($sp)
/* 022438 00422438 01D8082B */  sltu        $at, $t6, $t8
/* 02243C 0042243C 14200003 */  bnez        $at, .L0042244C
/* 022440 00422440 016F6823 */   subu       $t5, $t3, $t7
/* 022444 00422444 01EB082B */  sltu        $at, $t7, $t3
/* 022448 00422448 1020000D */  beqz        $at, .L00422480
.L0042244C:
/* 02244C 0042244C 016F082B */   sltu       $at, $t3, $t7
/* 022450 00422450 014E6023 */  subu        $t4, $t2, $t6
/* 022454 00422454 8FA90074 */  lw          $t1, 0x74($sp)
/* 022458 00422458 01816023 */  subu        $t4, $t4, $at
/* 02245C 0042245C 24180000 */  addiu       $t8, $zero, 0x0
/* 022460 00422460 030C082B */  sltu        $at, $t8, $t4
/* 022464 00422464 1420000B */  bnez        $at, .L00422494
/* 022468 00422468 0120C825 */   move       $t9, $t1
/* 02246C 0042246C 0198082B */  sltu        $at, $t4, $t8
/* 022470 00422470 14200003 */  bnez        $at, .L00422480
/* 022474 00422474 01A9082B */   sltu       $at, $t5, $t1
/* 022478 00422478 50200007 */  beql        $at, $zero, .L00422498
/* 02247C 0042247C 8FAB007C */   lw         $t3, 0x7C($sp)
.L00422480:
/* 022480 00422480 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 022484 00422484 240A020E */  addiu       $t2, $zero, 0x20E
/* 022488 00422488 2402FFFF */  addiu       $v0, $zero, -0x1
/* 02248C 0042248C 1000005A */  b           .L004225F8
/* 022490 00422490 AC2A0000 */   sw         $t2, 0x0($at)
.L00422494:
/* 022494 00422494 8FAB007C */  lw          $t3, 0x7C($sp)
.L00422498:
/* 022498 00422498 8FAE0074 */  lw          $t6, 0x74($sp)
/* 02249C 0042249C 8FAF0070 */  lw          $t7, 0x70($sp)
/* 0224A0 004224A0 11600015 */  beqz        $t3, .L004224F8
/* 0224A4 004224A4 01CF082B */   sltu       $at, $t6, $t7
/* 0224A8 004224A8 14200013 */  bnez        $at, .L004224F8
/* 0224AC 004224AC 8FA40030 */   lw         $a0, 0x30($sp)
/* 0224B0 004224B0 8F99812C */  lw          $t9, %call16(__ull_rem)($gp)
/* 0224B4 004224B4 8FA50034 */  lw          $a1, 0x34($sp)
/* 0224B8 004224B8 24060000 */  addiu       $a2, $zero, 0x0
/* 0224BC 004224BC 24070008 */  addiu       $a3, $zero, 0x8
/* 0224C0 004224C0 0320F809 */  jalr        $t9
/* 0224C4 004224C4 AFA8003C */   sw         $t0, 0x3C($sp)
/* 0224C8 004224C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0224CC 004224CC 1440000A */  bnez        $v0, .L004224F8
/* 0224D0 004224D0 8FA8003C */   lw         $t0, 0x3C($sp)
/* 0224D4 004224D4 14600008 */  bnez        $v1, .L004224F8
/* 0224D8 004224D8 00000000 */   nop
/* 0224DC 004224DC 8E020028 */  lw          $v0, 0x28($s0)
/* 0224E0 004224E0 8D0D0024 */  lw          $t5, 0x24($t0)
/* 0224E4 004224E4 24190001 */  addiu       $t9, $zero, 0x1
/* 0224E8 004224E8 AE19000C */  sw          $t9, 0xC($s0)
/* 0224EC 004224EC 004DC021 */  addu        $t8, $v0, $t5
/* 0224F0 004224F0 10000013 */  b           .L00422540
/* 0224F4 004224F4 AE180054 */   sw         $t8, 0x54($s0)
.L004224F8:
/* 0224F8 004224F8 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 0224FC 004224FC 8FA40070 */  lw          $a0, 0x70($sp)
/* 022500 00422500 AFA8003C */  sw          $t0, 0x3C($sp)
/* 022504 00422504 0320F809 */  jalr        $t9
/* 022508 00422508 00000000 */   nop
/* 02250C 0042250C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 022510 00422510 8FA8003C */  lw          $t0, 0x3C($sp)
/* 022514 00422514 14400006 */  bnez        $v0, .L00422530
/* 022518 00422518 AE020054 */   sw         $v0, 0x54($s0)
/* 02251C 0042251C 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 022520 00422520 240A040F */  addiu       $t2, $zero, 0x40F
/* 022524 00422524 2402FFFF */  addiu       $v0, $zero, -0x1
/* 022528 00422528 10000033 */  b           .L004225F8
/* 02252C 0042252C AC2A0000 */   sw         $t2, 0x0($at)
.L00422530:
/* 022530 00422530 8E0B0088 */  lw          $t3, 0x88($s0)
/* 022534 00422534 8E020028 */  lw          $v0, 0x28($s0)
/* 022538 00422538 356E0004 */  ori         $t6, $t3, 0x4
/* 02253C 0042253C AE0E0088 */  sw          $t6, 0x88($s0)
.L00422540:
/* 022540 00422540 8D0D0024 */  lw          $t5, 0x24($t0)
/* 022544 00422544 8FA60074 */  lw          $a2, 0x74($sp)
/* 022548 00422548 24180006 */  addiu       $t8, $zero, 0x6
/* 02254C 0042254C 004D4821 */  addu        $t1, $v0, $t5
/* 022550 00422550 AFA90040 */  sw          $t1, 0x40($sp)
/* 022554 00422554 AFB80044 */  sw          $t8, 0x44($sp)
/* 022558 00422558 AFA60048 */  sw          $a2, 0x48($sp)
/* 02255C 0042255C 8E0A0044 */  lw          $t2, 0x44($s0)
/* 022560 00422560 8F8C86F0 */  lw          $t4, %got(_elf_work)($gp)
/* 022564 00422564 8FAE0070 */  lw          $t6, 0x70($sp)
/* 022568 00422568 AFAA0054 */  sw          $t2, 0x54($sp)
/* 02256C 0042256C 8E0B0054 */  lw          $t3, 0x54($s0)
/* 022570 00422570 8D8C0000 */  lw          $t4, 0x0($t4)
/* 022574 00422574 8F998214 */  lw          $t9, %call16(_elf_vm)($gp)
/* 022578 00422578 AFAE0060 */  sw          $t6, 0x60($sp)
/* 02257C 0042257C AFAB0058 */  sw          $t3, 0x58($sp)
/* 022580 00422580 AFAC006C */  sw          $t4, 0x6C($sp)
/* 022584 00422584 8D050024 */  lw          $a1, 0x24($t0)
/* 022588 00422588 0320F809 */  jalr        $t9
/* 02258C 0042258C 02002025 */   move       $a0, $s0
/* 022590 00422590 14400008 */  bnez        $v0, .L004225B4
/* 022594 00422594 8FBC0018 */   lw         $gp, 0x18($sp)
/* 022598 00422598 8F9981D8 */  lw          $t9, %call16(_elf64_xlatetom)($gp)
/* 02259C 0042259C 27A40058 */  addiu       $a0, $sp, 0x58
/* 0225A0 004225A0 27A50040 */  addiu       $a1, $sp, 0x40
/* 0225A4 004225A4 0320F809 */  jalr        $t9
/* 0225A8 004225A8 8E060040 */   lw         $a2, 0x40($s0)
/* 0225AC 004225AC 1440000F */  bnez        $v0, .L004225EC
/* 0225B0 004225B0 8FBC0018 */   lw         $gp, 0x18($sp)
.L004225B4:
/* 0225B4 004225B4 8E020088 */  lw          $v0, 0x88($s0)
/* 0225B8 004225B8 2401FFFB */  addiu       $at, $zero, -0x5
/* 0225BC 004225BC 304F0004 */  andi        $t7, $v0, 0x4
/* 0225C0 004225C0 11E00007 */  beqz        $t7, .L004225E0
/* 0225C4 004225C4 00414824 */   and        $t1, $v0, $at
/* 0225C8 004225C8 AE090088 */  sw          $t1, 0x88($s0)
/* 0225CC 004225CC 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 0225D0 004225D0 8E040054 */  lw          $a0, 0x54($s0)
/* 0225D4 004225D4 0320F809 */  jalr        $t9
/* 0225D8 004225D8 00000000 */   nop
/* 0225DC 004225DC 8FBC0018 */  lw          $gp, 0x18($sp)
.L004225E0:
/* 0225E0 004225E0 AE000054 */  sw          $zero, 0x54($s0)
/* 0225E4 004225E4 10000004 */  b           .L004225F8
/* 0225E8 004225E8 2402FFFF */   addiu      $v0, $zero, -0x1
.L004225EC:
/* 0225EC 004225EC 8FAA0070 */  lw          $t2, 0x70($sp)
/* 0225F0 004225F0 00001025 */  move        $v0, $zero
/* 0225F4 004225F4 AE0A0058 */  sw          $t2, 0x58($s0)
.L004225F8:
/* 0225F8 004225F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0225FC 004225FC 8FB00014 */  lw          $s0, 0x14($sp)
/* 022600 00422600 27BD0078 */  addiu       $sp, $sp, 0x78
/* 022604 00422604 03E00008 */  jr          $ra
/* 022608 00422608 00000000 */   nop