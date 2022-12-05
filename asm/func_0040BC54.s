glabel func_0040BC54 # 14
# _gp_disp: 0xFC120EC
.set noreorder; .cpload $t9; # .set reorder
/* 00BC60 0040BC60 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00BC64 0040BC64 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00BC68 0040BC68 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00BC6C 0040BC6C 8F8E865C */  lw          $t6, %got(debug)($gp)
/* 00BC70 0040BC70 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00BC74 0040BC74 15C00027 */  bnez        $t6, .L0040BD14
/* 00BC78 0040BC78 00000000 */   nop
/* 00BC7C 0040BC7C 8F8F8658 */  lw          $t7, %got(waveList)($gp)
/* 00BC80 0040BC80 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00BC84 0040BC84 11E0000A */  beqz        $t7, .L0040BCB0
/* 00BC88 0040BC88 AFAF0024 */   sw         $t7, 0x24($sp)
.L0040BC8C:
/* 00BC8C 0040BC8C 8F998078 */  lw          $t9, %call16(unlink)($gp)
/* 00BC90 0040BC90 8FA40024 */  lw          $a0, 0x24($sp)
/* 00BC94 0040BC94 0320F809 */  jalr        $t9
/* 00BC98 0040BC98 24840014 */   addiu      $a0, $a0, 0x14
/* 00BC9C 0040BC9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BCA0 0040BCA0 8FB80024 */  lw          $t8, 0x24($sp)
/* 00BCA4 0040BCA4 8F190000 */  lw          $t9, 0x0($t8)
/* 00BCA8 0040BCA8 1720FFF8 */  bnez        $t9, .L0040BC8C
/* 00BCAC 0040BCAC AFB90024 */   sw         $t9, 0x24($sp)
.L0040BCB0:
/* 00BCB0 0040BCB0 8F998078 */  lw          $t9, %call16(unlink)($gp)
/* 00BCB4 0040BCB4 8F84802C */  lw          $a0, %got(B_10016520)($gp)
/* 00BCB8 0040BCB8 0320F809 */  jalr        $t9
/* 00BCBC 0040BCBC 24846520 */   addiu      $a0, $a0, %lo(B_10016520)
/* 00BCC0 0040BCC0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BCC4 0040BCC4 8F998078 */  lw          $t9, %call16(unlink)($gp)
/* 00BCC8 0040BCC8 8F84802C */  lw          $a0, %got(B_10016620)($gp)
/* 00BCCC 0040BCCC 0320F809 */  jalr        $t9
/* 00BCD0 0040BCD0 24846620 */   addiu      $a0, $a0, %lo(B_10016620)
/* 00BCD4 0040BCD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BCD8 0040BCD8 8F998078 */  lw          $t9, %call16(unlink)($gp)
/* 00BCDC 0040BCDC 8F84802C */  lw          $a0, %got(B_10016720)($gp)
/* 00BCE0 0040BCE0 0320F809 */  jalr        $t9
/* 00BCE4 0040BCE4 24846720 */   addiu      $a0, $a0, %lo(B_10016720)
/* 00BCE8 0040BCE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BCEC 0040BCEC 8F998078 */  lw          $t9, %call16(unlink)($gp)
/* 00BCF0 0040BCF0 8F84802C */  lw          $a0, %got(B_10016820)($gp)
/* 00BCF4 0040BCF4 0320F809 */  jalr        $t9
/* 00BCF8 0040BCF8 24846820 */   addiu      $a0, $a0, %lo(B_10016820)
/* 00BCFC 0040BCFC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00BD00 0040BD00 8F998078 */  lw          $t9, %call16(unlink)($gp)
/* 00BD04 0040BD04 8F84802C */  lw          $a0, %got(B_10016920)($gp)
/* 00BD08 0040BD08 0320F809 */  jalr        $t9
/* 00BD0C 0040BD0C 24846920 */   addiu      $a0, $a0, %lo(B_10016920)
/* 00BD10 0040BD10 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040BD14:
/* 00BD14 0040BD14 10000001 */  b           .L0040BD1C
/* 00BD18 0040BD18 00000000 */   nop
.L0040BD1C:
/* 00BD1C 0040BD1C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00BD20 0040BD20 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00BD24 0040BD24 03E00008 */  jr          $ra
/* 00BD28 0040BD28 00000000 */   nop
