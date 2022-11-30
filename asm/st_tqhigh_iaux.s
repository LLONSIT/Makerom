glabel st_tqhigh_iaux # 707
# _gp_disp: 0xFBE0000
.set noreorder; .cpload $t9; # .set reorder
/* 03DD4C 0043DD4C 8F99860C */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 03DD50 0043DD50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03DD54 0043DD54 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03DD58 0043DD58 0320F809 */  jalr        $t9
/* 03DD5C 0043DD5C AFBC0018 */   sw         $gp, 0x18($sp)
/* 03DD60 0043DD60 944E0000 */  lhu         $t6, 0x0($v0)
/* 03DD64 0043DD64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DD68 0043DD68 00401825 */  move        $v1, $v0
/* 03DD6C 0043DD6C 31CF000F */  andi        $t7, $t6, 0xF
/* 03DD70 0043DD70 11E00004 */  beqz        $t7, .L0043DD84
/* 03DD74 0043DD74 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03DD78 0043DD78 94620000 */  lhu         $v0, 0x0($v1)
/* 03DD7C 0043DD7C 10000025 */  b           .L0043DE14
/* 03DD80 0043DD80 3042000F */   andi       $v0, $v0, 0xF
.L0043DD84:
/* 03DD84 0043DD84 90580001 */  lbu         $t8, 0x1($v0)
/* 03DD88 0043DD88 0018C902 */  srl         $t9, $t8, 4
/* 03DD8C 0043DD8C 53200005 */  beql        $t9, $zero, .L0043DDA4
/* 03DD90 0043DD90 8C480000 */   lw         $t0, 0x0($v0)
/* 03DD94 0043DD94 90620001 */  lbu         $v0, 0x1($v1)
/* 03DD98 0043DD98 1000001E */  b           .L0043DE14
/* 03DD9C 0043DD9C 00021102 */   srl        $v0, $v0, 4
/* 03DDA0 0043DDA0 8C480000 */  lw          $t0, 0x0($v0)
.L0043DDA4:
/* 03DDA4 0043DDA4 3109000F */  andi        $t1, $t0, 0xF
/* 03DDA8 0043DDA8 51200005 */  beql        $t1, $zero, .L0043DDC0
/* 03DDAC 0043DDAC 904A0003 */   lbu        $t2, 0x3($v0)
/* 03DDB0 0043DDB0 8C620000 */  lw          $v0, 0x0($v1)
/* 03DDB4 0043DDB4 10000017 */  b           .L0043DE14
/* 03DDB8 0043DDB8 3042000F */   andi       $v0, $v0, 0xF
/* 03DDBC 0043DDBC 904A0003 */  lbu         $t2, 0x3($v0)
.L0043DDC0:
/* 03DDC0 0043DDC0 000A5902 */  srl         $t3, $t2, 4
/* 03DDC4 0043DDC4 51600005 */  beql        $t3, $zero, .L0043DDDC
/* 03DDC8 0043DDC8 904C0002 */   lbu        $t4, 0x2($v0)
/* 03DDCC 0043DDCC 90620003 */  lbu         $v0, 0x3($v1)
/* 03DDD0 0043DDD0 10000010 */  b           .L0043DE14
/* 03DDD4 0043DDD4 00021102 */   srl        $v0, $v0, 4
/* 03DDD8 0043DDD8 904C0002 */  lbu         $t4, 0x2($v0)
.L0043DDDC:
/* 03DDDC 0043DDDC 318D000F */  andi        $t5, $t4, 0xF
/* 03DDE0 0043DDE0 51A00005 */  beql        $t5, $zero, .L0043DDF8
/* 03DDE4 0043DDE4 944E0002 */   lhu        $t6, 0x2($v0)
/* 03DDE8 0043DDE8 90620002 */  lbu         $v0, 0x2($v1)
/* 03DDEC 0043DDEC 10000009 */  b           .L0043DE14
/* 03DDF0 0043DDF0 3042000F */   andi       $v0, $v0, 0xF
/* 03DDF4 0043DDF4 944E0002 */  lhu         $t6, 0x2($v0)
.L0043DDF8:
/* 03DDF8 0043DDF8 00001025 */  move        $v0, $zero
/* 03DDFC 0043DDFC 000E7B02 */  srl         $t7, $t6, 12
/* 03DE00 0043DE00 11E00004 */  beqz        $t7, .L0043DE14
/* 03DE04 0043DE04 00000000 */   nop
/* 03DE08 0043DE08 94620002 */  lhu         $v0, 0x2($v1)
/* 03DE0C 0043DE0C 10000001 */  b           .L0043DE14
/* 03DE10 0043DE10 00021302 */   srl        $v0, $v0, 12
.L0043DE14:
/* 03DE14 0043DE14 03E00008 */  jr          $ra
/* 03DE18 0043DE18 27BD0020 */   addiu      $sp, $sp, 0x20
