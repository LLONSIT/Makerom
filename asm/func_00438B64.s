glabel func_00438B64 # 629
# _gp_disp: 0xFBE51DC
.set noreorder; .cpload $t9; # .set reorder
/* 038B70 00438B70 8F8E8030 */  lw          $t6, %got(B_1001B6B4)($gp)
/* 038B74 00438B74 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 038B78 00438B78 AFBF001C */  sw          $ra, 0x1C($sp)
/* 038B7C 00438B7C 8DCEB6B4 */  lw          $t6, %lo(B_1001B6B4)($t6)
/* 038B80 00438B80 AFBC0018 */  sw          $gp, 0x18($sp)
/* 038B84 00438B84 AFA40028 */  sw          $a0, 0x28($sp)
/* 038B88 00438B88 AFA60030 */  sw          $a2, 0x30($sp)
/* 038B8C 00438B8C 15C0000B */  bnez        $t6, .L00438BBC
/* 038B90 00438B90 AFA70034 */   sw         $a3, 0x34($sp)
/* 038B94 00438B94 8F998234 */  lw          $t9, %call16(gethostsex)($gp)
/* 038B98 00438B98 8F818030 */  lw          $at, %got(B_1001B6B4)($gp)
/* 038B9C 00438B9C 240F0001 */  addiu       $t7, $zero, 0x1
/* 038BA0 00438BA0 AFA5002C */  sw          $a1, 0x2C($sp)
/* 038BA4 00438BA4 0320F809 */  jalr        $t9
/* 038BA8 00438BA8 AC2FB6B4 */   sw         $t7, %lo(B_1001B6B4)($at)
/* 038BAC 00438BAC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 038BB0 00438BB0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 038BB4 00438BB4 8F818030 */  lw          $at, %got(B_1001B6B0)($gp)
/* 038BB8 00438BB8 AC22B6B0 */  sw          $v0, %lo(B_1001B6B0)($at)
.L00438BBC:
/* 038BBC 00438BBC 27B80030 */  addiu       $t8, $sp, 0x30
/* 038BC0 00438BC0 8F080000 */  lw          $t0, 0x0($t8)
/* 038BC4 00438BC4 27A40024 */  addiu       $a0, $sp, 0x24
/* 038BC8 00438BC8 10A0000C */  beqz        $a1, .L00438BFC
/* 038BCC 00438BCC AC880000 */   sw         $t0, 0x0($a0)
/* 038BD0 00438BD0 8CA90000 */  lw          $t1, 0x0($a1)
/* 038BD4 00438BD4 000957C3 */  sra         $t2, $t1, 31
/* 038BD8 00438BD8 51400009 */  beql        $t2, $zero, .L00438C00
/* 038BDC 00438BDC 8FAB0028 */   lw         $t3, 0x28($sp)
/* 038BE0 00438BE0 8F9984B4 */  lw          $t9, %call16(swap_aux)($gp)
/* 038BE4 00438BE4 8F868030 */  lw          $a2, %got(B_1001B6B0)($gp)
/* 038BE8 00438BE8 8FA50034 */  lw          $a1, 0x34($sp)
/* 038BEC 00438BEC 0320F809 */  jalr        $t9
/* 038BF0 00438BF0 8CC6B6B0 */   lw         $a2, %lo(B_1001B6B0)($a2)
/* 038BF4 00438BF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 038BF8 00438BF8 27A40024 */  addiu       $a0, $sp, 0x24
.L00438BFC:
/* 038BFC 00438BFC 8FAB0028 */  lw          $t3, 0x28($sp)
.L00438C00:
/* 038C00 00438C00 8C8D0000 */  lw          $t5, 0x0($a0)
/* 038C04 00438C04 AD6D0000 */  sw          $t5, 0x0($t3)
/* 038C08 00438C08 8FBF001C */  lw          $ra, 0x1C($sp)
/* 038C0C 00438C0C 8FA20028 */  lw          $v0, 0x28($sp)
/* 038C10 00438C10 27BD0028 */  addiu       $sp, $sp, 0x28
/* 038C14 00438C14 03E00008 */  jr          $ra
/* 038C18 00438C18 00000000 */   nop
