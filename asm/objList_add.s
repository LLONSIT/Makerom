glabel objList_add # 548
# _gp_disp: 0xFBEE700
.set noreorder; .cpload $t9; # .set reorder
/* 02F64C 0042F64C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02F650 0042F650 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 02F654 0042F654 AFA60028 */  sw          $a2, 0x28($sp)
/* 02F658 0042F658 00803025 */  move        $a2, $a0
/* 02F65C 0042F65C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F660 0042F660 AFA40020 */  sw          $a0, 0x20($sp)
/* 02F664 0042F664 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F668 0042F668 AFA50024 */  sw          $a1, 0x24($sp)
/* 02F66C 0042F66C AFA7002C */  sw          $a3, 0x2C($sp)
/* 02F670 0042F670 AFA60020 */  sw          $a2, 0x20($sp)
/* 02F674 0042F674 0320F809 */  jalr        $t9
/* 02F678 0042F678 2404000C */   addiu      $a0, $zero, 0xC
/* 02F67C 0042F67C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F680 0042F680 8FA60020 */  lw          $a2, 0x20($sp)
/* 02F684 0042F684 14400003 */  bnez        $v0, .L0042F694
/* 02F688 0042F688 00402025 */   move       $a0, $v0
/* 02F68C 0042F68C 1000001F */  b           .L0042F70C
/* 02F690 0042F690 00001025 */   move       $v0, $zero
.L0042F694:
/* 02F694 0042F694 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02F698 0042F698 AC4E0000 */  sw          $t6, 0x0($v0)
/* 02F69C 0042F69C 8FAF002C */  lw          $t7, 0x2C($sp)
/* 02F6A0 0042F6A0 51E00005 */  beql        $t7, $zero, .L0042F6B8
/* 02F6A4 0042F6A4 8CD80000 */   lw         $t8, 0x0($a2)
/* 02F6A8 0042F6A8 8CC30000 */  lw          $v1, 0x0($a2)
/* 02F6AC 0042F6AC 5460000F */  bnel        $v1, $zero, .L0042F6EC
/* 02F6B0 0042F6B0 8C690008 */   lw         $t1, 0x8($v1)
/* 02F6B4 0042F6B4 8CD80000 */  lw          $t8, 0x0($a2)
.L0042F6B8:
/* 02F6B8 0042F6B8 AC580004 */  sw          $t8, 0x4($v0)
/* 02F6BC 0042F6BC 8CC30000 */  lw          $v1, 0x0($a2)
/* 02F6C0 0042F6C0 54600004 */  bnel        $v1, $zero, .L0042F6D4
/* 02F6C4 0042F6C4 8C790008 */   lw         $t9, 0x8($v1)
/* 02F6C8 0042F6C8 10000005 */  b           .L0042F6E0
/* 02F6CC 0042F6CC AC420008 */   sw         $v0, 0x8($v0)
/* 02F6D0 0042F6D0 8C790008 */  lw          $t9, 0x8($v1)
.L0042F6D4:
/* 02F6D4 0042F6D4 AC590008 */  sw          $t9, 0x8($v0)
/* 02F6D8 0042F6D8 8CC80000 */  lw          $t0, 0x0($a2)
/* 02F6DC 0042F6DC AD020008 */  sw          $v0, 0x8($t0)
.L0042F6E0:
/* 02F6E0 0042F6E0 10000009 */  b           .L0042F708
/* 02F6E4 0042F6E4 ACC20000 */   sw         $v0, 0x0($a2)
/* 02F6E8 0042F6E8 8C690008 */  lw          $t1, 0x8($v1)
.L0042F6EC:
/* 02F6EC 0042F6EC AD220004 */  sw          $v0, 0x4($t1)
/* 02F6F0 0042F6F0 8CCA0000 */  lw          $t2, 0x0($a2)
/* 02F6F4 0042F6F4 8D4B0008 */  lw          $t3, 0x8($t2)
/* 02F6F8 0042F6F8 AC4B0008 */  sw          $t3, 0x8($v0)
/* 02F6FC 0042F6FC 8CCC0000 */  lw          $t4, 0x0($a2)
/* 02F700 0042F700 AD820008 */  sw          $v0, 0x8($t4)
/* 02F704 0042F704 AC400004 */  sw          $zero, 0x4($v0)
.L0042F708:
/* 02F708 0042F708 00801025 */  move        $v0, $a0
.L0042F70C:
/* 02F70C 0042F70C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F710 0042F710 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02F714 0042F714 03E00008 */  jr          $ra
/* 02F718 0042F718 00000000 */   nop
