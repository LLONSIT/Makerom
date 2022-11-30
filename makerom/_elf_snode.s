glabel _elf_snode # 180
# _gp_disp: 0xFBFC040
.set noreorder; .cpload $t9; # .set reorder
/* 021D0C 00421D0C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 021D10 00421D10 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 021D14 00421D14 AFBF001C */  sw          $ra, 0x1C($sp)
/* 021D18 00421D18 AFBC0018 */  sw          $gp, 0x18($sp)
/* 021D1C 00421D1C 0320F809 */  jalr        $t9
/* 021D20 00421D20 240400A8 */   addiu      $a0, $zero, 0xA8
/* 021D24 00421D24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 021D28 00421D28 14400006 */  bnez        $v0, .L00421D44
/* 021D2C 00421D2C 00401825 */   move       $v1, $v0
/* 021D30 00421D30 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 021D34 00421D34 240E0412 */  addiu       $t6, $zero, 0x412
/* 021D38 00421D38 00001025 */  move        $v0, $zero
/* 021D3C 00421D3C 10000012 */  b           .L00421D88
/* 021D40 00421D40 AC2E0000 */   sw         $t6, 0x0($at)
.L00421D44:
/* 021D44 00421D44 8F8F86EC */  lw          $t7, %got(_elf_snode_init)($gp)
/* 021D48 00421D48 00604025 */  move        $t0, $v1
/* 021D4C 00421D4C 240A0001 */  addiu       $t2, $zero, 0x1
/* 021D50 00421D50 25E900A8 */  addiu       $t1, $t7, 0xA8
.L00421D54:
/* 021D54 00421D54 8DF90000 */  lw          $t9, 0x0($t7)
/* 021D58 00421D58 25EF000C */  addiu       $t7, $t7, 0xC
/* 021D5C 00421D5C 2508000C */  addiu       $t0, $t0, 0xC
/* 021D60 00421D60 AD19FFF4 */  sw          $t9, -0xC($t0)
/* 021D64 00421D64 8DF8FFF8 */  lw          $t8, -0x8($t7)
/* 021D68 00421D68 AD18FFF8 */  sw          $t8, -0x8($t0)
/* 021D6C 00421D6C 8DF9FFFC */  lw          $t9, -0x4($t7)
/* 021D70 00421D70 15E9FFF8 */  bne         $t7, $t1, .L00421D54
/* 021D74 00421D74 AD19FFFC */   sw         $t9, -0x4($t0)
/* 021D78 00421D78 246B0068 */  addiu       $t3, $v1, 0x68
/* 021D7C 00421D7C AC6A0024 */  sw          $t2, 0x24($v1)
/* 021D80 00421D80 AC6B0010 */  sw          $t3, 0x10($v1)
/* 021D84 00421D84 00601025 */  move        $v0, $v1
.L00421D88:
/* 021D88 00421D88 8FBF001C */  lw          $ra, 0x1C($sp)
/* 021D8C 00421D8C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 021D90 00421D90 03E00008 */  jr          $ra
/* 021D94 00421D94 00000000 */   nop
