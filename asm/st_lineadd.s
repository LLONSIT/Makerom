glabel st_lineadd # 655
# _gp_disp: 0xFBE315C
.set noreorder; .cpload $t9; # .set reorder
/* 03ABF0 0043ABF0 8F8E87C4 */  lw          $t6, %got(st_pchdr)($gp)
/* 03ABF4 0043ABF4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03ABF8 0043ABF8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03ABFC 0043ABFC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03AC00 0043AC00 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03AC04 0043AC04 AFA40020 */  sw          $a0, 0x20($sp)
/* 03AC08 0043AC08 8DCF0004 */  lw          $t7, 0x4($t6)
/* 03AC0C 0043AC0C 15E00006 */  bnez        $t7, .L0043AC28
/* 03AC10 0043AC10 00000000 */   nop
/* 03AC14 0043AC14 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AC18 0043AC18 8F84802C */  lw          $a0, %got(D_10015B60)($gp)
/* 03AC1C 0043AC1C 0320F809 */  jalr        $t9
/* 03AC20 0043AC20 24845B60 */   addiu      $a0, $a0, %lo(D_10015B60)
/* 03AC24 0043AC24 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043AC28:
/* 03AC28 0043AC28 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AC2C 0043AC2C 8C630000 */  lw          $v1, 0x0($v1)
/* 03AC30 0043AC30 54600009 */  bnel        $v1, $zero, .L0043AC58
/* 03AC34 0043AC34 8C78003C */   lw         $t8, 0x3C($v1)
/* 03AC38 0043AC38 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AC3C 0043AC3C 8F84802C */  lw          $a0, %got(D_10015B9C)($gp)
/* 03AC40 0043AC40 0320F809 */  jalr        $t9
/* 03AC44 0043AC44 24845B9C */   addiu      $a0, $a0, %lo(D_10015B9C)
/* 03AC48 0043AC48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03AC4C 0043AC4C 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AC50 0043AC50 8C630000 */  lw          $v1, 0x0($v1)
/* 03AC54 0043AC54 8C78003C */  lw          $t8, 0x3C($v1)
.L0043AC58:
/* 03AC58 0043AC58 33190004 */  andi        $t9, $t8, 0x4
/* 03AC5C 0043AC5C 53200009 */  beql        $t9, $zero, .L0043AC84
/* 03AC60 0043AC60 8C680000 */   lw         $t0, 0x0($v1)
/* 03AC64 0043AC64 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 03AC68 0043AC68 8F84802C */  lw          $a0, %got(D_10015BD0)($gp)
/* 03AC6C 0043AC6C 0320F809 */  jalr        $t9
/* 03AC70 0043AC70 24845BD0 */   addiu      $a0, $a0, %lo(D_10015BD0)
/* 03AC74 0043AC74 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03AC78 0043AC78 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03AC7C 0043AC7C 8C630000 */  lw          $v1, 0x0($v1)
/* 03AC80 0043AC80 8C680000 */  lw          $t0, 0x0($v1)
.L0043AC84:
/* 03AC84 0043AC84 8C690028 */  lw          $t1, 0x28($v1)
/* 03AC88 0043AC88 24650028 */  addiu       $a1, $v1, 0x28
/* 03AC8C 0043AC8C 8D04001C */  lw          $a0, 0x1C($t0)
/* 03AC90 0043AC90 0089082A */  slt         $at, $a0, $t1
/* 03AC94 0043AC94 5420000F */  bnel        $at, $zero, .L0043ACD4
/* 03AC98 0043AC98 8C6D0024 */   lw         $t5, 0x24($v1)
/* 03AC9C 0043AC9C 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 03ACA0 0043ACA0 8C640024 */  lw          $a0, 0x24($v1)
/* 03ACA4 0043ACA4 24060004 */  addiu       $a2, $zero, 0x4
/* 03ACA8 0043ACA8 0320F809 */  jalr        $t9
/* 03ACAC 0043ACAC 24070200 */   addiu      $a3, $zero, 0x200
/* 03ACB0 0043ACB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03ACB4 0043ACB4 8F8A87C8 */  lw          $t2, %got(pcfdcur)($gp)
/* 03ACB8 0043ACB8 8F8387C8 */  lw          $v1, %got(pcfdcur)($gp)
/* 03ACBC 0043ACBC 8D4A0000 */  lw          $t2, 0x0($t2)
/* 03ACC0 0043ACC0 AD420024 */  sw          $v0, 0x24($t2)
/* 03ACC4 0043ACC4 8C630000 */  lw          $v1, 0x0($v1)
/* 03ACC8 0043ACC8 8C6B0000 */  lw          $t3, 0x0($v1)
/* 03ACCC 0043ACCC 8D64001C */  lw          $a0, 0x1C($t3)
/* 03ACD0 0043ACD0 8C6D0024 */  lw          $t5, 0x24($v1)
.L0043ACD4:
/* 03ACD4 0043ACD4 8FAC0020 */  lw          $t4, 0x20($sp)
/* 03ACD8 0043ACD8 8F9887C8 */  lw          $t8, %got(pcfdcur)($gp)
/* 03ACDC 0043ACDC 00047080 */  sll         $t6, $a0, 2
/* 03ACE0 0043ACE0 01AE7821 */  addu        $t7, $t5, $t6
/* 03ACE4 0043ACE4 ADEC0000 */  sw          $t4, 0x0($t7)
/* 03ACE8 0043ACE8 8F180000 */  lw          $t8, 0x0($t8)
/* 03ACEC 0043ACEC 8F050000 */  lw          $a1, 0x0($t8)
/* 03ACF0 0043ACF0 8CA2001C */  lw          $v0, 0x1C($a1)
/* 03ACF4 0043ACF4 24590001 */  addiu       $t9, $v0, 0x1
/* 03ACF8 0043ACF8 ACB9001C */  sw          $t9, 0x1C($a1)
/* 03ACFC 0043ACFC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03AD00 0043AD00 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03AD04 0043AD04 03E00008 */  jr          $ra
/* 03AD08 0043AD08 00000000 */   nop
