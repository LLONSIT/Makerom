glabel obj_set_dynsym_got # 423
# _gp_disp: 0xFBF32BC
.set noreorder; .cpload $t9; # .set reorder
/* 02AA90 0042AA90 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02AA94 0042AA94 8F998318 */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02AA98 0042AA98 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AA9C 0042AA9C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AAA0 0042AAA0 AFA40020 */  sw          $a0, 0x20($sp)
/* 02AAA4 0042AAA4 AFA50024 */  sw          $a1, 0x24($sp)
/* 02AAA8 0042AAA8 0320F809 */  jalr        $t9
/* 02AAAC 0042AAAC AFA60028 */   sw         $a2, 0x28($sp)
/* 02AAB0 0042AAB0 8FAE0024 */  lw          $t6, 0x24($sp)
/* 02AAB4 0042AAB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AAB8 0042AAB8 01C2082B */  sltu        $at, $t6, $v0
/* 02AABC 0042AABC 54200011 */  bnel        $at, $zero, .L0042AB04
/* 02AAC0 0042AAC0 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02AAC4 0042AAC4 8F998318 */  lw          $t9, %call16(obj_gotsym)($gp)
/* 02AAC8 0042AAC8 8FA40020 */  lw          $a0, 0x20($sp)
/* 02AACC 0042AACC 0320F809 */  jalr        $t9
/* 02AAD0 0042AAD0 00000000 */   nop
/* 02AAD4 0042AAD4 8FB80020 */  lw          $t8, 0x20($sp)
/* 02AAD8 0042AAD8 8FA80024 */  lw          $t0, 0x24($sp)
/* 02AADC 0042AADC 8FAF0028 */  lw          $t7, 0x28($sp)
/* 02AAE0 0042AAE0 8F19012C */  lw          $t9, 0x12C($t8)
/* 02AAE4 0042AAE4 00025880 */  sll         $t3, $v0, 2
/* 02AAE8 0042AAE8 00084880 */  sll         $t1, $t0, 2
/* 02AAEC 0042AAEC 000B6023 */  negu        $t4, $t3
/* 02AAF0 0042AAF0 03295021 */  addu        $t2, $t9, $t1
/* 02AAF4 0042AAF4 014C6821 */  addu        $t5, $t2, $t4
/* 02AAF8 0042AAF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AAFC 0042AAFC ADAF0000 */  sw          $t7, 0x0($t5)
/* 02AB00 0042AB00 8FBF001C */  lw          $ra, 0x1C($sp)
.L0042AB04:
/* 02AB04 0042AB04 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AB08 0042AB08 03E00008 */  jr          $ra
/* 02AB0C 0042AB0C 00000000 */   nop
