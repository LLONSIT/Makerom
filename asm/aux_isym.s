glabel aux_isym # 627
# _gp_disp: 0xFBE52F8
.set noreorder; .cpload $t9; # .set reorder
/* 038A54 00438A54 8F9984F0 */  lw          $t9, %call16(type_to_file)($gp)
/* 038A58 00438A58 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 038A5C 00438A5C AFBF001C */  sw          $ra, 0x1C($sp)
/* 038A60 00438A60 AFBC0018 */  sw          $gp, 0x18($sp)
/* 038A64 00438A64 AFA5002C */  sw          $a1, 0x2C($sp)
/* 038A68 00438A68 0320F809 */  jalr        $t9
/* 038A6C 00438A6C AFA40028 */   sw         $a0, 0x28($sp)
/* 038A70 00438A70 8FA40028 */  lw          $a0, 0x28($sp)
/* 038A74 00438A74 8FAF002C */  lw          $t7, 0x2C($sp)
/* 038A78 00438A78 3C06000F */  lui         $a2, (0xFFFFF >> 16)
/* 038A7C 00438A7C 8C8800C8 */  lw          $t0, 0xC8($a0)
/* 038A80 00438A80 8C8E00C0 */  lw          $t6, 0xC0($a0)
/* 038A84 00438A84 000FC080 */  sll         $t8, $t7, 2
/* 038A88 00438A88 00084880 */  sll         $t1, $t0, 2
/* 038A8C 00438A8C 00095023 */  negu        $t2, $t1
/* 038A90 00438A90 01D8C821 */  addu        $t9, $t6, $t8
/* 038A94 00438A94 032A5821 */  addu        $t3, $t9, $t2
/* 038A98 00438A98 8D630000 */  lw          $v1, 0x0($t3)
/* 038A9C 00438A9C 34C6FFFF */  ori         $a2, $a2, (0xFFFFF & 0xFFFF)
/* 038AA0 00438AA0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 038AA4 00438AA4 14660003 */  bne         $v1, $a2, .L00438AB4
/* 038AA8 00438AA8 00402825 */   move       $a1, $v0
/* 038AAC 00438AAC 10000009 */  b           .L00438AD4
/* 038AB0 00438AB0 00C01025 */   move       $v0, $a2
.L00438AB4:
/* 038AB4 00438AB4 8F9984F8 */  lw          $t9, %call16(file_symbol)($gp)
/* 038AB8 00438AB8 AFA30020 */  sw          $v1, 0x20($sp)
/* 038ABC 00438ABC 0320F809 */  jalr        $t9
/* 038AC0 00438AC0 00000000 */   nop
/* 038AC4 00438AC4 8FA30020 */  lw          $v1, 0x20($sp)
/* 038AC8 00438AC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 038ACC 00438ACC 00621821 */  addu        $v1, $v1, $v0
/* 038AD0 00438AD0 00601025 */  move        $v0, $v1
.L00438AD4:
/* 038AD4 00438AD4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 038AD8 00438AD8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 038ADC 00438ADC 03E00008 */  jr          $ra
/* 038AE0 00438AE0 00000000 */   nop
