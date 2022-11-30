glabel __sgi_mld_st_commonbegin # 686
# _gp_disp: 0xFBE18B0
.set noreorder; .cpload $t9; # .set reorder
/* 03C49C 0043C49C 8F99863C */  lw          $t9, %call16(st_filebegin)($gp)
/* 03C4A0 0043C4A0 8F818704 */  lw          $at, %got(__sgi_common_dummy_file)($gp)
/* 03C4A4 0043C4A4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03C4A8 0043C4A8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03C4AC 0043C4AC 240E0001 */  addiu       $t6, $zero, 0x1
/* 03C4B0 0043C4B0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03C4B4 0043C4B4 0320F809 */  jalr        $t9
/* 03C4B8 0043C4B8 AC2E0000 */   sw         $t6, 0x0($at)
/* 03C4BC 0043C4BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03C4C0 0043C4C0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03C4C4 0043C4C4 8F818704 */  lw          $at, %got(__sgi_common_dummy_file)($gp)
/* 03C4C8 0043C4C8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03C4CC 0043C4CC 03E00008 */  jr          $ra
/* 03C4D0 0043C4D0 AC200000 */   sw         $zero, 0x0($at)
