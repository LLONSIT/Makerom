glabel _elf32_msize # 121
# _gp_disp: 0xFBFEE60
.set noreorder; .cpload $t9; # .set reorder
/* 01EEEC 0041EEEC 8F99802C */  lw          $t9, %got(RO_100117B0)($gp)
/* 01EEF0 0041EEF0 00057100 */  sll         $t6, $a1, 4
/* 01EEF4 0041EEF4 01C57023 */  subu        $t6, $t6, $a1
/* 01EEF8 0041EEF8 000E70C0 */  sll         $t6, $t6, 3
/* 01EEFC 0041EEFC 000478C0 */  sll         $t7, $a0, 3
/* 01EF00 0041EF00 01CFC021 */  addu        $t8, $t6, $t7
/* 01EF04 0041EF04 273917B0 */  addiu       $t9, $t9, %lo(RO_100117B0)
/* 01EF08 0041EF08 03194021 */  addu        $t0, $t8, $t9
/* 01EF0C 0041EF0C 03E00008 */  jr          $ra
/* 01EF10 0041EF10 8D02FF8C */   lw         $v0, -0x74($t0)
