glabel elf32_xlatetof # 124
# _gp_disp: 0xFBFEB28
.set noreorder; .cpload $t9; # .set reorder
/* 01F224 0041F224 8F99801C */  lw          $t9, %got(func_0041EF5C)($gp)
/* 01F228 0041F228 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01F22C 0041F22C AFBF001C */  sw          $ra, 0x1C($sp)
/* 01F230 0041F230 2739EF5C */  addiu       $t9, $t9, %lo(func_0041EF5C)
/* 01F234 0041F234 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01F238 0041F238 0320F809 */  jalr        $t9
/* 01F23C 0041F23C 24070001 */   addiu      $a3, $zero, 0x1
/* 01F240 0041F240 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01F244 0041F244 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01F248 0041F248 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01F24C 0041F24C 03E00008 */  jr          $ra
/* 01F250 0041F250 00000000 */   nop
