glabel func_00421314 # 171
/* 021314 00421314 00801025 */  move        $v0, $a0
/* 021318 00421318 00061900 */  sll         $v1, $a2, 4
/* 02131C 0042131C 00832021 */  addu        $a0, $a0, $v1
/* 021320 00421320 0044382B */  sltu        $a3, $v0, $a0
/* 021324 00421324 00A32821 */  addu        $a1, $a1, $v1
/* 021328 00421328 10E0002F */  beqz        $a3, .L004213E8
/* 02132C 0042132C 2484FFF0 */   addiu      $a0, $a0, -0x10
.L00421330:
/* 021330 00421330 90AFFFFF */  lbu         $t7, -0x1($a1)
/* 021334 00421334 90AEFFFE */  lbu         $t6, -0x2($a1)
/* 021338 00421338 0044382B */  sltu        $a3, $v0, $a0
/* 02133C 0042133C 000FC200 */  sll         $t8, $t7, 8
/* 021340 00421340 01D8C821 */  addu        $t9, $t6, $t8
/* 021344 00421344 A499000E */  sh          $t9, 0xE($a0)
/* 021348 00421348 90A8FFFD */  lbu         $t0, -0x3($a1)
/* 02134C 0042134C 2484FFF0 */  addiu       $a0, $a0, -0x10
/* 021350 00421350 24A5FFF0 */  addiu       $a1, $a1, -0x10
/* 021354 00421354 A088001D */  sb          $t0, 0x1D($a0)
/* 021358 00421358 90A9000C */  lbu         $t1, 0xC($a1)
/* 02135C 0042135C A089001C */  sb          $t1, 0x1C($a0)
/* 021360 00421360 90AA000B */  lbu         $t2, 0xB($a1)
/* 021364 00421364 90AC000A */  lbu         $t4, 0xA($a1)
/* 021368 00421368 90AE0009 */  lbu         $t6, 0x9($a1)
/* 02136C 0042136C 000A5A00 */  sll         $t3, $t2, 8
/* 021370 00421370 016C6821 */  addu        $t5, $t3, $t4
/* 021374 00421374 90A80008 */  lbu         $t0, 0x8($a1)
/* 021378 00421378 000D7A00 */  sll         $t7, $t5, 8
/* 02137C 0042137C 01EEC021 */  addu        $t8, $t7, $t6
/* 021380 00421380 0018CA00 */  sll         $t9, $t8, 8
/* 021384 00421384 01194821 */  addu        $t1, $t0, $t9
/* 021388 00421388 AC890018 */  sw          $t1, 0x18($a0)
/* 02138C 0042138C 90AA0007 */  lbu         $t2, 0x7($a1)
/* 021390 00421390 90AC0006 */  lbu         $t4, 0x6($a1)
/* 021394 00421394 90AE0005 */  lbu         $t6, 0x5($a1)
/* 021398 00421398 000A5A00 */  sll         $t3, $t2, 8
/* 02139C 0042139C 016C6821 */  addu        $t5, $t3, $t4
/* 0213A0 004213A0 90B90004 */  lbu         $t9, 0x4($a1)
/* 0213A4 004213A4 000D7A00 */  sll         $t7, $t5, 8
/* 0213A8 004213A8 01EEC021 */  addu        $t8, $t7, $t6
/* 0213AC 004213AC 00184200 */  sll         $t0, $t8, 8
/* 0213B0 004213B0 03284821 */  addu        $t1, $t9, $t0
/* 0213B4 004213B4 AC890014 */  sw          $t1, 0x14($a0)
/* 0213B8 004213B8 90AA0003 */  lbu         $t2, 0x3($a1)
/* 0213BC 004213BC 90AC0002 */  lbu         $t4, 0x2($a1)
/* 0213C0 004213C0 90AE0001 */  lbu         $t6, 0x1($a1)
/* 0213C4 004213C4 000A5A00 */  sll         $t3, $t2, 8
/* 0213C8 004213C8 016C6821 */  addu        $t5, $t3, $t4
/* 0213CC 004213CC 90A80000 */  lbu         $t0, 0x0($a1)
/* 0213D0 004213D0 000D7A00 */  sll         $t7, $t5, 8
/* 0213D4 004213D4 01EEC021 */  addu        $t8, $t7, $t6
/* 0213D8 004213D8 0018CA00 */  sll         $t9, $t8, 8
/* 0213DC 004213DC 01194821 */  addu        $t1, $t0, $t9
/* 0213E0 004213E0 14E0FFD3 */  bnez        $a3, .L00421330
/* 0213E4 004213E4 AC890010 */   sw         $t1, 0x10($a0)
.L004213E8:
/* 0213E8 004213E8 03E00008 */  jr          $ra
/* 0213EC 004213EC 00000000 */   nop
