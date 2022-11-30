glabel func_00423F80 # 202
# _gp_disp: 0xFBF9DC0
.set noreorder; .cpload $t9; # .set reorder
/* 023F8C 00423F8C 8F83802C */  lw          $v1, %got(D_10015B18)($gp)
/* 023F90 00423F90 8F8E8030 */  lw          $t6, %got(B_1001A000)($gp)
/* 023F94 00423F94 2405000A */  addiu       $a1, $zero, 0xA
/* 023F98 00423F98 8C645B18 */  lw          $a0, %lo(D_10015B18)($v1)
/* 023F9C 00423F9C 8DCEA000 */  lw          $t6, %lo(B_1001A000)($t6)
/* 023FA0 00423FA0 2403002F */  addiu       $v1, $zero, 0x2F
/* 023FA4 00423FA4 008E1021 */  addu        $v0, $a0, $t6
/* 023FA8 00423FA8 2442FFFF */  addiu       $v0, $v0, -0x1
/* 023FAC 00423FAC 0082082B */  sltu        $at, $a0, $v0
/* 023FB0 00423FB0 1020000E */  beqz        $at, .L00423FEC
/* 023FB4 00423FB4 00000000 */   nop
/* 023FB8 00423FB8 808F0000 */  lb          $t7, 0x0($a0)
.L00423FBC:
/* 023FBC 00423FBC 546F0008 */  bnel        $v1, $t7, .L00423FE0
/* 023FC0 00423FC0 24840001 */   addiu      $a0, $a0, 0x1
/* 023FC4 00423FC4 80980001 */  lb          $t8, 0x1($a0)
/* 023FC8 00423FC8 54B80005 */  bnel        $a1, $t8, .L00423FE0
/* 023FCC 00423FCC 24840001 */   addiu      $a0, $a0, 0x1
/* 023FD0 00423FD0 A0800000 */  sb          $zero, 0x0($a0)
/* 023FD4 00423FD4 24840001 */  addiu       $a0, $a0, 0x1
/* 023FD8 00423FD8 A0800000 */  sb          $zero, 0x0($a0)
/* 023FDC 00423FDC 24840001 */  addiu       $a0, $a0, 0x1
.L00423FE0:
/* 023FE0 00423FE0 0082082B */  sltu        $at, $a0, $v0
/* 023FE4 00423FE4 5420FFF5 */  bnel        $at, $zero, .L00423FBC
/* 023FE8 00423FE8 808F0000 */   lb         $t7, 0x0($a0)
.L00423FEC:
/* 023FEC 00423FEC 03E00008 */  jr          $ra
/* 023FF0 00423FF0 00000000 */   nop
