glabel st_auxrndxadd # 715
# _gp_disp: 0xFBDF830
.set noreorder; .cpload $t9; # .set reorder
/* 03E51C 0043E51C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03E520 0043E520 97AF002C */  lhu         $t7, 0x2C($sp)
/* 03E524 0043E524 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03E528 0043E528 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03E52C 0043E52C 35F8FFF0 */  ori         $t8, $t7, 0xFFF0
/* 03E530 0043E530 A7B8002C */  sh          $t8, 0x2C($sp)
/* 03E534 0043E534 8FA8002C */  lw          $t0, 0x2C($sp)
/* 03E538 0043E538 00A1C824 */  and         $t9, $a1, $at
/* 03E53C 0043E53C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E540 0043E540 03284826 */  xor         $t1, $t9, $t0
/* 03E544 0043E544 00095300 */  sll         $t2, $t1, 12
/* 03E548 0043E548 000A5B02 */  srl         $t3, $t2, 12
/* 03E54C 0043E54C 01686026 */  xor         $t4, $t3, $t0
/* 03E550 0043E550 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03E554 0043E554 AFA40030 */  sw          $a0, 0x30($sp)
/* 03E558 0043E558 AFAC002C */  sw          $t4, 0x2C($sp)
/* 03E55C 0043E55C 27AD002C */  addiu       $t5, $sp, 0x2C
/* 03E560 0043E560 8DA40000 */  lw          $a0, 0x0($t5)
/* 03E564 0043E564 8F9985E4 */  lw          $t9, %call16(st_auxadd)($gp)
/* 03E568 0043E568 27A20028 */  addiu       $v0, $sp, 0x28
/* 03E56C 0043E56C AC440000 */  sw          $a0, 0x0($v0)
/* 03E570 0043E570 0320F809 */  jalr        $t9
/* 03E574 0043E574 AFA40000 */   sw         $a0, 0x0($sp)
/* 03E578 0043E578 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E57C 0043E57C AFA20024 */  sw          $v0, 0x24($sp)
/* 03E580 0043E580 8FA40030 */  lw          $a0, 0x30($sp)
/* 03E584 0043E584 8F998644 */  lw          $t9, %call16(st_auxisymadd)($gp)
/* 03E588 0043E588 0320F809 */  jalr        $t9
/* 03E58C 0043E58C 00000000 */   nop
/* 03E590 0043E590 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03E594 0043E594 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E598 0043E598 8FA20024 */  lw          $v0, 0x24($sp)
/* 03E59C 0043E59C 03E00008 */  jr          $ra
/* 03E5A0 0043E5A0 27BD0030 */   addiu      $sp, $sp, 0x30
