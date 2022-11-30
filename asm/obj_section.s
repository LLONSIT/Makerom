glabel obj_section # 449
# _gp_disp: 0xFBF2EA4
.set noreorder; .cpload $t9; # .set reorder
/* 02AEA8 0042AEA8 8F998430 */  lw          $t9, %call16(obj_psecthdr)($gp)
/* 02AEAC 0042AEAC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02AEB0 0042AEB0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AEB4 0042AEB4 AFA40020 */  sw          $a0, 0x20($sp)
/* 02AEB8 0042AEB8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AEBC 0042AEBC AFA60028 */  sw          $a2, 0x28($sp)
/* 02AEC0 0042AEC0 0320F809 */  jalr        $t9
/* 02AEC4 0042AEC4 00A02025 */   move       $a0, $a1
/* 02AEC8 0042AEC8 8FAE0028 */  lw          $t6, 0x28($sp)
/* 02AECC 0042AECC 8FA30020 */  lw          $v1, 0x20($sp)
/* 02AED0 0042AED0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AED4 0042AED4 000E7880 */  sll         $t7, $t6, 2
/* 02AED8 0042AED8 01EE7821 */  addu        $t7, $t7, $t6
/* 02AEDC 0042AEDC 000F78C0 */  sll         $t7, $t7, 3
/* 02AEE0 0042AEE0 004FC021 */  addu        $t8, $v0, $t7
/* 02AEE4 0042AEE4 270A0024 */  addiu       $t2, $t8, 0x24
/* 02AEE8 0042AEE8 00604825 */  move        $t1, $v1
.L0042AEEC:
/* 02AEEC 0042AEEC 8F080000 */  lw          $t0, 0x0($t8)
/* 02AEF0 0042AEF0 2718000C */  addiu       $t8, $t8, 0xC
/* 02AEF4 0042AEF4 2529000C */  addiu       $t1, $t1, 0xC
/* 02AEF8 0042AEF8 AD28FFF4 */  sw          $t0, -0xC($t1)
/* 02AEFC 0042AEFC 8F19FFF8 */  lw          $t9, -0x8($t8)
/* 02AF00 0042AF00 AD39FFF8 */  sw          $t9, -0x8($t1)
/* 02AF04 0042AF04 8F08FFFC */  lw          $t0, -0x4($t8)
/* 02AF08 0042AF08 170AFFF8 */  bne         $t8, $t2, .L0042AEEC
/* 02AF0C 0042AF0C AD28FFFC */   sw         $t0, -0x4($t1)
/* 02AF10 0042AF10 8F080000 */  lw          $t0, 0x0($t8)
/* 02AF14 0042AF14 00601025 */  move        $v0, $v1
/* 02AF18 0042AF18 AD280000 */  sw          $t0, 0x0($t1)
/* 02AF1C 0042AF1C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AF20 0042AF20 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AF24 0042AF24 03E00008 */  jr          $ra
/* 02AF28 0042AF28 00000000 */   nop
