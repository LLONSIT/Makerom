glabel file_aux_isym # 628
# _gp_disp: 0xFBE525C
.set noreorder; .cpload $t9; # .set reorder
/* 038AF0 00438AF0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 038AF4 00438AF4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 038AF8 00438AF8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 038AFC 00438AFC 8C9900C8 */  lw          $t9, 0xC8($a0)
/* 038B00 00438B00 8C8E00C0 */  lw          $t6, 0xC0($a0)
/* 038B04 00438B04 00067880 */  sll         $t7, $a2, 2
/* 038B08 00438B08 00194080 */  sll         $t0, $t9, 2
/* 038B0C 00438B0C 00084823 */  negu        $t1, $t0
/* 038B10 00438B10 01CFC021 */  addu        $t8, $t6, $t7
/* 038B14 00438B14 03095021 */  addu        $t2, $t8, $t1
/* 038B18 00438B18 8D430000 */  lw          $v1, 0x0($t2)
/* 038B1C 00438B1C 3C07000F */  lui         $a3, (0xFFFFF >> 16)
/* 038B20 00438B20 34E7FFFF */  ori         $a3, $a3, (0xFFFFF & 0xFFFF)
/* 038B24 00438B24 14670003 */  bne         $v1, $a3, .L00438B34
/* 038B28 00438B28 00000000 */   nop
/* 038B2C 00438B2C 10000009 */  b           .L00438B54
/* 038B30 00438B30 00E01025 */   move       $v0, $a3
.L00438B34:
/* 038B34 00438B34 8F9984F8 */  lw          $t9, %call16(file_symbol)($gp)
/* 038B38 00438B38 AFA30024 */  sw          $v1, 0x24($sp)
/* 038B3C 00438B3C 0320F809 */  jalr        $t9
/* 038B40 00438B40 00000000 */   nop
/* 038B44 00438B44 8FA30024 */  lw          $v1, 0x24($sp)
/* 038B48 00438B48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 038B4C 00438B4C 00621821 */  addu        $v1, $v1, $v0
/* 038B50 00438B50 00601025 */  move        $v0, $v1
.L00438B54:
/* 038B54 00438B54 8FBF001C */  lw          $ra, 0x1C($sp)
/* 038B58 00438B58 27BD0028 */  addiu       $sp, $sp, 0x28
/* 038B5C 00438B5C 03E00008 */  jr          $ra
/* 038B60 00438B60 00000000 */   nop
