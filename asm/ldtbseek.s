glabel ldtbseek # 229
# _gp_disp: 0xFBF86B8
.set noreorder; .cpload $t9; # .set reorder
/* 025694 00425694 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 025698 00425698 8F998458 */  lw          $t9, %call16(hdr_symptr)($gp)
/* 02569C 0042569C AFBF001C */  sw          $ra, 0x1C($sp)
/* 0256A0 004256A0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0256A4 004256A4 00803825 */  move        $a3, $a0
/* 0256A8 004256A8 8C84002C */  lw          $a0, 0x2C($a0)
/* 0256AC 004256AC 0320F809 */  jalr        $t9
/* 0256B0 004256B0 AFA70020 */   sw         $a3, 0x20($sp)
/* 0256B4 004256B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0256B8 004256B8 1040000C */  beqz        $v0, .L004256EC
/* 0256BC 004256BC 8FA70020 */   lw         $a3, 0x20($sp)
/* 0256C0 004256C0 8CEE002C */  lw          $t6, 0x2C($a3)
/* 0256C4 004256C4 8F998250 */  lw          $t9, %call16(ldfseek)($gp)
/* 0256C8 004256C8 00E02025 */  move        $a0, $a3
/* 0256CC 004256CC 8DCF009C */  lw          $t7, 0x9C($t6)
/* 0256D0 004256D0 00003025 */  move        $a2, $zero
/* 0256D4 004256D4 0320F809 */  jalr        $t9
/* 0256D8 004256D8 8DE50024 */   lw         $a1, 0x24($t7)
/* 0256DC 004256DC 14400003 */  bnez        $v0, .L004256EC
/* 0256E0 004256E0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0256E4 004256E4 10000002 */  b           .L004256F0
/* 0256E8 004256E8 24020001 */   addiu      $v0, $zero, 0x1
.L004256EC:
/* 0256EC 004256EC 00001025 */  move        $v0, $zero
.L004256F0:
/* 0256F0 004256F0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0256F4 004256F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0256F8 004256F8 03E00008 */  jr          $ra
/* 0256FC 004256FC 00000000 */   nop
