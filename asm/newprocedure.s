glabel newprocedure # 531
# _gp_disp: 0xFBEEFD8
.set noreorder; .cpload $t9; # .set reorder
/* 02ED74 0042ED74 8F89802C */  lw          $t1, %got(D_10015B30)($gp)
/* 02ED78 0042ED78 AFA40000 */  sw          $a0, 0x0($sp)
/* 02ED7C 0042ED7C 25295B30 */  addiu       $t1, $t1, %lo(D_10015B30)
/* 02ED80 0042ED80 8D230000 */  lw          $v1, 0x0($t1)
/* 02ED84 0042ED84 00034023 */  negu        $t0, $v1
/* 02ED88 0042ED88 29010010 */  slti        $at, $t0, 0x10
/* 02ED8C 0042ED8C 14200003 */  bnez        $at, .L0042ED9C
/* 02ED90 0042ED90 00087080 */   sll        $t6, $t0, 2
/* 02ED94 0042ED94 03E00008 */  jr          $ra
/* 02ED98 0042ED98 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042ED9C:
/* 02ED9C 0042ED9C 8F8A8030 */  lw          $t2, %got(B_1001A230)($gp)
/* 02EDA0 0042EDA0 01C87023 */  subu        $t6, $t6, $t0
/* 02EDA4 0042EDA4 000E7080 */  sll         $t6, $t6, 2
/* 02EDA8 0042EDA8 01C87021 */  addu        $t6, $t6, $t0
/* 02EDAC 0042EDAC 000E7080 */  sll         $t6, $t6, 2
/* 02EDB0 0042EDB0 254AA230 */  addiu       $t2, $t2, %lo(B_1001A230)
/* 02EDB4 0042EDB4 014E2021 */  addu        $a0, $t2, $t6
/* 02EDB8 0042EDB8 01441023 */  subu        $v0, $t2, $a0
/* 02EDBC 0042EDBC 24010034 */  addiu       $at, $zero, 0x34
/* 02EDC0 0042EDC0 0041001A */  div         $zero, $v0, $at
/* 02EDC4 0042EDC4 246FFFFF */  addiu       $t7, $v1, -0x1
/* 02EDC8 0042EDC8 8FB80000 */  lw          $t8, 0x0($sp)
/* 02EDCC 0042EDCC AD2F0000 */  sw          $t7, 0x0($t1)
/* 02EDD0 0042EDD0 AC850004 */  sw          $a1, 0x4($a0)
/* 02EDD4 0042EDD4 AC860008 */  sw          $a2, 0x8($a0)
/* 02EDD8 0042EDD8 AC870028 */  sw          $a3, 0x28($a0)
/* 02EDDC 0042EDDC AC980000 */  sw          $t8, 0x0($a0)
/* 02EDE0 0042EDE0 8FB90010 */  lw          $t9, 0x10($sp)
/* 02EDE4 0042EDE4 00001012 */  mflo        $v0
/* 02EDE8 0042EDE8 AC99002C */  sw          $t9, 0x2C($a0)
/* 02EDEC 0042EDEC 00000000 */  nop
/* 02EDF0 0042EDF0 03E00008 */  jr          $ra
/* 02EDF4 0042EDF4 00000000 */   nop
/* 02EDF8 0042EDF8 00000000 */  nop
/* 02EDFC 0042EDFC 00000000 */  nop
