glabel obj_dynsym_hash_value # 417
# _gp_disp: 0xFBF3454
.set noreorder; .cpload $t9; # .set reorder
/* 02A8F8 0042A8F8 8F9983F4 */  lw          $t9, %call16(obj_msym_exists)($gp)
/* 02A8FC 0042A8FC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A900 0042A900 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A904 0042A904 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A908 0042A908 AFA50024 */  sw          $a1, 0x24($sp)
/* 02A90C 0042A90C 0320F809 */  jalr        $t9
/* 02A910 0042A910 AFA40020 */   sw         $a0, 0x20($sp)
/* 02A914 0042A914 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A918 0042A918 8FA40020 */  lw          $a0, 0x20($sp)
/* 02A91C 0042A91C 10400009 */  beqz        $v0, .L0042A944
/* 02A920 0042A920 8FA50024 */   lw         $a1, 0x24($sp)
/* 02A924 0042A924 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02A928 0042A928 000578C0 */  sll         $t7, $a1, 3
/* 02A92C 0042A92C 01CFC021 */  addu        $t8, $t6, $t7
/* 02A930 0042A930 8F030000 */  lw          $v1, 0x0($t8)
/* 02A934 0042A934 10600003 */  beqz        $v1, .L0042A944
/* 02A938 0042A938 00000000 */   nop
/* 02A93C 0042A93C 10000005 */  b           .L0042A954
/* 02A940 0042A940 00601025 */   move       $v0, $v1
.L0042A944:
/* 02A944 0042A944 8F998294 */  lw          $t9, %call16(get_dynsym_hash_value)($gp)
/* 02A948 0042A948 0320F809 */  jalr        $t9
/* 02A94C 0042A94C 00000000 */   nop
/* 02A950 0042A950 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042A954:
/* 02A954 0042A954 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A958 0042A958 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A95C 0042A95C 03E00008 */  jr          $ra
/* 02A960 0042A960 00000000 */   nop
