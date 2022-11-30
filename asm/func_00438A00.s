glabel func_00438A00 # 626
# _gp_disp: 0xFBE5340
.set noreorder; .cpload $t9; # .set reorder
/* 038A0C 00438A0C 8CAE0008 */  lw          $t6, 0x8($a1)
/* 038A10 00438A10 ACA60028 */  sw          $a2, 0x28($a1)
/* 038A14 00438A14 05C30006 */  bgezl       $t6, .L00438A30
/* 038A18 00438A18 8C8800C8 */   lw         $t0, 0xC8($a0)
/* 038A1C 00438A1C 8F9887CC */  lw          $t8, %got(usertype)($gp)
/* 038A20 00438A20 00067880 */  sll         $t7, $a2, 2
/* 038A24 00438A24 03E00008 */  jr          $ra
/* 038A28 00438A28 01F81021 */   addu       $v0, $t7, $t8
/* 038A2C 00438A2C 8C8800C8 */  lw          $t0, 0xC8($a0)
.L00438A30:
/* 038A30 00438A30 8C9900C0 */  lw          $t9, 0xC0($a0)
/* 038A34 00438A34 00C84823 */  subu        $t1, $a2, $t0
/* 038A38 00438A38 00095080 */  sll         $t2, $t1, 2
/* 038A3C 00438A3C 032A1021 */  addu        $v0, $t9, $t2
/* 038A40 00438A40 03E00008 */  jr          $ra
/* 038A44 00438A44 00000000 */   nop
