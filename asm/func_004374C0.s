.section .rodata
glabel STR_10013900
/* 043900 10013900 */ .asciz "_block%x"
                      .balign 4


.section .text
glabel func_004374C0 # 613
# _gp_disp: 0xFBE6880
.set noreorder; .cpload $t9; # .set reorder
/* 0374CC 004374CC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0374D0 004374D0 AFB1001C */  sw          $s1, 0x1C($sp)
/* 0374D4 004374D4 AFB00018 */  sw          $s0, 0x18($sp)
/* 0374D8 004374D8 00808025 */  move        $s0, $a0
/* 0374DC 004374DC 00C08825 */  move        $s1, $a2
/* 0374E0 004374E0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0374E4 004374E4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0374E8 004374E8 04C10009 */  bgez        $a2, .L00437510
/* 0374EC 004374EC AFA5002C */   sw         $a1, 0x2C($sp)
/* 0374F0 004374F0 00067023 */  negu        $t6, $a2
/* 0374F4 004374F4 8F9887D0 */  lw          $t8, %got(usersymbol)($gp)
/* 0374F8 004374F8 000E7880 */  sll         $t7, $t6, 2
/* 0374FC 004374FC 01EE7823 */  subu        $t7, $t7, $t6
/* 037500 00437500 000F7880 */  sll         $t7, $t7, 2
/* 037504 00437504 01F8C821 */  addu        $t9, $t7, $t8
/* 037508 00437508 10000042 */  b           .L00437614
/* 03750C 0043750C 8F220000 */   lw         $v0, 0x0($t9)
.L00437510:
/* 037510 00437510 8E0300D8 */  lw          $v1, 0xD8($s0)
/* 037514 00437514 00114900 */  sll         $t1, $s1, 4
/* 037518 00437518 0223082B */  sltu        $at, $s1, $v1
/* 03751C 0043751C 14200009 */  bnez        $at, .L00437544
/* 037520 00437520 00035900 */   sll        $t3, $v1, 4
/* 037524 00437524 8E0800AC */  lw          $t0, 0xAC($s0)
/* 037528 00437528 000B6023 */  negu        $t4, $t3
/* 03752C 0043752C 8E0F00B0 */  lw          $t7, 0xB0($s0)
/* 037530 00437530 01095021 */  addu        $t2, $t0, $t1
/* 037534 00437534 014C6821 */  addu        $t5, $t2, $t4
/* 037538 00437538 8DAE0004 */  lw          $t6, 0x4($t5)
/* 03753C 0043753C 10000035 */  b           .L00437614
/* 037540 00437540 01CF1021 */   addu       $v0, $t6, $t7
.L00437544:
/* 037544 00437544 8F998560 */  lw          $t9, %call16(symbol_type)($gp)
/* 037548 00437548 02002025 */  move        $a0, $s0
/* 03754C 0043754C 02202825 */  move        $a1, $s1
/* 037550 00437550 0320F809 */  jalr        $t9
/* 037554 00437554 00000000 */   nop
/* 037558 00437558 24010007 */  addiu       $at, $zero, 0x7
/* 03755C 0043755C 1441001A */  bne         $v0, $at, .L004375C8
/* 037560 00437560 8FBC0020 */   lw         $gp, 0x20($sp)
/* 037564 00437564 8F99855C */  lw          $t9, %call16(symbol_class)($gp)
/* 037568 00437568 02002025 */  move        $a0, $s0
/* 03756C 0043756C 02202825 */  move        $a1, $s1
/* 037570 00437570 0320F809 */  jalr        $t9
/* 037574 00437574 00000000 */   nop
/* 037578 00437578 24010001 */  addiu       $at, $zero, 0x1
/* 03757C 0043757C 14410012 */  bne         $v0, $at, .L004375C8
/* 037580 00437580 8FBC0020 */   lw         $gp, 0x20($sp)
/* 037584 00437584 8F998564 */  lw          $t9, %call16(symbol_value)($gp)
/* 037588 00437588 02002025 */  move        $a0, $s0
/* 03758C 0043758C 02202825 */  move        $a1, $s1
/* 037590 00437590 0320F809 */  jalr        $t9
/* 037594 00437594 00000000 */   nop
/* 037598 00437598 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03759C 0043759C 00403025 */  move        $a2, $v0
/* 0375A0 004375A0 8F908030 */  lw          $s0, %got(B_1001A660)($gp)
/* 0375A4 004375A4 8F998068 */  lw          $t9, %call16(sprintf)($gp)
/* 0375A8 004375A8 8F85802C */  lw          $a1, %got(STR_10013900)($gp)
/* 0375AC 004375AC 2610A660 */  addiu       $s0, $s0, %lo(B_1001A660)
/* 0375B0 004375B0 02002025 */  move        $a0, $s0
/* 0375B4 004375B4 0320F809 */  jalr        $t9
/* 0375B8 004375B8 24A53900 */   addiu      $a1, $a1, %lo(STR_10013900)
/* 0375BC 004375BC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0375C0 004375C0 10000014 */  b           .L00437614
/* 0375C4 004375C4 02001025 */   move       $v0, $s0
.L004375C8:
/* 0375C8 004375C8 8F998508 */  lw          $t9, %call16(file_string_base)($gp)
/* 0375CC 004375CC 02002025 */  move        $a0, $s0
/* 0375D0 004375D0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 0375D4 004375D4 0320F809 */  jalr        $t9
/* 0375D8 004375D8 00000000 */   nop
/* 0375DC 004375DC 8E0900CC */  lw          $t1, 0xCC($s0)
/* 0375E0 004375E0 8E1800A8 */  lw          $t8, 0xA8($s0)
/* 0375E4 004375E4 0011C880 */  sll         $t9, $s1, 2
/* 0375E8 004375E8 00095880 */  sll         $t3, $t1, 2
/* 0375EC 004375EC 0331C823 */  subu        $t9, $t9, $s1
/* 0375F0 004375F0 01695823 */  subu        $t3, $t3, $t1
/* 0375F4 004375F4 000B5880 */  sll         $t3, $t3, 2
/* 0375F8 004375F8 0019C880 */  sll         $t9, $t9, 2
/* 0375FC 004375FC 000B5023 */  negu        $t2, $t3
/* 037600 00437600 03194021 */  addu        $t0, $t8, $t9
/* 037604 00437604 010A6021 */  addu        $t4, $t0, $t2
/* 037608 00437608 8D8D0000 */  lw          $t5, 0x0($t4)
/* 03760C 0043760C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 037610 00437610 01A21021 */  addu        $v0, $t5, $v0
.L00437614:
/* 037614 00437614 8FBF0024 */  lw          $ra, 0x24($sp)
/* 037618 00437618 8FB00018 */  lw          $s0, 0x18($sp)
/* 03761C 0043761C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 037620 00437620 03E00008 */  jr          $ra
/* 037624 00437624 27BD0028 */   addiu      $sp, $sp, 0x28
