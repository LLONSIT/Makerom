glabel elf32_getshdr # 188
# _gp_disp: 0xFBFB080
.set noreorder; .cpload $t9; # .set reorder
/* 022CCC 00422CCC 10800004 */  beqz        $a0, .L00422CE0
/* 022CD0 00422CD0 00000000 */   nop
/* 022CD4 00422CD4 8C820004 */  lw          $v0, 0x4($a0)
/* 022CD8 00422CD8 54400004 */  bnel        $v0, $zero, .L00422CEC
/* 022CDC 00422CDC 8C430048 */   lw         $v1, 0x48($v0)
.L00422CE0:
/* 022CE0 00422CE0 03E00008 */  jr          $ra
/* 022CE4 00422CE4 00001025 */   move       $v0, $zero
/* 022CE8 00422CE8 8C430048 */  lw          $v1, 0x48($v0)
.L00422CEC:
/* 022CEC 00422CEC 24050001 */  addiu       $a1, $zero, 0x1
/* 022CF0 00422CF0 50A3000A */  beql        $a1, $v1, .L00422D1C
/* 022CF4 00422CF4 8C820010 */   lw         $v0, 0x10($a0)
/* 022CF8 00422CF8 14600003 */  bnez        $v1, .L00422D08
/* 022CFC 00422CFC 240E0505 */   addiu      $t6, $zero, 0x505
/* 022D00 00422D00 10000005 */  b           .L00422D18
/* 022D04 00422D04 AC450048 */   sw         $a1, 0x48($v0)
.L00422D08:
/* 022D08 00422D08 8F8186E8 */  lw          $at, %got(_elf_err)($gp)
/* 022D0C 00422D0C 00001025 */  move        $v0, $zero
/* 022D10 00422D10 03E00008 */  jr          $ra
/* 022D14 00422D14 AC2E0000 */   sw         $t6, 0x0($at)
.L00422D18:
/* 022D18 00422D18 8C820010 */  lw          $v0, 0x10($a0)
.L00422D1C:
/* 022D1C 00422D1C 03E00008 */  jr          $ra
/* 022D20 00422D20 00000000 */   nop
