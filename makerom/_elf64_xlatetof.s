glabel _elf64_xlatetof # 53
# _gp_disp: 0xFC093F4
.set noreorder; .cpload $t9; # .set reorder
/* 014958 00414958 8F998018 */  lw          $t9, %got(func_00414690)($gp)
/* 01495C 0041495C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014960 00414960 AFBF001C */  sw          $ra, 0x1C($sp)
/* 014964 00414964 27394690 */  addiu       $t9, $t9, %lo(func_00414690)
/* 014968 00414968 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01496C 0041496C 0320F809 */  jalr        $t9
/* 014970 00414970 24070001 */   addiu      $a3, $zero, 0x1
/* 014974 00414974 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014978 00414978 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01497C 0041497C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014980 00414980 03E00008 */  jr          $ra
/* 014984 00414984 00000000 */   nop
