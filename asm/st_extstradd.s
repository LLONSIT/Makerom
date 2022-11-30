.section .rodata
glabel STR_10013990
/* 043990 10013990 */ .asciz "st_extstradd: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_100139CC
/* 0439CC 100139CC */ .asciz "st_extstradd: argument is nil\n"
                      .balign 4


.section .text
glabel st_extstradd # 640
# _gp_disp: 0xFBE424C
.set noreorder; .cpload $t9; # .set reorder
/* 039B00 00439B00 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 039B04 00439B04 AFB10018 */  sw          $s1, 0x18($sp)
/* 039B08 00439B08 8F9187C4 */  lw          $s1, %got(st_pchdr)($gp)
/* 039B0C 00439B0C AFBF0024 */  sw          $ra, 0x24($sp)
/* 039B10 00439B10 AFBC0020 */  sw          $gp, 0x20($sp)
/* 039B14 00439B14 8E2E0000 */  lw          $t6, 0x0($s1)
/* 039B18 00439B18 AFB2001C */  sw          $s2, 0x1C($sp)
/* 039B1C 00439B1C AFB00014 */  sw          $s0, 0x14($sp)
/* 039B20 00439B20 15C00006 */  bnez        $t6, .L00439B3C
/* 039B24 00439B24 AFA40028 */   sw         $a0, 0x28($sp)
/* 039B28 00439B28 8F998638 */  lw          $t9, %call16(st_internal)($gp)
/* 039B2C 00439B2C 8F84802C */  lw          $a0, %got(STR_10013990)($gp)
/* 039B30 00439B30 0320F809 */  jalr        $t9
/* 039B34 00439B34 24843990 */   addiu      $a0, $a0, %lo(STR_10013990)
/* 039B38 00439B38 8FBC0020 */  lw          $gp, 0x20($sp)
.L00439B3C:
/* 039B3C 00439B3C 8FAF0028 */  lw          $t7, 0x28($sp)
/* 039B40 00439B40 15E00006 */  bnez        $t7, .L00439B5C
/* 039B44 00439B44 00000000 */   nop
/* 039B48 00439B48 8F998538 */  lw          $t9, %call16(st_error)($gp)
/* 039B4C 00439B4C 8F84802C */  lw          $a0, %got(STR_100139CC)($gp)
/* 039B50 00439B50 0320F809 */  jalr        $t9
/* 039B54 00439B54 248439CC */   addiu      $a0, $a0, %lo(STR_100139CC)
/* 039B58 00439B58 8FBC0020 */  lw          $gp, 0x20($sp)
.L00439B5C:
/* 039B5C 00439B5C 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 039B60 00439B60 8FA40028 */  lw          $a0, 0x28($sp)
/* 039B64 00439B64 0320F809 */  jalr        $t9
/* 039B68 00439B68 00000000 */   nop
/* 039B6C 00439B6C 8E300000 */  lw          $s0, 0x0($s1)
/* 039B70 00439B70 8FBC0020 */  lw          $gp, 0x20($sp)
/* 039B74 00439B74 24520001 */  addiu       $s2, $v0, 0x1
/* 039B78 00439B78 8E030028 */  lw          $v1, 0x28($s0)
/* 039B7C 00439B7C 8E18002C */  lw          $t8, 0x2C($s0)
/* 039B80 00439B80 0062C821 */  addu        $t9, $v1, $v0
/* 039B84 00439B84 0338082A */  slt         $at, $t9, $t8
/* 039B88 00439B88 14200011 */  bnez        $at, .L00439BD0
/* 039B8C 00439B8C 00000000 */   nop
.L00439B90:
/* 039B90 00439B90 8F9985F8 */  lw          $t9, %call16(st_malloc)($gp)
/* 039B94 00439B94 8E040024 */  lw          $a0, 0x24($s0)
/* 039B98 00439B98 2605002C */  addiu       $a1, $s0, 0x2C
/* 039B9C 00439B9C 24060001 */  addiu       $a2, $zero, 0x1
/* 039BA0 00439BA0 0320F809 */  jalr        $t9
/* 039BA4 00439BA4 24070200 */   addiu      $a3, $zero, 0x200
/* 039BA8 00439BA8 8E280000 */  lw          $t0, 0x0($s1)
/* 039BAC 00439BAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 039BB0 00439BB0 AD020024 */  sw          $v0, 0x24($t0)
/* 039BB4 00439BB4 8E300000 */  lw          $s0, 0x0($s1)
/* 039BB8 00439BB8 8E030028 */  lw          $v1, 0x28($s0)
/* 039BBC 00439BBC 8E09002C */  lw          $t1, 0x2C($s0)
/* 039BC0 00439BC0 00725021 */  addu        $t2, $v1, $s2
/* 039BC4 00439BC4 012A082A */  slt         $at, $t1, $t2
/* 039BC8 00439BC8 1420FFF1 */  bnez        $at, .L00439B90
/* 039BCC 00439BCC 00000000 */   nop
.L00439BD0:
/* 039BD0 00439BD0 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 039BD4 00439BD4 8E0B0024 */  lw          $t3, 0x24($s0)
/* 039BD8 00439BD8 8FA50028 */  lw          $a1, 0x28($sp)
/* 039BDC 00439BDC 0320F809 */  jalr        $t9
/* 039BE0 00439BE0 01632021 */   addu       $a0, $t3, $v1
/* 039BE4 00439BE4 8E300000 */  lw          $s0, 0x0($s1)
/* 039BE8 00439BE8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 039BEC 00439BEC 8E020028 */  lw          $v0, 0x28($s0)
/* 039BF0 00439BF0 00526021 */  addu        $t4, $v0, $s2
/* 039BF4 00439BF4 AE0C0028 */  sw          $t4, 0x28($s0)
/* 039BF8 00439BF8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 039BFC 00439BFC 8FB2001C */  lw          $s2, 0x1C($sp)
/* 039C00 00439C00 8FB10018 */  lw          $s1, 0x18($sp)
/* 039C04 00439C04 8FB00014 */  lw          $s0, 0x14($sp)
/* 039C08 00439C08 03E00008 */  jr          $ra
/* 039C0C 00439C0C 27BD0028 */   addiu      $sp, $sp, 0x28
