glabel obj_name_not_match # 443
# _gp_disp: 0xFBF2FA0
.set noreorder; .cpload $t9; # .set reorder
/* 02ADAC 0042ADAC 8F998414 */  lw          $t9, %call16(obj_liblist_name)($gp)
/* 02ADB0 0042ADB0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02ADB4 0042ADB4 AFA40020 */  sw          $a0, 0x20($sp)
/* 02ADB8 0042ADB8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02ADBC 0042ADBC 00A02025 */  move        $a0, $a1
/* 02ADC0 0042ADC0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02ADC4 0042ADC4 0320F809 */  jalr        $t9
/* 02ADC8 0042ADC8 00C02825 */   move       $a1, $a2
/* 02ADCC 0042ADCC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02ADD0 0042ADD0 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02ADD4 0042ADD4 00402025 */  move        $a0, $v0
/* 02ADD8 0042ADD8 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 02ADDC 0042ADDC 8DC500F0 */  lw          $a1, 0xF0($t6)
/* 02ADE0 0042ADE0 0320F809 */  jalr        $t9
/* 02ADE4 0042ADE4 00000000 */   nop
/* 02ADE8 0042ADE8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02ADEC 0042ADEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02ADF0 0042ADF0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02ADF4 0042ADF4 03E00008 */  jr          $ra
/* 02ADF8 0042ADF8 00000000 */   nop
