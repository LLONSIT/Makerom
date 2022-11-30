glabel func_0041CCC8 # 104
# _gp_disp: 0xFC01078
.set noreorder; .cpload $t9; # .set reorder
/* 01CCD4 0041CCD4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01CCD8 0041CCD8 AFB10018 */  sw          $s1, 0x18($sp)
/* 01CCDC 0041CCDC 000618C0 */  sll         $v1, $a2, 3
/* 01CCE0 0041CCE0 00838821 */  addu        $s1, $a0, $v1
/* 01CCE4 0041CCE4 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01CCE8 0041CCE8 AFB00014 */  sw          $s0, 0x14($sp)
/* 01CCEC 0041CCEC 0091102B */  sltu        $v0, $a0, $s1
/* 01CCF0 0041CCF0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01CCF4 0041CCF4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01CCF8 0041CCF8 00809025 */  move        $s2, $a0
/* 01CCFC 0041CCFC 00A38021 */  addu        $s0, $a1, $v1
/* 01CD00 0041CD00 10400056 */  beqz        $v0, .L0041CE5C
/* 01CD04 0041CD04 2631FFF8 */   addiu      $s1, $s1, -0x8
.L0041CD08:
/* 01CD08 0041CD08 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CD0C 0041CD0C 2610FFF8 */  addiu       $s0, $s0, -0x8
/* 01CD10 0041CD10 92050007 */  lbu         $a1, 0x7($s0)
/* 01CD14 0041CD14 24040000 */  addiu       $a0, $zero, 0x0
/* 01CD18 0041CD18 24060000 */  addiu       $a2, $zero, 0x0
/* 01CD1C 0041CD1C 0320F809 */  jalr        $t9
/* 01CD20 0041CD20 24070008 */   addiu      $a3, $zero, 0x8
/* 01CD24 0041CD24 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CD28 0041CD28 920F0006 */  lbu         $t7, 0x6($s0)
/* 01CD2C 0041CD2C 24060000 */  addiu       $a2, $zero, 0x0
/* 01CD30 0041CD30 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CD34 0041CD34 01E32821 */  addu        $a1, $t7, $v1
/* 01CD38 0041CD38 00A3082B */  sltu        $at, $a1, $v1
/* 01CD3C 0041CD3C 000FC7C3 */  sra         $t8, $t7, 31
/* 01CD40 0041CD40 00382021 */  addu        $a0, $at, $t8
/* 01CD44 0041CD44 00822021 */  addu        $a0, $a0, $v0
/* 01CD48 0041CD48 0320F809 */  jalr        $t9
/* 01CD4C 0041CD4C 24070008 */   addiu      $a3, $zero, 0x8
/* 01CD50 0041CD50 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CD54 0041CD54 92080005 */  lbu         $t0, 0x5($s0)
/* 01CD58 0041CD58 24060000 */  addiu       $a2, $zero, 0x0
/* 01CD5C 0041CD5C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CD60 0041CD60 01032821 */  addu        $a1, $t0, $v1
/* 01CD64 0041CD64 00A3082B */  sltu        $at, $a1, $v1
/* 01CD68 0041CD68 000857C3 */  sra         $t2, $t0, 31
/* 01CD6C 0041CD6C 002A2021 */  addu        $a0, $at, $t2
/* 01CD70 0041CD70 00822021 */  addu        $a0, $a0, $v0
/* 01CD74 0041CD74 0320F809 */  jalr        $t9
/* 01CD78 0041CD78 24070008 */   addiu      $a3, $zero, 0x8
/* 01CD7C 0041CD7C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CD80 0041CD80 92090004 */  lbu         $t1, 0x4($s0)
/* 01CD84 0041CD84 24060000 */  addiu       $a2, $zero, 0x0
/* 01CD88 0041CD88 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CD8C 0041CD8C 01232821 */  addu        $a1, $t1, $v1
/* 01CD90 0041CD90 00A3082B */  sltu        $at, $a1, $v1
/* 01CD94 0041CD94 000967C3 */  sra         $t4, $t1, 31
/* 01CD98 0041CD98 002C2021 */  addu        $a0, $at, $t4
/* 01CD9C 0041CD9C 00822021 */  addu        $a0, $a0, $v0
/* 01CDA0 0041CDA0 0320F809 */  jalr        $t9
/* 01CDA4 0041CDA4 24070008 */   addiu      $a3, $zero, 0x8
/* 01CDA8 0041CDA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CDAC 0041CDAC 920E0003 */  lbu         $t6, 0x3($s0)
/* 01CDB0 0041CDB0 24060000 */  addiu       $a2, $zero, 0x0
/* 01CDB4 0041CDB4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CDB8 0041CDB8 01C32821 */  addu        $a1, $t6, $v1
/* 01CDBC 0041CDBC 00A3082B */  sltu        $at, $a1, $v1
/* 01CDC0 0041CDC0 000EC7C3 */  sra         $t8, $t6, 31
/* 01CDC4 0041CDC4 00382021 */  addu        $a0, $at, $t8
/* 01CDC8 0041CDC8 00822021 */  addu        $a0, $a0, $v0
/* 01CDCC 0041CDCC 0320F809 */  jalr        $t9
/* 01CDD0 0041CDD0 24070008 */   addiu      $a3, $zero, 0x8
/* 01CDD4 0041CDD4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CDD8 0041CDD8 920F0002 */  lbu         $t7, 0x2($s0)
/* 01CDDC 0041CDDC 24060000 */  addiu       $a2, $zero, 0x0
/* 01CDE0 0041CDE0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CDE4 0041CDE4 01E32821 */  addu        $a1, $t7, $v1
/* 01CDE8 0041CDE8 00A3082B */  sltu        $at, $a1, $v1
/* 01CDEC 0041CDEC 000F47C3 */  sra         $t0, $t7, 31
/* 01CDF0 0041CDF0 00282021 */  addu        $a0, $at, $t0
/* 01CDF4 0041CDF4 00822021 */  addu        $a0, $a0, $v0
/* 01CDF8 0041CDF8 0320F809 */  jalr        $t9
/* 01CDFC 0041CDFC 24070008 */   addiu      $a3, $zero, 0x8
/* 01CE00 0041CE00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CE04 0041CE04 920A0001 */  lbu         $t2, 0x1($s0)
/* 01CE08 0041CE08 24060000 */  addiu       $a2, $zero, 0x0
/* 01CE0C 0041CE0C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CE10 0041CE10 01432821 */  addu        $a1, $t2, $v1
/* 01CE14 0041CE14 00A3082B */  sltu        $at, $a1, $v1
/* 01CE18 0041CE18 000A67C3 */  sra         $t4, $t2, 31
/* 01CE1C 0041CE1C 002C2021 */  addu        $a0, $at, $t4
/* 01CE20 0041CE20 00822021 */  addu        $a0, $a0, $v0
/* 01CE24 0041CE24 0320F809 */  jalr        $t9
/* 01CE28 0041CE28 24070008 */   addiu      $a3, $zero, 0x8
/* 01CE2C 0041CE2C 920B0000 */  lbu         $t3, 0x0($s0)
/* 01CE30 0041CE30 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01CE34 0041CE34 0163C821 */  addu        $t9, $t3, $v1
/* 01CE38 0041CE38 0323082B */  sltu        $at, $t9, $v1
/* 01CE3C 0041CE3C 000B77C3 */  sra         $t6, $t3, 31
/* 01CE40 0041CE40 002EC021 */  addu        $t8, $at, $t6
/* 01CE44 0041CE44 0302C021 */  addu        $t8, $t8, $v0
/* 01CE48 0041CE48 0251102B */  sltu        $v0, $s2, $s1
/* 01CE4C 0041CE4C 2631FFF8 */  addiu       $s1, $s1, -0x8
/* 01CE50 0041CE50 AE380008 */  sw          $t8, 0x8($s1)
/* 01CE54 0041CE54 1440FFAC */  bnez        $v0, .L0041CD08
/* 01CE58 0041CE58 AE39000C */   sw         $t9, 0xC($s1)
.L0041CE5C:
/* 01CE5C 0041CE5C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01CE60 0041CE60 8FB00014 */  lw          $s0, 0x14($sp)
/* 01CE64 0041CE64 8FB10018 */  lw          $s1, 0x18($sp)
/* 01CE68 0041CE68 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01CE6C 0041CE6C 03E00008 */  jr          $ra
/* 01CE70 0041CE70 27BD0028 */   addiu      $sp, $sp, 0x28
