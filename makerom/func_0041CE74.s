glabel func_0041CE74 # 105
# _gp_disp: 0xFC00ECC
.set noreorder; .cpload $t9; # .set reorder
/* 01CE80 0041CE80 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01CE84 0041CE84 AFB10018 */  sw          $s1, 0x18($sp)
/* 01CE88 0041CE88 000618C0 */  sll         $v1, $a2, 3
/* 01CE8C 0041CE8C 00838821 */  addu        $s1, $a0, $v1
/* 01CE90 0041CE90 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01CE94 0041CE94 AFB00014 */  sw          $s0, 0x14($sp)
/* 01CE98 0041CE98 0091102B */  sltu        $v0, $a0, $s1
/* 01CE9C 0041CE9C AFBF0024 */  sw          $ra, 0x24($sp)
/* 01CEA0 0041CEA0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01CEA4 0041CEA4 00809025 */  move        $s2, $a0
/* 01CEA8 0041CEA8 00A38021 */  addu        $s0, $a1, $v1
/* 01CEAC 0041CEAC 10400056 */  beqz        $v0, .L0041D008
/* 01CEB0 0041CEB0 2631FFF8 */   addiu      $s1, $s1, -0x8
.L0041CEB4:
/* 01CEB4 0041CEB4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CEB8 0041CEB8 2610FFF8 */  addiu       $s0, $s0, -0x8
/* 01CEBC 0041CEBC 92050000 */  lbu         $a1, 0x0($s0)
/* 01CEC0 0041CEC0 24040000 */  addiu       $a0, $zero, 0x0
/* 01CEC4 0041CEC4 24060000 */  addiu       $a2, $zero, 0x0
/* 01CEC8 0041CEC8 0320F809 */  jalr        $t9
/* 01CECC 0041CECC 24070008 */   addiu      $a3, $zero, 0x8
/* 01CED0 0041CED0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CED4 0041CED4 920F0001 */  lbu         $t7, 0x1($s0)
/* 01CED8 0041CED8 24060000 */  addiu       $a2, $zero, 0x0
/* 01CEDC 0041CEDC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CEE0 0041CEE0 01E32821 */  addu        $a1, $t7, $v1
/* 01CEE4 0041CEE4 00A3082B */  sltu        $at, $a1, $v1
/* 01CEE8 0041CEE8 000FC7C3 */  sra         $t8, $t7, 31
/* 01CEEC 0041CEEC 00382021 */  addu        $a0, $at, $t8
/* 01CEF0 0041CEF0 00822021 */  addu        $a0, $a0, $v0
/* 01CEF4 0041CEF4 0320F809 */  jalr        $t9
/* 01CEF8 0041CEF8 24070008 */   addiu      $a3, $zero, 0x8
/* 01CEFC 0041CEFC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CF00 0041CF00 92080002 */  lbu         $t0, 0x2($s0)
/* 01CF04 0041CF04 24060000 */  addiu       $a2, $zero, 0x0
/* 01CF08 0041CF08 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CF0C 0041CF0C 01032821 */  addu        $a1, $t0, $v1
/* 01CF10 0041CF10 00A3082B */  sltu        $at, $a1, $v1
/* 01CF14 0041CF14 000857C3 */  sra         $t2, $t0, 31
/* 01CF18 0041CF18 002A2021 */  addu        $a0, $at, $t2
/* 01CF1C 0041CF1C 00822021 */  addu        $a0, $a0, $v0
/* 01CF20 0041CF20 0320F809 */  jalr        $t9
/* 01CF24 0041CF24 24070008 */   addiu      $a3, $zero, 0x8
/* 01CF28 0041CF28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CF2C 0041CF2C 92090003 */  lbu         $t1, 0x3($s0)
/* 01CF30 0041CF30 24060000 */  addiu       $a2, $zero, 0x0
/* 01CF34 0041CF34 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CF38 0041CF38 01232821 */  addu        $a1, $t1, $v1
/* 01CF3C 0041CF3C 00A3082B */  sltu        $at, $a1, $v1
/* 01CF40 0041CF40 000967C3 */  sra         $t4, $t1, 31
/* 01CF44 0041CF44 002C2021 */  addu        $a0, $at, $t4
/* 01CF48 0041CF48 00822021 */  addu        $a0, $a0, $v0
/* 01CF4C 0041CF4C 0320F809 */  jalr        $t9
/* 01CF50 0041CF50 24070008 */   addiu      $a3, $zero, 0x8
/* 01CF54 0041CF54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CF58 0041CF58 920E0004 */  lbu         $t6, 0x4($s0)
/* 01CF5C 0041CF5C 24060000 */  addiu       $a2, $zero, 0x0
/* 01CF60 0041CF60 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CF64 0041CF64 01C32821 */  addu        $a1, $t6, $v1
/* 01CF68 0041CF68 00A3082B */  sltu        $at, $a1, $v1
/* 01CF6C 0041CF6C 000EC7C3 */  sra         $t8, $t6, 31
/* 01CF70 0041CF70 00382021 */  addu        $a0, $at, $t8
/* 01CF74 0041CF74 00822021 */  addu        $a0, $a0, $v0
/* 01CF78 0041CF78 0320F809 */  jalr        $t9
/* 01CF7C 0041CF7C 24070008 */   addiu      $a3, $zero, 0x8
/* 01CF80 0041CF80 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CF84 0041CF84 920F0005 */  lbu         $t7, 0x5($s0)
/* 01CF88 0041CF88 24060000 */  addiu       $a2, $zero, 0x0
/* 01CF8C 0041CF8C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CF90 0041CF90 01E32821 */  addu        $a1, $t7, $v1
/* 01CF94 0041CF94 00A3082B */  sltu        $at, $a1, $v1
/* 01CF98 0041CF98 000F47C3 */  sra         $t0, $t7, 31
/* 01CF9C 0041CF9C 00282021 */  addu        $a0, $at, $t0
/* 01CFA0 0041CFA0 00822021 */  addu        $a0, $a0, $v0
/* 01CFA4 0041CFA4 0320F809 */  jalr        $t9
/* 01CFA8 0041CFA8 24070008 */   addiu      $a3, $zero, 0x8
/* 01CFAC 0041CFAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CFB0 0041CFB0 920A0006 */  lbu         $t2, 0x6($s0)
/* 01CFB4 0041CFB4 24060000 */  addiu       $a2, $zero, 0x0
/* 01CFB8 0041CFB8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CFBC 0041CFBC 01432821 */  addu        $a1, $t2, $v1
/* 01CFC0 0041CFC0 00A3082B */  sltu        $at, $a1, $v1
/* 01CFC4 0041CFC4 000A67C3 */  sra         $t4, $t2, 31
/* 01CFC8 0041CFC8 002C2021 */  addu        $a0, $at, $t4
/* 01CFCC 0041CFCC 00822021 */  addu        $a0, $a0, $v0
/* 01CFD0 0041CFD0 0320F809 */  jalr        $t9
/* 01CFD4 0041CFD4 24070008 */   addiu      $a3, $zero, 0x8
/* 01CFD8 0041CFD8 920B0007 */  lbu         $t3, 0x7($s0)
/* 01CFDC 0041CFDC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CFE0 0041CFE0 0163C821 */  addu        $t9, $t3, $v1
/* 01CFE4 0041CFE4 0323082B */  sltu        $at, $t9, $v1
/* 01CFE8 0041CFE8 000B77C3 */  sra         $t6, $t3, 31
/* 01CFEC 0041CFEC 002EC021 */  addu        $t8, $at, $t6
/* 01CFF0 0041CFF0 0302C021 */  addu        $t8, $t8, $v0
/* 01CFF4 0041CFF4 0251102B */  sltu        $v0, $s2, $s1
/* 01CFF8 0041CFF8 2631FFF8 */  addiu       $s1, $s1, -0x8
/* 01CFFC 0041CFFC AE380008 */  sw          $t8, 0x8($s1)
/* 01D000 0041D000 1440FFAC */  bnez        $v0, .L0041CEB4
/* 01D004 0041D004 AE39000C */   sw         $t9, 0xC($s1)
.L0041D008:
/* 01D008 0041D008 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01D00C 0041D00C 8FB00014 */  lw          $s0, 0x14($sp)
/* 01D010 0041D010 8FB10018 */  lw          $s1, 0x18($sp)
/* 01D014 0041D014 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01D018 0041D018 03E00008 */  jr          $ra
/* 01D01C 0041D01C 27BD0028 */   addiu      $sp, $sp, 0x28
