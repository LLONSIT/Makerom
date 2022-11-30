glabel func_00425F30 # 240
# _gp_disp: 0xFBF7E10
.set noreorder; .cpload $t9; # .set reorder
/* 025F3C 00425F3C 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 025F40 00425F40 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 025F44 00425F44 AFBF001C */  sw          $ra, 0x1C($sp)
/* 025F48 00425F48 AFBC0018 */  sw          $gp, 0x18($sp)
/* 025F4C 00425F4C 0320F809 */  jalr        $t9
/* 025F50 00425F50 AFA40028 */   sw         $a0, 0x28($sp)
/* 025F54 00425F54 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025F58 00425F58 24440001 */  addiu       $a0, $v0, 0x1
/* 025F5C 00425F5C 8F998064 */  lw          $t9, %call16(malloc)($gp)
/* 025F60 00425F60 0320F809 */  jalr        $t9
/* 025F64 00425F64 00000000 */   nop
/* 025F68 00425F68 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025F6C 00425F6C AFA20024 */  sw          $v0, 0x24($sp)
/* 025F70 00425F70 00402025 */  move        $a0, $v0
/* 025F74 00425F74 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 025F78 00425F78 8FA50028 */  lw          $a1, 0x28($sp)
/* 025F7C 00425F7C 0320F809 */  jalr        $t9
/* 025F80 00425F80 00000000 */   nop
/* 025F84 00425F84 8FBF001C */  lw          $ra, 0x1C($sp)
/* 025F88 00425F88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025F8C 00425F8C 8FA20024 */  lw          $v0, 0x24($sp)
/* 025F90 00425F90 03E00008 */  jr          $ra
/* 025F94 00425F94 27BD0028 */   addiu      $sp, $sp, 0x28
