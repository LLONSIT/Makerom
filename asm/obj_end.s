.section .rodata
glabel STR_1001361C
/* 04361C 1001361C */ .asciz "end"
                      .balign 4


.section .text
glabel obj_end # 588
# _gp_disp: 0xFBE82B8
.set noreorder; .cpload $t9; # .set reorder
/* 035A94 00435A94 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 035A98 00435A98 8F998550 */  lw          $t9, %call16(obj_vtop)($gp)
/* 035A9C 00435A9C AFB00014 */  sw          $s0, 0x14($sp)
/* 035AA0 00435AA0 00808025 */  move        $s0, $a0
/* 035AA4 00435AA4 AFBF0034 */  sw          $ra, 0x34($sp)
/* 035AA8 00435AA8 AFBC0030 */  sw          $gp, 0x30($sp)
/* 035AAC 00435AAC AFB6002C */  sw          $s6, 0x2C($sp)
/* 035AB0 00435AB0 AFB50028 */  sw          $s5, 0x28($sp)
/* 035AB4 00435AB4 AFB40024 */  sw          $s4, 0x24($sp)
/* 035AB8 00435AB8 AFB30020 */  sw          $s3, 0x20($sp)
/* 035ABC 00435ABC AFB2001C */  sw          $s2, 0x1C($sp)
/* 035AC0 00435AC0 AFB10018 */  sw          $s1, 0x18($sp)
/* 035AC4 00435AC4 0000B025 */  move        $s6, $zero
/* 035AC8 00435AC8 0320F809 */  jalr        $t9
/* 035ACC 00435ACC 8E050118 */   lw         $a1, 0x118($s0)
/* 035AD0 00435AD0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 035AD4 00435AD4 00409025 */  move        $s2, $v0
/* 035AD8 00435AD8 02002025 */  move        $a0, $s0
/* 035ADC 00435ADC 8F9982E0 */  lw          $t9, %call16(obj_dynsym)($gp)
/* 035AE0 00435AE0 0320F809 */  jalr        $t9
/* 035AE4 00435AE4 00000000 */   nop
/* 035AE8 00435AE8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 035AEC 00435AEC 02002025 */  move        $a0, $s0
/* 035AF0 00435AF0 00402825 */  move        $a1, $v0
/* 035AF4 00435AF4 8F998550 */  lw          $t9, %call16(obj_vtop)($gp)
/* 035AF8 00435AF8 0320F809 */  jalr        $t9
/* 035AFC 00435AFC 00000000 */   nop
/* 035B00 00435B00 8FBC0030 */  lw          $gp, 0x30($sp)
/* 035B04 00435B04 00409825 */  move        $s3, $v0
/* 035B08 00435B08 02002025 */  move        $a0, $s0
/* 035B0C 00435B0C 8F9982D8 */  lw          $t9, %call16(obj_dynstr)($gp)
/* 035B10 00435B10 0320F809 */  jalr        $t9
/* 035B14 00435B14 00000000 */   nop
/* 035B18 00435B18 8FBC0030 */  lw          $gp, 0x30($sp)
/* 035B1C 00435B1C 02002025 */  move        $a0, $s0
/* 035B20 00435B20 00402825 */  move        $a1, $v0
/* 035B24 00435B24 8F998550 */  lw          $t9, %call16(obj_vtop)($gp)
/* 035B28 00435B28 0320F809 */  jalr        $t9
/* 035B2C 00435B2C 00000000 */   nop
/* 035B30 00435B30 8FBC0030 */  lw          $gp, 0x30($sp)
/* 035B34 00435B34 0040A025 */  move        $s4, $v0
/* 035B38 00435B38 8F95802C */  lw          $s5, %got(STR_1001361C)($gp)
/* 035B3C 00435B3C 8F998284 */  lw          $t9, %call16(elfhash)($gp)
/* 035B40 00435B40 26B5361C */  addiu       $s5, $s5, %lo(STR_1001361C)
/* 035B44 00435B44 0320F809 */  jalr        $t9
/* 035B48 00435B48 02A02025 */   move       $a0, $s5
/* 035B4C 00435B4C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 035B50 00435B50 00408825 */  move        $s1, $v0
/* 035B54 00435B54 02002025 */  move        $a0, $s0
/* 035B58 00435B58 8F998334 */  lw          $t9, %call16(obj_dynflags)($gp)
/* 035B5C 00435B5C 0320F809 */  jalr        $t9
/* 035B60 00435B60 00000000 */   nop
/* 035B64 00435B64 304E0002 */  andi        $t6, $v0, 0x2
/* 035B68 00435B68 15C00008 */  bnez        $t6, .L00435B8C
/* 035B6C 00435B6C 8FBC0030 */   lw         $gp, 0x30($sp)
/* 035B70 00435B70 8E4F0000 */  lw          $t7, 0x0($s2)
/* 035B74 00435B74 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 035B78 00435B78 0311C824 */  and         $t9, $t8, $s1
/* 035B7C 00435B7C 00194080 */  sll         $t0, $t9, 2
/* 035B80 00435B80 02484821 */  addu        $t1, $s2, $t0
/* 035B84 00435B84 1000000A */  b           .L00435BB0
/* 035B88 00435B88 8D300008 */   lw         $s0, 0x8($t1)
.L00435B8C:
/* 035B8C 00435B8C 8E4A0000 */  lw          $t2, 0x0($s2)
/* 035B90 00435B90 022A001B */  divu        $zero, $s1, $t2
/* 035B94 00435B94 00005810 */  mfhi        $t3
/* 035B98 00435B98 000B6080 */  sll         $t4, $t3, 2
/* 035B9C 00435B9C 024C6821 */  addu        $t5, $s2, $t4
/* 035BA0 00435BA0 8DB00008 */  lw          $s0, 0x8($t5)
/* 035BA4 00435BA4 15400002 */  bnez        $t2, .L00435BB0
/* 035BA8 00435BA8 00000000 */   nop
/* 035BAC 00435BAC 0007000D */  break       7
.L00435BB0:
/* 035BB0 00435BB0 00107100 */  sll         $t6, $s0, 4
/* 035BB4 00435BB4 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 035BB8 00435BB8 026E8821 */  addu        $s1, $s3, $t6
/* 035BBC 00435BBC 8E2F0000 */  lw          $t7, 0x0($s1)
/* 035BC0 00435BC0 02A02825 */  move        $a1, $s5
/* 035BC4 00435BC4 0320F809 */  jalr        $t9
/* 035BC8 00435BC8 01F42021 */   addu       $a0, $t7, $s4
/* 035BCC 00435BCC 14400002 */  bnez        $v0, .L00435BD8
/* 035BD0 00435BD0 8FBC0030 */   lw         $gp, 0x30($sp)
/* 035BD4 00435BD4 8E360004 */  lw          $s6, 0x4($s1)
.L00435BD8:
/* 035BD8 00435BD8 56C0001B */  bnel        $s6, $zero, .L00435C48
/* 035BDC 00435BDC 8FBF0034 */   lw         $ra, 0x34($sp)
/* 035BE0 00435BE0 8E580000 */  lw          $t8, 0x0($s2)
/* 035BE4 00435BE4 00104880 */  sll         $t1, $s0, 2
/* 035BE8 00435BE8 0018C880 */  sll         $t9, $t8, 2
/* 035BEC 00435BEC 02594021 */  addu        $t0, $s2, $t9
/* 035BF0 00435BF0 01095021 */  addu        $t2, $t0, $t1
/* 035BF4 00435BF4 8D500008 */  lw          $s0, 0x8($t2)
/* 035BF8 00435BF8 12000012 */  beqz        $s0, .L00435C44
/* 035BFC 00435BFC 00105900 */   sll        $t3, $s0, 4
.L00435C00:
/* 035C00 00435C00 8F9980A8 */  lw          $t9, %call16(strcmp)($gp)
/* 035C04 00435C04 026B8821 */  addu        $s1, $s3, $t3
/* 035C08 00435C08 8E2C0000 */  lw          $t4, 0x0($s1)
/* 035C0C 00435C0C 02A02825 */  move        $a1, $s5
/* 035C10 00435C10 0320F809 */  jalr        $t9
/* 035C14 00435C14 01942021 */   addu       $a0, $t4, $s4
/* 035C18 00435C18 14400002 */  bnez        $v0, .L00435C24
/* 035C1C 00435C1C 8FBC0030 */   lw         $gp, 0x30($sp)
/* 035C20 00435C20 8E360004 */  lw          $s6, 0x4($s1)
.L00435C24:
/* 035C24 00435C24 8E4D0000 */  lw          $t5, 0x0($s2)
/* 035C28 00435C28 0010C080 */  sll         $t8, $s0, 2
/* 035C2C 00435C2C 000D7080 */  sll         $t6, $t5, 2
/* 035C30 00435C30 024E7821 */  addu        $t7, $s2, $t6
/* 035C34 00435C34 01F8C821 */  addu        $t9, $t7, $t8
/* 035C38 00435C38 8F300008 */  lw          $s0, 0x8($t9)
/* 035C3C 00435C3C 5600FFF0 */  bnel        $s0, $zero, .L00435C00
/* 035C40 00435C40 00105900 */   sll        $t3, $s0, 4
.L00435C44:
/* 035C44 00435C44 8FBF0034 */  lw          $ra, 0x34($sp)
.L00435C48:
/* 035C48 00435C48 02C01025 */  move        $v0, $s6
/* 035C4C 00435C4C 8FB6002C */  lw          $s6, 0x2C($sp)
/* 035C50 00435C50 8FB00014 */  lw          $s0, 0x14($sp)
/* 035C54 00435C54 8FB10018 */  lw          $s1, 0x18($sp)
/* 035C58 00435C58 8FB2001C */  lw          $s2, 0x1C($sp)
/* 035C5C 00435C5C 8FB30020 */  lw          $s3, 0x20($sp)
/* 035C60 00435C60 8FB40024 */  lw          $s4, 0x24($sp)
/* 035C64 00435C64 8FB50028 */  lw          $s5, 0x28($sp)
/* 035C68 00435C68 03E00008 */  jr          $ra
/* 035C6C 00435C6C 27BD0038 */   addiu      $sp, $sp, 0x38
