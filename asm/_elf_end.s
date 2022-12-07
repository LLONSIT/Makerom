glabel _elf_end # 118
# _gp_disp: 0xFBFF280
.set noreorder; .cpload $t9; # .set reorder
/* 01EACC 0041EACC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01EAD0 0041EAD0 AFB40024 */  sw          $s4, 0x24($sp)
/* 01EAD4 0041EAD4 AFB30020 */  sw          $s3, 0x20($sp)
/* 01EAD8 0041EAD8 0080A025 */  move        $s4, $a0
/* 01EADC 0041EADC AFBF002C */  sw          $ra, 0x2C($sp)
/* 01EAE0 0041EAE0 AFBC0028 */  sw          $gp, 0x28($sp)
/* 01EAE4 0041EAE4 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01EAE8 0041EAE8 AFB10018 */  sw          $s1, 0x18($sp)
/* 01EAEC 0041EAEC AFB00014 */  sw          $s0, 0x14($sp)
/* 01EAF0 0041EAF0 14800003 */  bnez        $a0, .L0041EB00
/* 01EAF4 0041EAF4 00009825 */   move       $s3, $zero
/* 01EAF8 0041EAF8 100000B4 */  b           .L0041EDCC
/* 01EAFC 0041EAFC 00001025 */   move       $v0, $zero
.L0041EB00:
/* 01EB00 0041EB00 8E8E0004 */  lw          $t6, 0x4($s4)
/* 01EB04 0041EB04 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 01EB08 0041EB08 11E00003 */  beqz        $t7, .L0041EB18
/* 01EB0C 0041EB0C AE8F0004 */   sw         $t7, 0x4($s4)
/* 01EB10 0041EB10 100000AE */  b           .L0041EDCC
/* 01EB14 0041EB14 01E01025 */   move       $v0, $t7
.L0041EB18:
/* 01EB18 0041EB18 8E820000 */  lw          $v0, 0x0($s4)
.L0041EB1C:
/* 01EB1C 0041EB1C 50400005 */  beql        $v0, $zero, .L0041EB34
/* 01EB20 0041EB20 8E920060 */   lw         $s2, 0x60($s4)
/* 01EB24 0041EB24 8C580004 */  lw          $t8, 0x4($v0)
/* 01EB28 0041EB28 2719FFFF */  addiu       $t9, $t8, -0x1
/* 01EB2C 0041EB2C AC590004 */  sw          $t9, 0x4($v0)
/* 01EB30 0041EB30 8E920060 */  lw          $s2, 0x60($s4)
.L0041EB34:
/* 01EB34 0041EB34 12400039 */  beqz        $s2, .L0041EC1C
/* 01EB38 0041EB38 00000000 */   nop
/* 01EB3C 0041EB3C 8E510008 */  lw          $s1, 0x8($s2)
.L0041EB40:
/* 01EB40 0041EB40 52200028 */  beql        $s1, $zero, .L0041EBE4
/* 01EB44 0041EB44 8E4C0024 */   lw         $t4, 0x24($s2)
.L0041EB48:
/* 01EB48 0041EB48 8E240034 */  lw          $a0, 0x34($s1)
/* 01EB4C 0041EB4C 50800006 */  beql        $a0, $zero, .L0041EB68
/* 01EB50 0041EB50 8E300020 */   lw         $s0, 0x20($s1)
/* 01EB54 0041EB54 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EB58 0041EB58 0320F809 */  jalr        $t9
/* 01EB5C 0041EB5C 00000000 */   nop
/* 01EB60 0041EB60 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01EB64 0041EB64 8E300020 */  lw          $s0, 0x20($s1)
.L0041EB68:
/* 01EB68 0041EB68 52000012 */  beql        $s0, $zero, .L0041EBB4
/* 01EB6C 0041EB6C 8E2A003C */   lw         $t2, 0x3C($s1)
/* 01EB70 0041EB70 8E040034 */  lw          $a0, 0x34($s0)
/* 01EB74 0041EB74 50800006 */  beql        $a0, $zero, .L0041EB90
/* 01EB78 0041EB78 8E08003C */   lw         $t0, 0x3C($s0)
/* 01EB7C 0041EB7C 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EB80 0041EB80 0320F809 */  jalr        $t9
/* 01EB84 0041EB84 00000000 */   nop
/* 01EB88 0041EB88 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01EB8C 0041EB8C 8E08003C */  lw          $t0, 0x3C($s0)
.L0041EB90:
/* 01EB90 0041EB90 31090001 */  andi        $t1, $t0, 0x1
/* 01EB94 0041EB94 51200007 */  beql        $t1, $zero, .L0041EBB4
/* 01EB98 0041EB98 8E2A003C */   lw         $t2, 0x3C($s1)
/* 01EB9C 0041EB9C 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EBA0 0041EBA0 02002025 */  move        $a0, $s0
/* 01EBA4 0041EBA4 0320F809 */  jalr        $t9
/* 01EBA8 0041EBA8 00000000 */   nop
/* 01EBAC 0041EBAC 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01EBB0 0041EBB0 8E2A003C */  lw          $t2, 0x3C($s1)
.L0041EBB4:
/* 01EBB4 0041EBB4 8E30001C */  lw          $s0, 0x1C($s1)
/* 01EBB8 0041EBB8 314B0001 */  andi        $t3, $t2, 0x1
/* 01EBBC 0041EBBC 11600006 */  beqz        $t3, .L0041EBD8
/* 01EBC0 0041EBC0 00000000 */   nop
/* 01EBC4 0041EBC4 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EBC8 0041EBC8 02202025 */  move        $a0, $s1
/* 01EBCC 0041EBCC 0320F809 */  jalr        $t9
/* 01EBD0 0041EBD0 00000000 */   nop
/* 01EBD4 0041EBD4 8FBC0028 */  lw          $gp, 0x28($sp)
.L0041EBD8:
/* 01EBD8 0041EBD8 1600FFDB */  bnez        $s0, .L0041EB48
/* 01EBDC 0041EBDC 02008825 */   move       $s1, $s0
/* 01EBE0 0041EBE0 8E4C0024 */  lw          $t4, 0x24($s2)
.L0041EBE4:
/* 01EBE4 0041EBE4 318D0001 */  andi        $t5, $t4, 0x1
/* 01EBE8 0041EBE8 51A0000A */  beql        $t5, $zero, .L0041EC14
/* 01EBEC 0041EBEC 8E520000 */   lw         $s2, 0x0($s2)
/* 01EBF0 0041EBF0 52600007 */  beql        $s3, $zero, .L0041EC10
/* 01EBF4 0041EBF4 02409825 */   move       $s3, $s2
/* 01EBF8 0041EBF8 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EBFC 0041EBFC 02602025 */  move        $a0, $s3
/* 01EC00 0041EC00 0320F809 */  jalr        $t9
/* 01EC04 0041EC04 00000000 */   nop
/* 01EC08 0041EC08 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01EC0C 0041EC0C 02409825 */  move        $s3, $s2
.L0041EC10:
/* 01EC10 0041EC10 8E520000 */  lw          $s2, 0x0($s2)
.L0041EC14:
/* 01EC14 0041EC14 5640FFCA */  bnel        $s2, $zero, .L0041EB40
/* 01EC18 0041EC18 8E510008 */   lw         $s1, 0x8($s2)
.L0041EC1C:
/* 01EC1C 0041EC1C 52600007 */  beql        $s3, $zero, .L0041EC3C
/* 01EC20 0041EC20 8E900068 */   lw         $s0, 0x68($s4)
/* 01EC24 0041EC24 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EC28 0041EC28 02602025 */  move        $a0, $s3
/* 01EC2C 0041EC2C 0320F809 */  jalr        $t9
/* 01EC30 0041EC30 00000000 */   nop
/* 01EC34 0041EC34 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01EC38 0041EC38 8E900068 */  lw          $s0, 0x68($s4)
.L0041EC3C:
/* 01EC3C 0041EC3C 5200000A */  beql        $s0, $zero, .L0041EC68
/* 01EC40 0041EC40 8E820088 */   lw         $v0, 0x88($s4)
.L0041EC44:
/* 01EC44 0041EC44 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EC48 0041EC48 8E13001C */  lw          $s3, 0x1C($s0)
/* 01EC4C 0041EC4C 02002025 */  move        $a0, $s0
/* 01EC50 0041EC50 0320F809 */  jalr        $t9
/* 01EC54 0041EC54 00000000 */   nop
/* 01EC58 0041EC58 02608025 */  move        $s0, $s3
/* 01EC5C 0041EC5C 1660FFF9 */  bnez        $s3, .L0041EC44
/* 01EC60 0041EC60 8FBC0028 */   lw         $gp, 0x28($sp)
/* 01EC64 0041EC64 8E820088 */  lw          $v0, 0x88($s4)
.L0041EC68:
/* 01EC68 0041EC68 304E0002 */  andi        $t6, $v0, 0x2
/* 01EC6C 0041EC6C 51C00008 */  beql        $t6, $zero, .L0041EC90
/* 01EC70 0041EC70 304F0004 */   andi       $t7, $v0, 0x4
/* 01EC74 0041EC74 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EC78 0041EC78 8E840050 */  lw          $a0, 0x50($s4)
/* 01EC7C 0041EC7C 0320F809 */  jalr        $t9
/* 01EC80 0041EC80 00000000 */   nop
/* 01EC84 0041EC84 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01EC88 0041EC88 8E820088 */  lw          $v0, 0x88($s4)
/* 01EC8C 0041EC8C 304F0004 */  andi        $t7, $v0, 0x4
.L0041EC90:
/* 01EC90 0041EC90 51E00008 */  beql        $t7, $zero, .L0041ECB4
/* 01EC94 0041EC94 30580008 */   andi       $t8, $v0, 0x8
/* 01EC98 0041EC98 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EC9C 0041EC9C 8E840054 */  lw          $a0, 0x54($s4)
/* 01ECA0 0041ECA0 0320F809 */  jalr        $t9
/* 01ECA4 0041ECA4 00000000 */   nop
/* 01ECA8 0041ECA8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01ECAC 0041ECAC 8E820088 */  lw          $v0, 0x88($s4)
/* 01ECB0 0041ECB0 30580008 */  andi        $t8, $v0, 0x8
.L0041ECB4:
/* 01ECB4 0041ECB4 53000008 */  beql        $t8, $zero, .L0041ECD8
/* 01ECB8 0041ECB8 30590020 */   andi       $t9, $v0, 0x20
/* 01ECBC 0041ECBC 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01ECC0 0041ECC0 8E84005C */  lw          $a0, 0x5C($s4)
/* 01ECC4 0041ECC4 0320F809 */  jalr        $t9
/* 01ECC8 0041ECC8 00000000 */   nop
/* 01ECCC 0041ECCC 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01ECD0 0041ECD0 8E820088 */  lw          $v0, 0x88($s4)
/* 01ECD4 0041ECD4 30590020 */  andi        $t9, $v0, 0x20
.L0041ECD8:
/* 01ECD8 0041ECD8 53200008 */  beql        $t9, $zero, .L0041ECFC
/* 01ECDC 0041ECDC 30480001 */   andi       $t0, $v0, 0x1
/* 01ECE0 0041ECE0 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01ECE4 0041ECE4 8E840030 */  lw          $a0, 0x30($s4)
/* 01ECE8 0041ECE8 0320F809 */  jalr        $t9
/* 01ECEC 0041ECEC 00000000 */   nop
/* 01ECF0 0041ECF0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01ECF4 0041ECF4 8E820088 */  lw          $v0, 0x88($s4)
/* 01ECF8 0041ECF8 30480001 */  andi        $t0, $v0, 0x1
.L0041ECFC:
/* 01ECFC 0041ECFC 51000007 */  beql        $t0, $zero, .L0041ED1C
/* 01ED00 0041ED00 8E890000 */   lw         $t1, 0x0($s4)
/* 01ED04 0041ED04 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01ED08 0041ED08 8E840070 */  lw          $a0, 0x70($s4)
/* 01ED0C 0041ED0C 0320F809 */  jalr        $t9
/* 01ED10 0041ED10 00000000 */   nop
/* 01ED14 0041ED14 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01ED18 0041ED18 8E890000 */  lw          $t1, 0x0($s4)
.L0041ED1C:
/* 01ED1C 0041ED1C 1520001F */  bnez        $t1, .L0041ED9C
/* 01ED20 0041ED20 00000000 */   nop
/* 01ED24 0041ED24 8E900038 */  lw          $s0, 0x38($s4)
/* 01ED28 0041ED28 12000007 */  beqz        $s0, .L0041ED48
/* 01ED2C 0041ED2C 00000000 */   nop
/* 01ED30 0041ED30 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01ED34 0041ED34 02002025 */  move        $a0, $s0
/* 01ED38 0041ED38 0320F809 */  jalr        $t9
/* 01ED3C 0041ED3C 00000000 */   nop
/* 01ED40 0041ED40 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01ED44 0041ED44 8E900038 */  lw          $s0, 0x38($s4)
.L0041ED48:
/* 01ED48 0041ED48 12000005 */  beqz        $s0, .L0041ED60
/* 01ED4C 0041ED4C 00000000 */   nop
/* 01ED50 0041ED50 8E820088 */  lw          $v0, 0x88($s4)
/* 01ED54 0041ED54 00025000 */  sll         $t2, $v0, 0
/* 01ED58 0041ED58 05430009 */  bgezl       $t2, .L0041ED80
/* 01ED5C 0041ED5C 00025880 */   sll        $t3, $v0, 2
.L0041ED60:
/* 01ED60 0041ED60 8F99821C */  lw          $t9, %call16(_elf_unmap)($gp)
/* 01ED64 0041ED64 8E840020 */  lw          $a0, 0x20($s4)
/* 01ED68 0041ED68 8E850024 */  lw          $a1, 0x24($s4)
/* 01ED6C 0041ED6C 0320F809 */  jalr        $t9
/* 01ED70 0041ED70 00000000 */   nop
/* 01ED74 0041ED74 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01ED78 0041ED78 8E820088 */  lw          $v0, 0x88($s4)
/* 01ED7C 0041ED7C 00025880 */  sll         $t3, $v0, 2
.L0041ED80:
/* 01ED80 0041ED80 05610006 */  bgez        $t3, .L0041ED9C
/* 01ED84 0041ED84 00000000 */   nop
/* 01ED88 0041ED88 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01ED8C 0041ED8C 8E840020 */  lw          $a0, 0x20($s4)
/* 01ED90 0041ED90 0320F809 */  jalr        $t9
/* 01ED94 0041ED94 00000000 */   nop
/* 01ED98 0041ED98 8FBC0028 */  lw          $gp, 0x28($sp)
.L0041ED9C:
/* 01ED9C 0041ED9C 8F9980A0 */  lw          $t9, %call16(free)($gp)
/* 01EDA0 0041EDA0 02802025 */  move        $a0, $s4
/* 01EDA4 0041EDA4 8E940000 */  lw          $s4, 0x0($s4)
/* 01EDA8 0041EDA8 0320F809 */  jalr        $t9
/* 01EDAC 0041EDAC 00000000 */   nop
/* 01EDB0 0041EDB0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 01EDB4 0041EDB4 12800004 */  beqz        $s4, .L0041EDC8
/* 01EDB8 0041EDB8 00009825 */   move       $s3, $zero
/* 01EDBC 0041EDBC 8E8C0004 */  lw          $t4, 0x4($s4)
/* 01EDC0 0041EDC0 5180FF56 */  beql        $t4, $zero, .L0041EB1C
/* 01EDC4 0041EDC4 8E820000 */   lw         $v0, 0x0($s4)
.L0041EDC8:
/* 01EDC8 0041EDC8 00001025 */  move        $v0, $zero
.L0041EDCC:
/* 01EDCC 0041EDCC 8FBF002C */  lw          $ra, 0x2C($sp)
/* 01EDD0 0041EDD0 8FB00014 */  lw          $s0, 0x14($sp)
/* 01EDD4 0041EDD4 8FB10018 */  lw          $s1, 0x18($sp)
/* 01EDD8 0041EDD8 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01EDDC 0041EDDC 8FB30020 */  lw          $s3, 0x20($sp)
/* 01EDE0 0041EDE0 8FB40024 */  lw          $s4, 0x24($sp)
/* 01EDE4 0041EDE4 03E00008 */  jr          $ra
/* 01EDE8 0041EDE8 27BD0030 */   addiu      $sp, $sp, 0x30
/* 01EDEC 0041EDEC 00000000 */  nop
