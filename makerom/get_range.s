glabel get_range # 632
# _gp_disp: 0xFBE4F08
.set noreorder; .cpload $t9; # .set reorder
/* 038E44 00438E44 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 038E48 00438E48 8F998024 */  lw          $t9, %got(func_00438A00)($gp)
/* 038E4C 00438E4C AFA5004C */  sw          $a1, 0x4C($sp)
/* 038E50 00438E50 AFBF0024 */  sw          $ra, 0x24($sp)
/* 038E54 00438E54 AFB00018 */  sw          $s0, 0x18($sp)
/* 038E58 00438E58 AFA60050 */  sw          $a2, 0x50($sp)
/* 038E5C 00438E5C 00C02825 */  move        $a1, $a2
/* 038E60 00438E60 27398A00 */  addiu       $t9, $t9, %lo(func_00438A00)
/* 038E64 00438E64 00808025 */  move        $s0, $a0
/* 038E68 00438E68 AFBC0020 */  sw          $gp, 0x20($sp)
/* 038E6C 00438E6C AFB1001C */  sw          $s1, 0x1C($sp)
/* 038E70 00438E70 0320F809 */  jalr        $t9
/* 038E74 00438E74 8FA6004C */   lw         $a2, 0x4C($sp)
/* 038E78 00438E78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 038E7C 00438E7C 8C460000 */  lw          $a2, 0x0($v0)
/* 038E80 00438E80 27A40030 */  addiu       $a0, $sp, 0x30
/* 038E84 00438E84 8F998024 */  lw          $t9, %got(func_00438B64)($gp)
/* 038E88 00438E88 02002825 */  move        $a1, $s0
/* 038E8C 00438E8C 24070001 */  addiu       $a3, $zero, 0x1
/* 038E90 00438E90 27398B64 */  addiu       $t9, $t9, %lo(func_00438B64)
/* 038E94 00438E94 24510004 */  addiu       $s1, $v0, 0x4
/* 038E98 00438E98 0320F809 */  jalr        $t9
/* 038E9C 00438E9C AFA60008 */   sw         $a2, 0x8($sp)
/* 038EA0 00438EA0 8FB80030 */  lw          $t8, 0x30($sp)
/* 038EA4 00438EA4 24010FFF */  addiu       $at, $zero, 0xFFF
/* 038EA8 00438EA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 038EAC 00438EAC 00182502 */  srl         $a0, $t8, 20
/* 038EB0 00438EB0 1481000D */  bne         $a0, $at, .L00438EE8
/* 038EB4 00438EB4 AFB80034 */   sw         $t8, 0x34($sp)
/* 038EB8 00438EB8 8F998024 */  lw          $t9, %got(func_00438B64)($gp)
/* 038EBC 00438EBC 8E260000 */  lw          $a2, 0x0($s1)
/* 038EC0 00438EC0 27A40030 */  addiu       $a0, $sp, 0x30
/* 038EC4 00438EC4 27398B64 */  addiu       $t9, $t9, %lo(func_00438B64)
/* 038EC8 00438EC8 02002825 */  move        $a1, $s0
/* 038ECC 00438ECC 24070004 */  addiu       $a3, $zero, 0x4
/* 038ED0 00438ED0 26310004 */  addiu       $s1, $s1, 0x4
/* 038ED4 00438ED4 0320F809 */  jalr        $t9
/* 038ED8 00438ED8 AFA60008 */   sw         $a2, 0x8($sp)
/* 038EDC 00438EDC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 038EE0 00438EE0 10000002 */  b           .L00438EEC
/* 038EE4 00438EE4 8FA30030 */   lw         $v1, 0x30($sp)
.L00438EE8:
/* 038EE8 00438EE8 00801825 */  move        $v1, $a0
.L00438EEC:
/* 038EEC 00438EEC 8E0B009C */  lw          $t3, 0x9C($s0)
/* 038EF0 00438EF0 00604825 */  move        $t1, $v1
/* 038EF4 00438EF4 8D6C0050 */  lw          $t4, 0x50($t3)
/* 038EF8 00438EF8 15800003 */  bnez        $t4, .L00438F08
/* 038EFC 00438EFC 00000000 */   nop
/* 038F00 00438F00 10000019 */  b           .L00438F68
/* 038F04 00438F04 8E0800A0 */   lw         $t0, 0xA0($s0)
.L00438F08:
/* 038F08 00438F08 8F9984F0 */  lw          $t9, %call16(type_to_file)($gp)
/* 038F0C 00438F0C 02002025 */  move        $a0, $s0
/* 038F10 00438F10 8FA5004C */  lw          $a1, 0x4C($sp)
/* 038F14 00438F14 0320F809 */  jalr        $t9
/* 038F18 00438F18 AFA30040 */   sw         $v1, 0x40($sp)
/* 038F1C 00438F1C 8E0F00D0 */  lw          $t7, 0xD0($s0)
/* 038F20 00438F20 8E0800A0 */  lw          $t0, 0xA0($s0)
/* 038F24 00438F24 000268C0 */  sll         $t5, $v0, 3
/* 038F28 00438F28 000FC0C0 */  sll         $t8, $t7, 3
/* 038F2C 00438F2C 01A26821 */  addu        $t5, $t5, $v0
/* 038F30 00438F30 030FC021 */  addu        $t8, $t8, $t7
/* 038F34 00438F34 0018C0C0 */  sll         $t8, $t8, 3
/* 038F38 00438F38 000D68C0 */  sll         $t5, $t5, 3
/* 038F3C 00438F3C 0018C823 */  negu        $t9, $t8
/* 038F40 00438F40 010D7021 */  addu        $t6, $t0, $t5
/* 038F44 00438F44 01D95021 */  addu        $t2, $t6, $t9
/* 038F48 00438F48 8FA30040 */  lw          $v1, 0x40($sp)
/* 038F4C 00438F4C 8D4B0034 */  lw          $t3, 0x34($t2)
/* 038F50 00438F50 8E0C00BC */  lw          $t4, 0xBC($s0)
/* 038F54 00438F54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 038F58 00438F58 006B1821 */  addu        $v1, $v1, $t3
/* 038F5C 00438F5C 00036880 */  sll         $t5, $v1, 2
/* 038F60 00438F60 018D7821 */  addu        $t7, $t4, $t5
/* 038F64 00438F64 8DE90000 */  lw          $t1, 0x0($t7)
.L00438F68:
/* 038F68 00438F68 0009C0C0 */  sll         $t8, $t1, 3
/* 038F6C 00438F6C 0309C021 */  addu        $t8, $t8, $t1
/* 038F70 00438F70 0018C0C0 */  sll         $t8, $t8, 3
/* 038F74 00438F74 01187021 */  addu        $t6, $t0, $t8
/* 038F78 00438F78 8DD9002C */  lw          $t9, 0x2C($t6)
/* 038F7C 00438F7C 8E0A00C8 */  lw          $t2, 0xC8($s0)
/* 038F80 00438F80 8FAC0034 */  lw          $t4, 0x34($sp)
/* 038F84 00438F84 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 038F88 00438F88 8FB80050 */  lw          $t8, 0x50($sp)
/* 038F8C 00438F8C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 038F90 00438F90 032A5821 */  addu        $t3, $t9, $t2
/* 038F94 00438F94 01816824 */  and         $t5, $t4, $at
/* 038F98 00438F98 8F998024 */  lw          $t9, %got(func_00438B64)($gp)
/* 038F9C 00438F9C 016D7821 */  addu        $t7, $t3, $t5
/* 038FA0 00438FA0 AF0F0018 */  sw          $t7, 0x18($t8)
/* 038FA4 00438FA4 8E260000 */  lw          $a2, 0x0($s1)
/* 038FA8 00438FA8 27398B64 */  addiu       $t9, $t9, %lo(func_00438B64)
/* 038FAC 00438FAC 27A40030 */  addiu       $a0, $sp, 0x30
/* 038FB0 00438FB0 02002825 */  move        $a1, $s0
/* 038FB4 00438FB4 24070004 */  addiu       $a3, $zero, 0x4
/* 038FB8 00438FB8 26310004 */  addiu       $s1, $s1, 0x4
/* 038FBC 00438FBC 0320F809 */  jalr        $t9
/* 038FC0 00438FC0 AFA60008 */   sw         $a2, 0x8($sp)
/* 038FC4 00438FC4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 038FC8 00438FC8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 038FCC 00438FCC 8FAC0050 */  lw          $t4, 0x50($sp)
/* 038FD0 00438FD0 8F998024 */  lw          $t9, %got(func_00438B64)($gp)
/* 038FD4 00438FD4 27A40030 */  addiu       $a0, $sp, 0x30
/* 038FD8 00438FD8 AD8A001C */  sw          $t2, 0x1C($t4)
/* 038FDC 00438FDC 8E260000 */  lw          $a2, 0x0($s1)
/* 038FE0 00438FE0 27398B64 */  addiu       $t9, $t9, %lo(func_00438B64)
/* 038FE4 00438FE4 02002825 */  move        $a1, $s0
/* 038FE8 00438FE8 24070004 */  addiu       $a3, $zero, 0x4
/* 038FEC 00438FEC 0320F809 */  jalr        $t9
/* 038FF0 00438FF0 AFA60008 */   sw         $a2, 0x8($sp)
/* 038FF4 00438FF4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 038FF8 00438FF8 8FB80050 */  lw          $t8, 0x50($sp)
/* 038FFC 00438FFC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 039000 00439000 AF0F0020 */  sw          $t7, 0x20($t8)
/* 039004 00439004 8FBF0024 */  lw          $ra, 0x24($sp)
/* 039008 00439008 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03900C 0043900C 8FB00018 */  lw          $s0, 0x18($sp)
/* 039010 00439010 03E00008 */  jr          $ra
/* 039014 00439014 27BD0048 */   addiu      $sp, $sp, 0x48
