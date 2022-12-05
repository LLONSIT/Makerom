glabel func_0041C358 # 101
# _gp_disp: 0xFC019E8
.set noreorder; .cpload $t9; # .set reorder
/* 01C364 0041C364 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01C368 0041C368 AFB10018 */  sw          $s1, 0x18($sp)
/* 01C36C 0041C36C 00061180 */  sll         $v0, $a2, 6
/* 01C370 0041C370 00828821 */  addu        $s1, $a0, $v0
/* 01C374 0041C374 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01C378 0041C378 AFB00014 */  sw          $s0, 0x14($sp)
/* 01C37C 0041C37C 0091382B */  sltu        $a3, $a0, $s1
/* 01C380 0041C380 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01C384 0041C384 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01C388 0041C388 00809025 */  move        $s2, $a0
/* 01C38C 0041C38C 00A28021 */  addu        $s0, $a1, $v0
/* 01C390 0041C390 10E00217 */  beqz        $a3, .L0041CBF0
/* 01C394 0041C394 2631FFC0 */   addiu      $s1, $s1, -0x40
.L0041C398:
/* 01C398 0041C398 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C39C 0041C39C 2610FFC0 */  addiu       $s0, $s0, -0x40
/* 01C3A0 0041C3A0 92050038 */  lbu         $a1, 0x38($s0)
/* 01C3A4 0041C3A4 24040000 */  addiu       $a0, $zero, 0x0
/* 01C3A8 0041C3A8 24060000 */  addiu       $a2, $zero, 0x0
/* 01C3AC 0041C3AC 0320F809 */  jalr        $t9
/* 01C3B0 0041C3B0 24070008 */   addiu      $a3, $zero, 0x8
/* 01C3B4 0041C3B4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C3B8 0041C3B8 920F0039 */  lbu         $t7, 0x39($s0)
/* 01C3BC 0041C3BC 24060000 */  addiu       $a2, $zero, 0x0
/* 01C3C0 0041C3C0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C3C4 0041C3C4 01E32821 */  addu        $a1, $t7, $v1
/* 01C3C8 0041C3C8 00A3082B */  sltu        $at, $a1, $v1
/* 01C3CC 0041C3CC 000FC7C3 */  sra         $t8, $t7, 31
/* 01C3D0 0041C3D0 00382021 */  addu        $a0, $at, $t8
/* 01C3D4 0041C3D4 00822021 */  addu        $a0, $a0, $v0
/* 01C3D8 0041C3D8 0320F809 */  jalr        $t9
/* 01C3DC 0041C3DC 24070008 */   addiu      $a3, $zero, 0x8
/* 01C3E0 0041C3E0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C3E4 0041C3E4 9208003A */  lbu         $t0, 0x3A($s0)
/* 01C3E8 0041C3E8 24060000 */  addiu       $a2, $zero, 0x0
/* 01C3EC 0041C3EC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C3F0 0041C3F0 01032821 */  addu        $a1, $t0, $v1
/* 01C3F4 0041C3F4 00A3082B */  sltu        $at, $a1, $v1
/* 01C3F8 0041C3F8 000857C3 */  sra         $t2, $t0, 31
/* 01C3FC 0041C3FC 002A2021 */  addu        $a0, $at, $t2
/* 01C400 0041C400 00822021 */  addu        $a0, $a0, $v0
/* 01C404 0041C404 0320F809 */  jalr        $t9
/* 01C408 0041C408 24070008 */   addiu      $a3, $zero, 0x8
/* 01C40C 0041C40C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C410 0041C410 9209003B */  lbu         $t1, 0x3B($s0)
/* 01C414 0041C414 24060000 */  addiu       $a2, $zero, 0x0
/* 01C418 0041C418 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C41C 0041C41C 01232821 */  addu        $a1, $t1, $v1
/* 01C420 0041C420 00A3082B */  sltu        $at, $a1, $v1
/* 01C424 0041C424 000967C3 */  sra         $t4, $t1, 31
/* 01C428 0041C428 002C2021 */  addu        $a0, $at, $t4
/* 01C42C 0041C42C 00822021 */  addu        $a0, $a0, $v0
/* 01C430 0041C430 0320F809 */  jalr        $t9
/* 01C434 0041C434 24070008 */   addiu      $a3, $zero, 0x8
/* 01C438 0041C438 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C43C 0041C43C 920E003C */  lbu         $t6, 0x3C($s0)
/* 01C440 0041C440 24060000 */  addiu       $a2, $zero, 0x0
/* 01C444 0041C444 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C448 0041C448 01C32821 */  addu        $a1, $t6, $v1
/* 01C44C 0041C44C 00A3082B */  sltu        $at, $a1, $v1
/* 01C450 0041C450 000EC7C3 */  sra         $t8, $t6, 31
/* 01C454 0041C454 00382021 */  addu        $a0, $at, $t8
/* 01C458 0041C458 00822021 */  addu        $a0, $a0, $v0
/* 01C45C 0041C45C 0320F809 */  jalr        $t9
/* 01C460 0041C460 24070008 */   addiu      $a3, $zero, 0x8
/* 01C464 0041C464 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C468 0041C468 920F003D */  lbu         $t7, 0x3D($s0)
/* 01C46C 0041C46C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C470 0041C470 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C474 0041C474 01E32821 */  addu        $a1, $t7, $v1
/* 01C478 0041C478 00A3082B */  sltu        $at, $a1, $v1
/* 01C47C 0041C47C 000F47C3 */  sra         $t0, $t7, 31
/* 01C480 0041C480 00282021 */  addu        $a0, $at, $t0
/* 01C484 0041C484 00822021 */  addu        $a0, $a0, $v0
/* 01C488 0041C488 0320F809 */  jalr        $t9
/* 01C48C 0041C48C 24070008 */   addiu      $a3, $zero, 0x8
/* 01C490 0041C490 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C494 0041C494 920A003E */  lbu         $t2, 0x3E($s0)
/* 01C498 0041C498 24060000 */  addiu       $a2, $zero, 0x0
/* 01C49C 0041C49C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C4A0 0041C4A0 01432821 */  addu        $a1, $t2, $v1
/* 01C4A4 0041C4A4 00A3082B */  sltu        $at, $a1, $v1
/* 01C4A8 0041C4A8 000A67C3 */  sra         $t4, $t2, 31
/* 01C4AC 0041C4AC 002C2021 */  addu        $a0, $at, $t4
/* 01C4B0 0041C4B0 00822021 */  addu        $a0, $a0, $v0
/* 01C4B4 0041C4B4 0320F809 */  jalr        $t9
/* 01C4B8 0041C4B8 24070008 */   addiu      $a3, $zero, 0x8
/* 01C4BC 0041C4BC 920B003F */  lbu         $t3, 0x3F($s0)
/* 01C4C0 0041C4C0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C4C4 0041C4C4 24040000 */  addiu       $a0, $zero, 0x0
/* 01C4C8 0041C4C8 0163C821 */  addu        $t9, $t3, $v1
/* 01C4CC 0041C4CC 0323082B */  sltu        $at, $t9, $v1
/* 01C4D0 0041C4D0 000B77C3 */  sra         $t6, $t3, 31
/* 01C4D4 0041C4D4 002EC021 */  addu        $t8, $at, $t6
/* 01C4D8 0041C4D8 0302C021 */  addu        $t8, $t8, $v0
/* 01C4DC 0041C4DC AE380038 */  sw          $t8, 0x38($s1)
/* 01C4E0 0041C4E0 AE39003C */  sw          $t9, 0x3C($s1)
/* 01C4E4 0041C4E4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C4E8 0041C4E8 92050030 */  lbu         $a1, 0x30($s0)
/* 01C4EC 0041C4EC 24060000 */  addiu       $a2, $zero, 0x0
/* 01C4F0 0041C4F0 0320F809 */  jalr        $t9
/* 01C4F4 0041C4F4 24070008 */   addiu      $a3, $zero, 0x8
/* 01C4F8 0041C4F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C4FC 0041C4FC 92090031 */  lbu         $t1, 0x31($s0)
/* 01C500 0041C500 24060000 */  addiu       $a2, $zero, 0x0
/* 01C504 0041C504 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C508 0041C508 01232821 */  addu        $a1, $t1, $v1
/* 01C50C 0041C50C 00A3082B */  sltu        $at, $a1, $v1
/* 01C510 0041C510 000957C3 */  sra         $t2, $t1, 31
/* 01C514 0041C514 002A2021 */  addu        $a0, $at, $t2
/* 01C518 0041C518 00822021 */  addu        $a0, $a0, $v0
/* 01C51C 0041C51C 0320F809 */  jalr        $t9
/* 01C520 0041C520 24070008 */   addiu      $a3, $zero, 0x8
/* 01C524 0041C524 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C528 0041C528 920C0032 */  lbu         $t4, 0x32($s0)
/* 01C52C 0041C52C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C530 0041C530 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C534 0041C534 01832821 */  addu        $a1, $t4, $v1
/* 01C538 0041C538 00A3082B */  sltu        $at, $a1, $v1
/* 01C53C 0041C53C 000C77C3 */  sra         $t6, $t4, 31
/* 01C540 0041C540 002E2021 */  addu        $a0, $at, $t6
/* 01C544 0041C544 00822021 */  addu        $a0, $a0, $v0
/* 01C548 0041C548 0320F809 */  jalr        $t9
/* 01C54C 0041C54C 24070008 */   addiu      $a3, $zero, 0x8
/* 01C550 0041C550 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C554 0041C554 920D0033 */  lbu         $t5, 0x33($s0)
/* 01C558 0041C558 24060000 */  addiu       $a2, $zero, 0x0
/* 01C55C 0041C55C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C560 0041C560 01A32821 */  addu        $a1, $t5, $v1
/* 01C564 0041C564 00A3082B */  sltu        $at, $a1, $v1
/* 01C568 0041C568 000DC7C3 */  sra         $t8, $t5, 31
/* 01C56C 0041C56C 00382021 */  addu        $a0, $at, $t8
/* 01C570 0041C570 00822021 */  addu        $a0, $a0, $v0
/* 01C574 0041C574 0320F809 */  jalr        $t9
/* 01C578 0041C578 24070008 */   addiu      $a3, $zero, 0x8
/* 01C57C 0041C57C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C580 0041C580 92080034 */  lbu         $t0, 0x34($s0)
/* 01C584 0041C584 24060000 */  addiu       $a2, $zero, 0x0
/* 01C588 0041C588 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C58C 0041C58C 01032821 */  addu        $a1, $t0, $v1
/* 01C590 0041C590 00A3082B */  sltu        $at, $a1, $v1
/* 01C594 0041C594 000857C3 */  sra         $t2, $t0, 31
/* 01C598 0041C598 002A2021 */  addu        $a0, $at, $t2
/* 01C59C 0041C59C 00822021 */  addu        $a0, $a0, $v0
/* 01C5A0 0041C5A0 0320F809 */  jalr        $t9
/* 01C5A4 0041C5A4 24070008 */   addiu      $a3, $zero, 0x8
/* 01C5A8 0041C5A8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C5AC 0041C5AC 92090035 */  lbu         $t1, 0x35($s0)
/* 01C5B0 0041C5B0 24060000 */  addiu       $a2, $zero, 0x0
/* 01C5B4 0041C5B4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C5B8 0041C5B8 01232821 */  addu        $a1, $t1, $v1
/* 01C5BC 0041C5BC 00A3082B */  sltu        $at, $a1, $v1
/* 01C5C0 0041C5C0 000967C3 */  sra         $t4, $t1, 31
/* 01C5C4 0041C5C4 002C2021 */  addu        $a0, $at, $t4
/* 01C5C8 0041C5C8 00822021 */  addu        $a0, $a0, $v0
/* 01C5CC 0041C5CC 0320F809 */  jalr        $t9
/* 01C5D0 0041C5D0 24070008 */   addiu      $a3, $zero, 0x8
/* 01C5D4 0041C5D4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C5D8 0041C5D8 920E0036 */  lbu         $t6, 0x36($s0)
/* 01C5DC 0041C5DC 24060000 */  addiu       $a2, $zero, 0x0
/* 01C5E0 0041C5E0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C5E4 0041C5E4 01C32821 */  addu        $a1, $t6, $v1
/* 01C5E8 0041C5E8 00A3082B */  sltu        $at, $a1, $v1
/* 01C5EC 0041C5EC 000EC7C3 */  sra         $t8, $t6, 31
/* 01C5F0 0041C5F0 00382021 */  addu        $a0, $at, $t8
/* 01C5F4 0041C5F4 00822021 */  addu        $a0, $a0, $v0
/* 01C5F8 0041C5F8 0320F809 */  jalr        $t9
/* 01C5FC 0041C5FC 24070008 */   addiu      $a3, $zero, 0x8
/* 01C600 0041C600 920F0037 */  lbu         $t7, 0x37($s0)
/* 01C604 0041C604 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C608 0041C608 24040000 */  addiu       $a0, $zero, 0x0
/* 01C60C 0041C60C 01E35821 */  addu        $t3, $t7, $v1
/* 01C610 0041C610 0163082B */  sltu        $at, $t3, $v1
/* 01C614 0041C614 000F47C3 */  sra         $t0, $t7, 31
/* 01C618 0041C618 00285021 */  addu        $t2, $at, $t0
/* 01C61C 0041C61C 01425021 */  addu        $t2, $t2, $v0
/* 01C620 0041C620 AE2A0030 */  sw          $t2, 0x30($s1)
/* 01C624 0041C624 AE2B0034 */  sw          $t3, 0x34($s1)
/* 01C628 0041C628 920C002C */  lbu         $t4, 0x2C($s0)
/* 01C62C 0041C62C 920E002D */  lbu         $t6, 0x2D($s0)
/* 01C630 0041C630 920F002E */  lbu         $t7, 0x2E($s0)
/* 01C634 0041C634 000C6A00 */  sll         $t5, $t4, 8
/* 01C638 0041C638 01AEC021 */  addu        $t8, $t5, $t6
/* 01C63C 0041C63C 920A002F */  lbu         $t2, 0x2F($s0)
/* 01C640 0041C640 0018CA00 */  sll         $t9, $t8, 8
/* 01C644 0041C644 032F4021 */  addu        $t0, $t9, $t7
/* 01C648 0041C648 00084A00 */  sll         $t1, $t0, 8
/* 01C64C 0041C64C 01495821 */  addu        $t3, $t2, $t1
/* 01C650 0041C650 AE2B002C */  sw          $t3, 0x2C($s1)
/* 01C654 0041C654 920C0028 */  lbu         $t4, 0x28($s0)
/* 01C658 0041C658 920E0029 */  lbu         $t6, 0x29($s0)
/* 01C65C 0041C65C 920F002A */  lbu         $t7, 0x2A($s0)
/* 01C660 0041C660 000C6A00 */  sll         $t5, $t4, 8
/* 01C664 0041C664 01AEC021 */  addu        $t8, $t5, $t6
/* 01C668 0041C668 9209002B */  lbu         $t1, 0x2B($s0)
/* 01C66C 0041C66C 0018CA00 */  sll         $t9, $t8, 8
/* 01C670 0041C670 032F4021 */  addu        $t0, $t9, $t7
/* 01C674 0041C674 00085200 */  sll         $t2, $t0, 8
/* 01C678 0041C678 012A5821 */  addu        $t3, $t1, $t2
/* 01C67C 0041C67C AE2B0028 */  sw          $t3, 0x28($s1)
/* 01C680 0041C680 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C684 0041C684 92050020 */  lbu         $a1, 0x20($s0)
/* 01C688 0041C688 24060000 */  addiu       $a2, $zero, 0x0
/* 01C68C 0041C68C 0320F809 */  jalr        $t9
/* 01C690 0041C690 24070008 */   addiu      $a3, $zero, 0x8
/* 01C694 0041C694 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C698 0041C698 920D0021 */  lbu         $t5, 0x21($s0)
/* 01C69C 0041C69C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C6A0 0041C6A0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C6A4 0041C6A4 01A32821 */  addu        $a1, $t5, $v1
/* 01C6A8 0041C6A8 00A3082B */  sltu        $at, $a1, $v1
/* 01C6AC 0041C6AC 000D77C3 */  sra         $t6, $t5, 31
/* 01C6B0 0041C6B0 002E2021 */  addu        $a0, $at, $t6
/* 01C6B4 0041C6B4 00822021 */  addu        $a0, $a0, $v0
/* 01C6B8 0041C6B8 0320F809 */  jalr        $t9
/* 01C6BC 0041C6BC 24070008 */   addiu      $a3, $zero, 0x8
/* 01C6C0 0041C6C0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C6C4 0041C6C4 92180022 */  lbu         $t8, 0x22($s0)
/* 01C6C8 0041C6C8 24060000 */  addiu       $a2, $zero, 0x0
/* 01C6CC 0041C6CC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C6D0 0041C6D0 03032821 */  addu        $a1, $t8, $v1
/* 01C6D4 0041C6D4 00A3082B */  sltu        $at, $a1, $v1
/* 01C6D8 0041C6D8 001847C3 */  sra         $t0, $t8, 31
/* 01C6DC 0041C6DC 00282021 */  addu        $a0, $at, $t0
/* 01C6E0 0041C6E0 00822021 */  addu        $a0, $a0, $v0
/* 01C6E4 0041C6E4 0320F809 */  jalr        $t9
/* 01C6E8 0041C6E8 24070008 */   addiu      $a3, $zero, 0x8
/* 01C6EC 0041C6EC 92190023 */  lbu         $t9, 0x23($s0)
/* 01C6F0 0041C6F0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C6F4 0041C6F4 24060000 */  addiu       $a2, $zero, 0x0
/* 01C6F8 0041C6F8 001957C3 */  sra         $t2, $t9, 31
/* 01C6FC 0041C6FC 03232821 */  addu        $a1, $t9, $v1
/* 01C700 0041C700 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C704 0041C704 00A3082B */  sltu        $at, $a1, $v1
/* 01C708 0041C708 002A2021 */  addu        $a0, $at, $t2
/* 01C70C 0041C70C 00822021 */  addu        $a0, $a0, $v0
/* 01C710 0041C710 0320F809 */  jalr        $t9
/* 01C714 0041C714 24070008 */   addiu      $a3, $zero, 0x8
/* 01C718 0041C718 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C71C 0041C71C 920C0024 */  lbu         $t4, 0x24($s0)
/* 01C720 0041C720 24060000 */  addiu       $a2, $zero, 0x0
/* 01C724 0041C724 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C728 0041C728 01832821 */  addu        $a1, $t4, $v1
/* 01C72C 0041C72C 00A3082B */  sltu        $at, $a1, $v1
/* 01C730 0041C730 000C77C3 */  sra         $t6, $t4, 31
/* 01C734 0041C734 002E2021 */  addu        $a0, $at, $t6
/* 01C738 0041C738 00822021 */  addu        $a0, $a0, $v0
/* 01C73C 0041C73C 0320F809 */  jalr        $t9
/* 01C740 0041C740 24070008 */   addiu      $a3, $zero, 0x8
/* 01C744 0041C744 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C748 0041C748 920D0025 */  lbu         $t5, 0x25($s0)
/* 01C74C 0041C74C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C750 0041C750 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C754 0041C754 01A32821 */  addu        $a1, $t5, $v1
/* 01C758 0041C758 00A3082B */  sltu        $at, $a1, $v1
/* 01C75C 0041C75C 000DC7C3 */  sra         $t8, $t5, 31
/* 01C760 0041C760 00382021 */  addu        $a0, $at, $t8
/* 01C764 0041C764 00822021 */  addu        $a0, $a0, $v0
/* 01C768 0041C768 0320F809 */  jalr        $t9
/* 01C76C 0041C76C 24070008 */   addiu      $a3, $zero, 0x8
/* 01C770 0041C770 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C774 0041C774 92080026 */  lbu         $t0, 0x26($s0)
/* 01C778 0041C778 24060000 */  addiu       $a2, $zero, 0x0
/* 01C77C 0041C77C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C780 0041C780 01032821 */  addu        $a1, $t0, $v1
/* 01C784 0041C784 00A3082B */  sltu        $at, $a1, $v1
/* 01C788 0041C788 000857C3 */  sra         $t2, $t0, 31
/* 01C78C 0041C78C 002A2021 */  addu        $a0, $at, $t2
/* 01C790 0041C790 00822021 */  addu        $a0, $a0, $v0
/* 01C794 0041C794 0320F809 */  jalr        $t9
/* 01C798 0041C798 24070008 */   addiu      $a3, $zero, 0x8
/* 01C79C 0041C79C 92090027 */  lbu         $t1, 0x27($s0)
/* 01C7A0 0041C7A0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C7A4 0041C7A4 24040000 */  addiu       $a0, $zero, 0x0
/* 01C7A8 0041C7A8 01237821 */  addu        $t7, $t1, $v1
/* 01C7AC 0041C7AC 01E3082B */  sltu        $at, $t7, $v1
/* 01C7B0 0041C7B0 000967C3 */  sra         $t4, $t1, 31
/* 01C7B4 0041C7B4 002C7021 */  addu        $t6, $at, $t4
/* 01C7B8 0041C7B8 01C27021 */  addu        $t6, $t6, $v0
/* 01C7BC 0041C7BC AE2E0020 */  sw          $t6, 0x20($s1)
/* 01C7C0 0041C7C0 AE2F0024 */  sw          $t7, 0x24($s1)
/* 01C7C4 0041C7C4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C7C8 0041C7C8 92050018 */  lbu         $a1, 0x18($s0)
/* 01C7CC 0041C7CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01C7D0 0041C7D0 0320F809 */  jalr        $t9
/* 01C7D4 0041C7D4 24070008 */   addiu      $a3, $zero, 0x8
/* 01C7D8 0041C7D8 92190019 */  lbu         $t9, 0x19($s0)
/* 01C7DC 0041C7DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C7E0 0041C7E0 24060000 */  addiu       $a2, $zero, 0x0
/* 01C7E4 0041C7E4 001947C3 */  sra         $t0, $t9, 31
/* 01C7E8 0041C7E8 03232821 */  addu        $a1, $t9, $v1
/* 01C7EC 0041C7EC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C7F0 0041C7F0 00A3082B */  sltu        $at, $a1, $v1
/* 01C7F4 0041C7F4 00282021 */  addu        $a0, $at, $t0
/* 01C7F8 0041C7F8 00822021 */  addu        $a0, $a0, $v0
/* 01C7FC 0041C7FC 0320F809 */  jalr        $t9
/* 01C800 0041C800 24070008 */   addiu      $a3, $zero, 0x8
/* 01C804 0041C804 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C808 0041C808 920A001A */  lbu         $t2, 0x1A($s0)
/* 01C80C 0041C80C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C810 0041C810 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C814 0041C814 01432821 */  addu        $a1, $t2, $v1
/* 01C818 0041C818 00A3082B */  sltu        $at, $a1, $v1
/* 01C81C 0041C81C 000A67C3 */  sra         $t4, $t2, 31
/* 01C820 0041C820 002C2021 */  addu        $a0, $at, $t4
/* 01C824 0041C824 00822021 */  addu        $a0, $a0, $v0
/* 01C828 0041C828 0320F809 */  jalr        $t9
/* 01C82C 0041C82C 24070008 */   addiu      $a3, $zero, 0x8
/* 01C830 0041C830 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C834 0041C834 920B001B */  lbu         $t3, 0x1B($s0)
/* 01C838 0041C838 24060000 */  addiu       $a2, $zero, 0x0
/* 01C83C 0041C83C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C840 0041C840 01632821 */  addu        $a1, $t3, $v1
/* 01C844 0041C844 00A3082B */  sltu        $at, $a1, $v1
/* 01C848 0041C848 000B77C3 */  sra         $t6, $t3, 31
/* 01C84C 0041C84C 002E2021 */  addu        $a0, $at, $t6
/* 01C850 0041C850 00822021 */  addu        $a0, $a0, $v0
/* 01C854 0041C854 0320F809 */  jalr        $t9
/* 01C858 0041C858 24070008 */   addiu      $a3, $zero, 0x8
/* 01C85C 0041C85C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C860 0041C860 9218001C */  lbu         $t8, 0x1C($s0)
/* 01C864 0041C864 24060000 */  addiu       $a2, $zero, 0x0
/* 01C868 0041C868 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C86C 0041C86C 03032821 */  addu        $a1, $t8, $v1
/* 01C870 0041C870 00A3082B */  sltu        $at, $a1, $v1
/* 01C874 0041C874 001847C3 */  sra         $t0, $t8, 31
/* 01C878 0041C878 00282021 */  addu        $a0, $at, $t0
/* 01C87C 0041C87C 00822021 */  addu        $a0, $a0, $v0
/* 01C880 0041C880 0320F809 */  jalr        $t9
/* 01C884 0041C884 24070008 */   addiu      $a3, $zero, 0x8
/* 01C888 0041C888 9219001D */  lbu         $t9, 0x1D($s0)
/* 01C88C 0041C88C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C890 0041C890 24060000 */  addiu       $a2, $zero, 0x0
/* 01C894 0041C894 001957C3 */  sra         $t2, $t9, 31
/* 01C898 0041C898 03232821 */  addu        $a1, $t9, $v1
/* 01C89C 0041C89C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C8A0 0041C8A0 00A3082B */  sltu        $at, $a1, $v1
/* 01C8A4 0041C8A4 002A2021 */  addu        $a0, $at, $t2
/* 01C8A8 0041C8A8 00822021 */  addu        $a0, $a0, $v0
/* 01C8AC 0041C8AC 0320F809 */  jalr        $t9
/* 01C8B0 0041C8B0 24070008 */   addiu      $a3, $zero, 0x8
/* 01C8B4 0041C8B4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C8B8 0041C8B8 920C001E */  lbu         $t4, 0x1E($s0)
/* 01C8BC 0041C8BC 24060000 */  addiu       $a2, $zero, 0x0
/* 01C8C0 0041C8C0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C8C4 0041C8C4 01832821 */  addu        $a1, $t4, $v1
/* 01C8C8 0041C8C8 00A3082B */  sltu        $at, $a1, $v1
/* 01C8CC 0041C8CC 000C77C3 */  sra         $t6, $t4, 31
/* 01C8D0 0041C8D0 002E2021 */  addu        $a0, $at, $t6
/* 01C8D4 0041C8D4 00822021 */  addu        $a0, $a0, $v0
/* 01C8D8 0041C8D8 0320F809 */  jalr        $t9
/* 01C8DC 0041C8DC 24070008 */   addiu      $a3, $zero, 0x8
/* 01C8E0 0041C8E0 920D001F */  lbu         $t5, 0x1F($s0)
/* 01C8E4 0041C8E4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C8E8 0041C8E8 24040000 */  addiu       $a0, $zero, 0x0
/* 01C8EC 0041C8EC 01A34821 */  addu        $t1, $t5, $v1
/* 01C8F0 0041C8F0 0123082B */  sltu        $at, $t1, $v1
/* 01C8F4 0041C8F4 000DC7C3 */  sra         $t8, $t5, 31
/* 01C8F8 0041C8F8 00384021 */  addu        $t0, $at, $t8
/* 01C8FC 0041C8FC 01024021 */  addu        $t0, $t0, $v0
/* 01C900 0041C900 AE280018 */  sw          $t0, 0x18($s1)
/* 01C904 0041C904 AE29001C */  sw          $t1, 0x1C($s1)
/* 01C908 0041C908 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C90C 0041C90C 92050010 */  lbu         $a1, 0x10($s0)
/* 01C910 0041C910 24060000 */  addiu       $a2, $zero, 0x0
/* 01C914 0041C914 0320F809 */  jalr        $t9
/* 01C918 0041C918 24070008 */   addiu      $a3, $zero, 0x8
/* 01C91C 0041C91C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C920 0041C920 920B0011 */  lbu         $t3, 0x11($s0)
/* 01C924 0041C924 24060000 */  addiu       $a2, $zero, 0x0
/* 01C928 0041C928 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C92C 0041C92C 01632821 */  addu        $a1, $t3, $v1
/* 01C930 0041C930 00A3082B */  sltu        $at, $a1, $v1
/* 01C934 0041C934 000B67C3 */  sra         $t4, $t3, 31
/* 01C938 0041C938 002C2021 */  addu        $a0, $at, $t4
/* 01C93C 0041C93C 00822021 */  addu        $a0, $a0, $v0
/* 01C940 0041C940 0320F809 */  jalr        $t9
/* 01C944 0041C944 24070008 */   addiu      $a3, $zero, 0x8
/* 01C948 0041C948 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C94C 0041C94C 920E0012 */  lbu         $t6, 0x12($s0)
/* 01C950 0041C950 24060000 */  addiu       $a2, $zero, 0x0
/* 01C954 0041C954 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C958 0041C958 01C32821 */  addu        $a1, $t6, $v1
/* 01C95C 0041C95C 00A3082B */  sltu        $at, $a1, $v1
/* 01C960 0041C960 000EC7C3 */  sra         $t8, $t6, 31
/* 01C964 0041C964 00382021 */  addu        $a0, $at, $t8
/* 01C968 0041C968 00822021 */  addu        $a0, $a0, $v0
/* 01C96C 0041C96C 0320F809 */  jalr        $t9
/* 01C970 0041C970 24070008 */   addiu      $a3, $zero, 0x8
/* 01C974 0041C974 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C978 0041C978 920F0013 */  lbu         $t7, 0x13($s0)
/* 01C97C 0041C97C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C980 0041C980 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C984 0041C984 01E32821 */  addu        $a1, $t7, $v1
/* 01C988 0041C988 00A3082B */  sltu        $at, $a1, $v1
/* 01C98C 0041C98C 000F47C3 */  sra         $t0, $t7, 31
/* 01C990 0041C990 00282021 */  addu        $a0, $at, $t0
/* 01C994 0041C994 00822021 */  addu        $a0, $a0, $v0
/* 01C998 0041C998 0320F809 */  jalr        $t9
/* 01C99C 0041C99C 24070008 */   addiu      $a3, $zero, 0x8
/* 01C9A0 0041C9A0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C9A4 0041C9A4 920A0014 */  lbu         $t2, 0x14($s0)
/* 01C9A8 0041C9A8 24060000 */  addiu       $a2, $zero, 0x0
/* 01C9AC 0041C9AC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C9B0 0041C9B0 01432821 */  addu        $a1, $t2, $v1
/* 01C9B4 0041C9B4 00A3082B */  sltu        $at, $a1, $v1
/* 01C9B8 0041C9B8 000A67C3 */  sra         $t4, $t2, 31
/* 01C9BC 0041C9BC 002C2021 */  addu        $a0, $at, $t4
/* 01C9C0 0041C9C0 00822021 */  addu        $a0, $a0, $v0
/* 01C9C4 0041C9C4 0320F809 */  jalr        $t9
/* 01C9C8 0041C9C8 24070008 */   addiu      $a3, $zero, 0x8
/* 01C9CC 0041C9CC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C9D0 0041C9D0 920B0015 */  lbu         $t3, 0x15($s0)
/* 01C9D4 0041C9D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01C9D8 0041C9D8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C9DC 0041C9DC 01632821 */  addu        $a1, $t3, $v1
/* 01C9E0 0041C9E0 00A3082B */  sltu        $at, $a1, $v1
/* 01C9E4 0041C9E4 000B77C3 */  sra         $t6, $t3, 31
/* 01C9E8 0041C9E8 002E2021 */  addu        $a0, $at, $t6
/* 01C9EC 0041C9EC 00822021 */  addu        $a0, $a0, $v0
/* 01C9F0 0041C9F0 0320F809 */  jalr        $t9
/* 01C9F4 0041C9F4 24070008 */   addiu      $a3, $zero, 0x8
/* 01C9F8 0041C9F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C9FC 0041C9FC 92180016 */  lbu         $t8, 0x16($s0)
/* 01CA00 0041CA00 24060000 */  addiu       $a2, $zero, 0x0
/* 01CA04 0041CA04 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CA08 0041CA08 03032821 */  addu        $a1, $t8, $v1
/* 01CA0C 0041CA0C 00A3082B */  sltu        $at, $a1, $v1
/* 01CA10 0041CA10 001847C3 */  sra         $t0, $t8, 31
/* 01CA14 0041CA14 00282021 */  addu        $a0, $at, $t0
/* 01CA18 0041CA18 00822021 */  addu        $a0, $a0, $v0
/* 01CA1C 0041CA1C 0320F809 */  jalr        $t9
/* 01CA20 0041CA20 24070008 */   addiu      $a3, $zero, 0x8
/* 01CA24 0041CA24 92190017 */  lbu         $t9, 0x17($s0)
/* 01CA28 0041CA28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CA2C 0041CA2C 24040000 */  addiu       $a0, $zero, 0x0
/* 01CA30 0041CA30 03236821 */  addu        $t5, $t9, $v1
/* 01CA34 0041CA34 01A3082B */  sltu        $at, $t5, $v1
/* 01CA38 0041CA38 001957C3 */  sra         $t2, $t9, 31
/* 01CA3C 0041CA3C 002A6021 */  addu        $t4, $at, $t2
/* 01CA40 0041CA40 01826021 */  addu        $t4, $t4, $v0
/* 01CA44 0041CA44 AE2C0010 */  sw          $t4, 0x10($s1)
/* 01CA48 0041CA48 AE2D0014 */  sw          $t5, 0x14($s1)
/* 01CA4C 0041CA4C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CA50 0041CA50 92050008 */  lbu         $a1, 0x8($s0)
/* 01CA54 0041CA54 24060000 */  addiu       $a2, $zero, 0x0
/* 01CA58 0041CA58 0320F809 */  jalr        $t9
/* 01CA5C 0041CA5C 24070008 */   addiu      $a3, $zero, 0x8
/* 01CA60 0041CA60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CA64 0041CA64 920F0009 */  lbu         $t7, 0x9($s0)
/* 01CA68 0041CA68 24060000 */  addiu       $a2, $zero, 0x0
/* 01CA6C 0041CA6C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CA70 0041CA70 01E32821 */  addu        $a1, $t7, $v1
/* 01CA74 0041CA74 00A3082B */  sltu        $at, $a1, $v1
/* 01CA78 0041CA78 000FC7C3 */  sra         $t8, $t7, 31
/* 01CA7C 0041CA7C 00382021 */  addu        $a0, $at, $t8
/* 01CA80 0041CA80 00822021 */  addu        $a0, $a0, $v0
/* 01CA84 0041CA84 0320F809 */  jalr        $t9
/* 01CA88 0041CA88 24070008 */   addiu      $a3, $zero, 0x8
/* 01CA8C 0041CA8C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CA90 0041CA90 9208000A */  lbu         $t0, 0xA($s0)
/* 01CA94 0041CA94 24060000 */  addiu       $a2, $zero, 0x0
/* 01CA98 0041CA98 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CA9C 0041CA9C 01032821 */  addu        $a1, $t0, $v1
/* 01CAA0 0041CAA0 00A3082B */  sltu        $at, $a1, $v1
/* 01CAA4 0041CAA4 000857C3 */  sra         $t2, $t0, 31
/* 01CAA8 0041CAA8 002A2021 */  addu        $a0, $at, $t2
/* 01CAAC 0041CAAC 00822021 */  addu        $a0, $a0, $v0
/* 01CAB0 0041CAB0 0320F809 */  jalr        $t9
/* 01CAB4 0041CAB4 24070008 */   addiu      $a3, $zero, 0x8
/* 01CAB8 0041CAB8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CABC 0041CABC 9209000B */  lbu         $t1, 0xB($s0)
/* 01CAC0 0041CAC0 24060000 */  addiu       $a2, $zero, 0x0
/* 01CAC4 0041CAC4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CAC8 0041CAC8 01232821 */  addu        $a1, $t1, $v1
/* 01CACC 0041CACC 00A3082B */  sltu        $at, $a1, $v1
/* 01CAD0 0041CAD0 000967C3 */  sra         $t4, $t1, 31
/* 01CAD4 0041CAD4 002C2021 */  addu        $a0, $at, $t4
/* 01CAD8 0041CAD8 00822021 */  addu        $a0, $a0, $v0
/* 01CADC 0041CADC 0320F809 */  jalr        $t9
/* 01CAE0 0041CAE0 24070008 */   addiu      $a3, $zero, 0x8
/* 01CAE4 0041CAE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CAE8 0041CAE8 920E000C */  lbu         $t6, 0xC($s0)
/* 01CAEC 0041CAEC 24060000 */  addiu       $a2, $zero, 0x0
/* 01CAF0 0041CAF0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CAF4 0041CAF4 01C32821 */  addu        $a1, $t6, $v1
/* 01CAF8 0041CAF8 00A3082B */  sltu        $at, $a1, $v1
/* 01CAFC 0041CAFC 000EC7C3 */  sra         $t8, $t6, 31
/* 01CB00 0041CB00 00382021 */  addu        $a0, $at, $t8
/* 01CB04 0041CB04 00822021 */  addu        $a0, $a0, $v0
/* 01CB08 0041CB08 0320F809 */  jalr        $t9
/* 01CB0C 0041CB0C 24070008 */   addiu      $a3, $zero, 0x8
/* 01CB10 0041CB10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CB14 0041CB14 920F000D */  lbu         $t7, 0xD($s0)
/* 01CB18 0041CB18 24060000 */  addiu       $a2, $zero, 0x0
/* 01CB1C 0041CB1C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CB20 0041CB20 01E32821 */  addu        $a1, $t7, $v1
/* 01CB24 0041CB24 00A3082B */  sltu        $at, $a1, $v1
/* 01CB28 0041CB28 000F47C3 */  sra         $t0, $t7, 31
/* 01CB2C 0041CB2C 00282021 */  addu        $a0, $at, $t0
/* 01CB30 0041CB30 00822021 */  addu        $a0, $a0, $v0
/* 01CB34 0041CB34 0320F809 */  jalr        $t9
/* 01CB38 0041CB38 24070008 */   addiu      $a3, $zero, 0x8
/* 01CB3C 0041CB3C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CB40 0041CB40 920A000E */  lbu         $t2, 0xE($s0)
/* 01CB44 0041CB44 24060000 */  addiu       $a2, $zero, 0x0
/* 01CB48 0041CB48 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CB4C 0041CB4C 01432821 */  addu        $a1, $t2, $v1
/* 01CB50 0041CB50 00A3082B */  sltu        $at, $a1, $v1
/* 01CB54 0041CB54 000A67C3 */  sra         $t4, $t2, 31
/* 01CB58 0041CB58 002C2021 */  addu        $a0, $at, $t4
/* 01CB5C 0041CB5C 00822021 */  addu        $a0, $a0, $v0
/* 01CB60 0041CB60 0320F809 */  jalr        $t9
/* 01CB64 0041CB64 24070008 */   addiu      $a3, $zero, 0x8
/* 01CB68 0041CB68 920B000F */  lbu         $t3, 0xF($s0)
/* 01CB6C 0041CB6C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CB70 0041CB70 0251382B */  sltu        $a3, $s2, $s1
/* 01CB74 0041CB74 0163C821 */  addu        $t9, $t3, $v1
/* 01CB78 0041CB78 0323082B */  sltu        $at, $t9, $v1
/* 01CB7C 0041CB7C 000B77C3 */  sra         $t6, $t3, 31
/* 01CB80 0041CB80 002EC021 */  addu        $t8, $at, $t6
/* 01CB84 0041CB84 0302C021 */  addu        $t8, $t8, $v0
/* 01CB88 0041CB88 AE380008 */  sw          $t8, 0x8($s1)
/* 01CB8C 0041CB8C AE39000C */  sw          $t9, 0xC($s1)
/* 01CB90 0041CB90 92080004 */  lbu         $t0, 0x4($s0)
/* 01CB94 0041CB94 920A0005 */  lbu         $t2, 0x5($s0)
/* 01CB98 0041CB98 920B0006 */  lbu         $t3, 0x6($s0)
/* 01CB9C 0041CB9C 00084A00 */  sll         $t1, $t0, 8
/* 01CBA0 0041CBA0 012A6021 */  addu        $t4, $t1, $t2
/* 01CBA4 0041CBA4 92180007 */  lbu         $t8, 0x7($s0)
/* 01CBA8 0041CBA8 000C6A00 */  sll         $t5, $t4, 8
/* 01CBAC 0041CBAC 01AB7021 */  addu        $t6, $t5, $t3
/* 01CBB0 0041CBB0 000E7A00 */  sll         $t7, $t6, 8
/* 01CBB4 0041CBB4 030FC821 */  addu        $t9, $t8, $t7
/* 01CBB8 0041CBB8 AE390004 */  sw          $t9, 0x4($s1)
/* 01CBBC 0041CBBC 92080000 */  lbu         $t0, 0x0($s0)
/* 01CBC0 0041CBC0 920A0001 */  lbu         $t2, 0x1($s0)
/* 01CBC4 0041CBC4 920B0002 */  lbu         $t3, 0x2($s0)
/* 01CBC8 0041CBC8 00084A00 */  sll         $t1, $t0, 8
/* 01CBCC 0041CBCC 012A6021 */  addu        $t4, $t1, $t2
/* 01CBD0 0041CBD0 920F0003 */  lbu         $t7, 0x3($s0)
/* 01CBD4 0041CBD4 000C6A00 */  sll         $t5, $t4, 8
/* 01CBD8 0041CBD8 01AB7021 */  addu        $t6, $t5, $t3
/* 01CBDC 0041CBDC 000EC200 */  sll         $t8, $t6, 8
/* 01CBE0 0041CBE0 01F8C821 */  addu        $t9, $t7, $t8
/* 01CBE4 0041CBE4 2631FFC0 */  addiu       $s1, $s1, -0x40
/* 01CBE8 0041CBE8 14E0FDEB */  bnez        $a3, .L0041C398
/* 01CBEC 0041CBEC AE390040 */   sw         $t9, 0x40($s1)
.L0041CBF0:
/* 01CBF0 0041CBF0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01CBF4 0041CBF4 8FB00014 */  lw          $s0, 0x14($sp)
/* 01CBF8 0041CBF8 8FB10018 */  lw          $s1, 0x18($sp)
/* 01CBFC 0041CBFC 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01CC00 0041CC00 03E00008 */  jr          $ra
/* 01CC04 0041CC04 27BD0028 */   addiu      $sp, $sp, 0x28
