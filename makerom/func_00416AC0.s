glabel func_00416AC0 # 70
# _gp_disp: 0xFC07280
.set noreorder; .cpload $t9; # .set reorder
/* 016ACC 00416ACC 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 016AD0 00416AD0 00067080 */  sll         $t6, $a2, 2
/* 016AD4 00416AD4 01C67023 */  subu        $t6, $t6, $a2
/* 016AD8 00416AD8 AFB2001C */  sw          $s2, 0x1C($sp)
/* 016ADC 00416ADC AFB10018 */  sw          $s1, 0x18($sp)
/* 016AE0 00416AE0 AFB00014 */  sw          $s0, 0x14($sp)
/* 016AE4 00416AE4 000E70C0 */  sll         $t6, $t6, 3
/* 016AE8 00416AE8 00808025 */  move        $s0, $a0
/* 016AEC 00416AEC 00A08825 */  move        $s1, $a1
/* 016AF0 00416AF0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 016AF4 00416AF4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 016AF8 00416AF8 01C59021 */  addu        $s2, $t6, $a1
.L00416AFC:
/* 016AFC 00416AFC 8E380000 */  lw          $t8, 0x0($s1)
/* 016B00 00416B00 8E390004 */  lw          $t9, 0x4($s1)
/* 016B04 00416B04 24060000 */  addiu       $a2, $zero, 0x0
/* 016B08 00416B08 AFB80038 */  sw          $t8, 0x38($sp)
/* 016B0C 00416B0C AFB9003C */  sw          $t9, 0x3C($sp)
/* 016B10 00416B10 A2190000 */  sb          $t9, 0x0($s0)
/* 016B14 00416B14 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016B18 00416B18 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016B1C 00416B1C 8FA40038 */  lw          $a0, 0x38($sp)
/* 016B20 00416B20 0320F809 */  jalr        $t9
/* 016B24 00416B24 24070008 */   addiu      $a3, $zero, 0x8
/* 016B28 00416B28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016B2C 00416B2C A2030001 */  sb          $v1, 0x1($s0)
/* 016B30 00416B30 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016B34 00416B34 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016B38 00416B38 8FA40038 */  lw          $a0, 0x38($sp)
/* 016B3C 00416B3C 24060000 */  addiu       $a2, $zero, 0x0
/* 016B40 00416B40 0320F809 */  jalr        $t9
/* 016B44 00416B44 24070010 */   addiu      $a3, $zero, 0x10
/* 016B48 00416B48 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016B4C 00416B4C A2030002 */  sb          $v1, 0x2($s0)
/* 016B50 00416B50 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016B54 00416B54 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016B58 00416B58 8FA40038 */  lw          $a0, 0x38($sp)
/* 016B5C 00416B5C 24060000 */  addiu       $a2, $zero, 0x0
/* 016B60 00416B60 0320F809 */  jalr        $t9
/* 016B64 00416B64 24070018 */   addiu      $a3, $zero, 0x18
/* 016B68 00416B68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016B6C 00416B6C A2030003 */  sb          $v1, 0x3($s0)
/* 016B70 00416B70 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016B74 00416B74 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016B78 00416B78 8FA40038 */  lw          $a0, 0x38($sp)
/* 016B7C 00416B7C 24060000 */  addiu       $a2, $zero, 0x0
/* 016B80 00416B80 0320F809 */  jalr        $t9
/* 016B84 00416B84 24070020 */   addiu      $a3, $zero, 0x20
/* 016B88 00416B88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016B8C 00416B8C A2030004 */  sb          $v1, 0x4($s0)
/* 016B90 00416B90 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016B94 00416B94 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016B98 00416B98 8FA40038 */  lw          $a0, 0x38($sp)
/* 016B9C 00416B9C 24060000 */  addiu       $a2, $zero, 0x0
/* 016BA0 00416BA0 0320F809 */  jalr        $t9
/* 016BA4 00416BA4 24070028 */   addiu      $a3, $zero, 0x28
/* 016BA8 00416BA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016BAC 00416BAC A2030005 */  sb          $v1, 0x5($s0)
/* 016BB0 00416BB0 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016BB4 00416BB4 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016BB8 00416BB8 8FA40038 */  lw          $a0, 0x38($sp)
/* 016BBC 00416BBC 24060000 */  addiu       $a2, $zero, 0x0
/* 016BC0 00416BC0 0320F809 */  jalr        $t9
/* 016BC4 00416BC4 24070030 */   addiu      $a3, $zero, 0x30
/* 016BC8 00416BC8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016BCC 00416BCC A2030006 */  sb          $v1, 0x6($s0)
/* 016BD0 00416BD0 8FA5003C */  lw          $a1, 0x3C($sp)
/* 016BD4 00416BD4 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016BD8 00416BD8 8FA40038 */  lw          $a0, 0x38($sp)
/* 016BDC 00416BDC 24060000 */  addiu       $a2, $zero, 0x0
/* 016BE0 00416BE0 0320F809 */  jalr        $t9
/* 016BE4 00416BE4 24070038 */   addiu      $a3, $zero, 0x38
/* 016BE8 00416BE8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016BEC 00416BEC A2030007 */  sb          $v1, 0x7($s0)
/* 016BF0 00416BF0 8E240008 */  lw          $a0, 0x8($s1)
/* 016BF4 00416BF4 24060000 */  addiu       $a2, $zero, 0x0
/* 016BF8 00416BF8 24070008 */  addiu       $a3, $zero, 0x8
/* 016BFC 00416BFC 00044202 */  srl         $t0, $a0, 8
/* 016C00 00416C00 00044C02 */  srl         $t1, $a0, 16
/* 016C04 00416C04 00047E02 */  srl         $t7, $a0, 24
/* 016C08 00416C08 A20F000B */  sb          $t7, 0xB($s0)
/* 016C0C 00416C0C A209000A */  sb          $t1, 0xA($s0)
/* 016C10 00416C10 A2080009 */  sb          $t0, 0x9($s0)
/* 016C14 00416C14 A2040008 */  sb          $a0, 0x8($s0)
/* 016C18 00416C18 922A000C */  lbu         $t2, 0xC($s1)
/* 016C1C 00416C1C A20A000C */  sb          $t2, 0xC($s0)
/* 016C20 00416C20 922B000D */  lbu         $t3, 0xD($s1)
/* 016C24 00416C24 A20B000D */  sb          $t3, 0xD($s0)
/* 016C28 00416C28 922C000E */  lbu         $t4, 0xE($s1)
/* 016C2C 00416C2C A20C000E */  sb          $t4, 0xE($s0)
/* 016C30 00416C30 922D000F */  lbu         $t5, 0xF($s1)
/* 016C34 00416C34 A20D000F */  sb          $t5, 0xF($s0)
/* 016C38 00416C38 8E2F0014 */  lw          $t7, 0x14($s1)
/* 016C3C 00416C3C 8E2E0010 */  lw          $t6, 0x10($s1)
/* 016C40 00416C40 AFAF002C */  sw          $t7, 0x2C($sp)
/* 016C44 00416C44 AFAE0028 */  sw          $t6, 0x28($sp)
/* 016C48 00416C48 A20F0010 */  sb          $t7, 0x10($s0)
/* 016C4C 00416C4C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016C50 00416C50 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016C54 00416C54 8FA40028 */  lw          $a0, 0x28($sp)
/* 016C58 00416C58 0320F809 */  jalr        $t9
/* 016C5C 00416C5C 00000000 */   nop
/* 016C60 00416C60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016C64 00416C64 A2030011 */  sb          $v1, 0x11($s0)
/* 016C68 00416C68 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016C6C 00416C6C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016C70 00416C70 8FA40028 */  lw          $a0, 0x28($sp)
/* 016C74 00416C74 24060000 */  addiu       $a2, $zero, 0x0
/* 016C78 00416C78 0320F809 */  jalr        $t9
/* 016C7C 00416C7C 24070010 */   addiu      $a3, $zero, 0x10
/* 016C80 00416C80 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016C84 00416C84 A2030012 */  sb          $v1, 0x12($s0)
/* 016C88 00416C88 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016C8C 00416C8C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016C90 00416C90 8FA40028 */  lw          $a0, 0x28($sp)
/* 016C94 00416C94 24060000 */  addiu       $a2, $zero, 0x0
/* 016C98 00416C98 0320F809 */  jalr        $t9
/* 016C9C 00416C9C 24070018 */   addiu      $a3, $zero, 0x18
/* 016CA0 00416CA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016CA4 00416CA4 A2030013 */  sb          $v1, 0x13($s0)
/* 016CA8 00416CA8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016CAC 00416CAC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016CB0 00416CB0 8FA40028 */  lw          $a0, 0x28($sp)
/* 016CB4 00416CB4 24060000 */  addiu       $a2, $zero, 0x0
/* 016CB8 00416CB8 0320F809 */  jalr        $t9
/* 016CBC 00416CBC 24070020 */   addiu      $a3, $zero, 0x20
/* 016CC0 00416CC0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016CC4 00416CC4 A2030014 */  sb          $v1, 0x14($s0)
/* 016CC8 00416CC8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016CCC 00416CCC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016CD0 00416CD0 8FA40028 */  lw          $a0, 0x28($sp)
/* 016CD4 00416CD4 24060000 */  addiu       $a2, $zero, 0x0
/* 016CD8 00416CD8 0320F809 */  jalr        $t9
/* 016CDC 00416CDC 24070028 */   addiu      $a3, $zero, 0x28
/* 016CE0 00416CE0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016CE4 00416CE4 A2030015 */  sb          $v1, 0x15($s0)
/* 016CE8 00416CE8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016CEC 00416CEC 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016CF0 00416CF0 8FA40028 */  lw          $a0, 0x28($sp)
/* 016CF4 00416CF4 24060000 */  addiu       $a2, $zero, 0x0
/* 016CF8 00416CF8 0320F809 */  jalr        $t9
/* 016CFC 00416CFC 24070030 */   addiu      $a3, $zero, 0x30
/* 016D00 00416D00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016D04 00416D04 A2030016 */  sb          $v1, 0x16($s0)
/* 016D08 00416D08 8FA5002C */  lw          $a1, 0x2C($sp)
/* 016D0C 00416D0C 8F998118 */  lw          $t9, %call16(__ull_rshift)($gp)
/* 016D10 00416D10 8FA40028 */  lw          $a0, 0x28($sp)
/* 016D14 00416D14 24060000 */  addiu       $a2, $zero, 0x0
/* 016D18 00416D18 0320F809 */  jalr        $t9
/* 016D1C 00416D1C 24070038 */   addiu      $a3, $zero, 0x38
/* 016D20 00416D20 26310018 */  addiu       $s1, $s1, 0x18
/* 016D24 00416D24 8FBC0020 */  lw          $gp, 0x20($sp)
/* 016D28 00416D28 0232082B */  sltu        $at, $s1, $s2
/* 016D2C 00416D2C A2030017 */  sb          $v1, 0x17($s0)
/* 016D30 00416D30 1420FF72 */  bnez        $at, .L00416AFC
/* 016D34 00416D34 26100018 */   addiu      $s0, $s0, 0x18
/* 016D38 00416D38 8FBF0024 */  lw          $ra, 0x24($sp)
/* 016D3C 00416D3C 8FB00014 */  lw          $s0, 0x14($sp)
/* 016D40 00416D40 8FB10018 */  lw          $s1, 0x18($sp)
/* 016D44 00416D44 8FB2001C */  lw          $s2, 0x1C($sp)
/* 016D48 00416D48 03E00008 */  jr          $ra
/* 016D4C 00416D4C 27BD0048 */   addiu      $sp, $sp, 0x48
