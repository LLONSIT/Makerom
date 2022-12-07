glabel st_fixextindex # 701
# _gp_disp: 0xFBE0410
.set noreorder; .cpload $t9; # .set reorder
/* 03D93C 0043D93C 8F998630 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 03D940 0043D940 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03D944 0043D944 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03D948 0043D948 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03D94C 0043D94C 0320F809 */  jalr        $t9
/* 03D950 0043D950 AFA50034 */   sw         $a1, 0x34($sp)
/* 03D954 0043D954 8C580000 */  lw          $t8, 0x0($v0)
/* 03D958 0043D958 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D95C 0043D95C 27AE0024 */  addiu       $t6, $sp, 0x24
/* 03D960 0043D960 ADD80000 */  sw          $t8, 0x0($t6)
/* 03D964 0043D964 8C4F0004 */  lw          $t7, 0x4($v0)
/* 03D968 0043D968 ADCF0004 */  sw          $t7, 0x4($t6)
/* 03D96C 0043D96C 8F998628 */  lw          $t9, %call16(st_pext_iext)($gp)
/* 03D970 0043D970 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D974 0043D974 0320F809 */  jalr        $t9
/* 03D978 0043D978 00000000 */   nop
/* 03D97C 0043D97C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D980 0043D980 AFA2002C */  sw          $v0, 0x2C($sp)
/* 03D984 0043D984 8F9985D4 */  lw          $t9, %call16(st_currentifd)($gp)
/* 03D988 0043D988 0320F809 */  jalr        $t9
/* 03D98C 0043D98C 00000000 */   nop
/* 03D990 0043D990 8FA3002C */  lw          $v1, 0x2C($sp)
/* 03D994 0043D994 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D998 0043D998 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D99C 0043D99C A4620002 */  sh          $v0, 0x2($v1)
/* 03D9A0 0043D9A0 8FB90034 */  lw          $t9, 0x34($sp)
/* 03D9A4 0043D9A4 8C64000C */  lw          $a0, 0xC($v1)
/* 03D9A8 0043D9A8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D9AC 0043D9AC 03214024 */  and         $t0, $t9, $at
/* 03D9B0 0043D9B0 01044826 */  xor         $t1, $t0, $a0
/* 03D9B4 0043D9B4 00095300 */  sll         $t2, $t1, 12
/* 03D9B8 0043D9B8 000A5B02 */  srl         $t3, $t2, 12
/* 03D9BC 0043D9BC 01646026 */  xor         $t4, $t3, $a0
/* 03D9C0 0043D9C0 AC6C000C */  sw          $t4, 0xC($v1)
/* 03D9C4 0043D9C4 946D000C */  lhu         $t5, 0xC($v1)
/* 03D9C8 0043D9C8 31AEFC1F */  andi        $t6, $t5, 0xFC1F
/* 03D9CC 0043D9CC 35CF0020 */  ori         $t7, $t6, 0x20
/* 03D9D0 0043D9D0 A46F000C */  sh          $t7, 0xC($v1)
/* 03D9D4 0043D9D4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03D9D8 0043D9D8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03D9DC 0043D9DC 03E00008 */  jr          $ra
/* 03D9E0 0043D9E0 00000000 */   nop
