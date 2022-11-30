glabel _elf_dnode # 179
# _gp_disp: 0xFBFC0DC
.set noreorder; .cpload $t9; # .set reorder
/* 021C70 00421C70 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 021C74 00421C74 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 021C78 00421C78 AFBF001C */  sw          $ra, 0x1C($sp)
/* 021C7C 00421C7C AFBC0018 */  sw          $gp, 0x18($sp)
/* 021C80 00421C80 0320F809 */  jalr        $t9
/* 021C84 00421C84 24040040 */   addiu      $a0, $zero, 0x40
/* 021C88 00421C88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 021C8C 00421C8C 14400006 */  bnez        $v0, .L00421CA8
/* 021C90 00421C90 00401825 */   move       $v1, $v0
/* 021C94 00421C94 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 021C98 00421C98 240E040B */  addiu       $t6, $zero, 0x40B
/* 021C9C 00421C9C 00001025 */  move        $v0, $zero
/* 021CA0 00421CA0 10000013 */  b           .L00421CF0
/* 021CA4 00421CA4 AC2E0000 */   sw         $t6, 0x0($at)
.L00421CA8:
/* 021CA8 00421CA8 8F8F86EC */  lw          $t7, %got(_elf_snode_init)($gp)
/* 021CAC 00421CAC 00604025 */  move        $t0, $v1
/* 021CB0 00421CB0 25EF0028 */  addiu       $t7, $t7, 0x28
/* 021CB4 00421CB4 25E9003C */  addiu       $t1, $t7, 0x3C
.L00421CB8:
/* 021CB8 00421CB8 8DF90000 */  lw          $t9, 0x0($t7)
/* 021CBC 00421CBC 25EF000C */  addiu       $t7, $t7, 0xC
/* 021CC0 00421CC0 2508000C */  addiu       $t0, $t0, 0xC
/* 021CC4 00421CC4 AD19FFF4 */  sw          $t9, -0xC($t0)
/* 021CC8 00421CC8 8DF8FFF8 */  lw          $t8, -0x8($t7)
/* 021CCC 00421CCC AD18FFF8 */  sw          $t8, -0x8($t0)
/* 021CD0 00421CD0 8DF9FFFC */  lw          $t9, -0x4($t7)
/* 021CD4 00421CD4 15E9FFF8 */  bne         $t7, $t1, .L00421CB8
/* 021CD8 00421CD8 AD19FFFC */   sw         $t9, -0x4($t0)
/* 021CDC 00421CDC 8DF90000 */  lw          $t9, 0x0($t7)
/* 021CE0 00421CE0 240A0001 */  addiu       $t2, $zero, 0x1
/* 021CE4 00421CE4 00601025 */  move        $v0, $v1
/* 021CE8 00421CE8 AD190000 */  sw          $t9, 0x0($t0)
/* 021CEC 00421CEC AC6A003C */  sw          $t2, 0x3C($v1)
.L00421CF0:
/* 021CF0 00421CF0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 021CF4 00421CF4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 021CF8 00421CF8 03E00008 */  jr          $ra
/* 021CFC 00421CFC 00000000 */   nop
