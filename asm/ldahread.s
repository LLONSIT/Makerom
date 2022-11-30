glabel ldahread # 234
# _gp_disp: 0xFBF8304
.set noreorder; .cpload $t9; # .set reorder
/* 025A48 00425A48 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 025A4C 00425A4C AFA40020 */  sw          $a0, 0x20($sp)
/* 025A50 00425A50 8F998108 */  lw          $t9, %call16(memcpy)($gp)
/* 025A54 00425A54 00A02025 */  move        $a0, $a1
/* 025A58 00425A58 8FA50020 */  lw          $a1, 0x20($sp)
/* 025A5C 00425A5C AFBF001C */  sw          $ra, 0x1C($sp)
/* 025A60 00425A60 AFBC0018 */  sw          $gp, 0x18($sp)
/* 025A64 00425A64 24060024 */  addiu       $a2, $zero, 0x24
/* 025A68 00425A68 0320F809 */  jalr        $t9
/* 025A6C 00425A6C 24A50038 */   addiu      $a1, $a1, 0x38
/* 025A70 00425A70 8FBF001C */  lw          $ra, 0x1C($sp)
/* 025A74 00425A74 8FBC0018 */  lw          $gp, 0x18($sp)
/* 025A78 00425A78 27BD0020 */  addiu       $sp, $sp, 0x20
/* 025A7C 00425A7C 03E00008 */  jr          $ra
/* 025A80 00425A80 24020001 */   addiu      $v0, $zero, 0x1
