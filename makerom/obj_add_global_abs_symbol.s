.section .rodata
glabel STR_100135E0
/* 0435E0 100135E0 */ .asciz "obj->o_pssext"
                      .balign 4

glabel STR_100135F0
/* 0435F0 100135F0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10013600
/* 043600 10013600 */ .asciz "ptmp_pextr"
                      .balign 4

glabel STR_1001360C
/* 04360C 1001360C */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_add_global_abs_symbol # 587
# _gp_disp: 0xFBE848C
.set noreorder; .cpload $t9; # .set reorder
/* 0358C0 004358C0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0358C4 004358C4 8F9982BC */  lw          $t9, %call16(obj_phdrr)($gp)
/* 0358C8 004358C8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0358CC 004358CC AFB2001C */  sw          $s2, 0x1C($sp)
/* 0358D0 004358D0 00809025 */  move        $s2, $a0
/* 0358D4 004358D4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0358D8 004358D8 AFB10018 */  sw          $s1, 0x18($sp)
/* 0358DC 004358DC AFB00014 */  sw          $s0, 0x14($sp)
/* 0358E0 004358E0 AFA50044 */  sw          $a1, 0x44($sp)
/* 0358E4 004358E4 0320F809 */  jalr        $t9
/* 0358E8 004358E8 AFA60048 */   sw         $a2, 0x48($sp)
/* 0358EC 004358EC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0358F0 004358F0 00408025 */  move        $s0, $v0
/* 0358F4 004358F4 02402025 */  move        $a0, $s2
/* 0358F8 004358F8 8F9982C0 */  lw          $t9, %call16(obj_pextr)($gp)
/* 0358FC 004358FC 0320F809 */  jalr        $t9
/* 035900 00435900 00000000 */   nop
/* 035904 00435904 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035908 00435908 00408825 */  move        $s1, $v0
/* 03590C 0043590C 8FA40044 */  lw          $a0, 0x44($sp)
/* 035910 00435910 8F99806C */  lw          $t9, %call16(strlen)($gp)
/* 035914 00435914 0320F809 */  jalr        $t9
/* 035918 00435918 00000000 */   nop
/* 03591C 0043591C 8E030040 */  lw          $v1, 0x40($s0)
/* 035920 00435920 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035924 00435924 00627021 */  addu        $t6, $v1, $v0
/* 035928 00435928 25C50001 */  addiu       $a1, $t6, 0x1
/* 03592C 0043592C AFA30030 */  sw          $v1, 0x30($sp)
/* 035930 00435930 AE050040 */  sw          $a1, 0x40($s0)
/* 035934 00435934 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 035938 00435938 8E4400B0 */  lw          $a0, 0xB0($s2)
/* 03593C 0043593C 0320F809 */  jalr        $t9
/* 035940 00435940 00000000 */   nop
/* 035944 00435944 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035948 00435948 14400009 */  bnez        $v0, .L00435970
/* 03594C 0043594C AE4200B0 */   sw         $v0, 0xB0($s2)
/* 035950 00435950 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 035954 00435954 8F84802C */  lw          $a0, %got(STR_100135E0)($gp)
/* 035958 00435958 8F85802C */  lw          $a1, %got(STR_100135F0)($gp)
/* 03595C 0043595C 24060345 */  addiu       $a2, $zero, 0x345
/* 035960 00435960 248435E0 */  addiu       $a0, $a0, %lo(STR_100135E0)
/* 035964 00435964 0320F809 */  jalr        $t9
/* 035968 00435968 24A535F0 */   addiu      $a1, $a1, %lo(STR_100135F0)
/* 03596C 0043596C 8FBC0020 */  lw          $gp, 0x20($sp)
.L00435970:
/* 035970 00435970 8E5800B0 */  lw          $t8, 0xB0($s2)
/* 035974 00435974 8FB90030 */  lw          $t9, 0x30($sp)
/* 035978 00435978 8FA50044 */  lw          $a1, 0x44($sp)
/* 03597C 0043597C 03192021 */  addu        $a0, $t8, $t9
/* 035980 00435980 8F99809C */  lw          $t9, %call16(strcpy)($gp)
/* 035984 00435984 0320F809 */  jalr        $t9
/* 035988 00435988 00000000 */   nop
/* 03598C 0043598C 8E030058 */  lw          $v1, 0x58($s0)
/* 035990 00435990 8FBC0020 */  lw          $gp, 0x20($sp)
/* 035994 00435994 02202025 */  move        $a0, $s1
/* 035998 00435998 AFA3002C */  sw          $v1, 0x2C($sp)
/* 03599C 0043599C 24680001 */  addiu       $t0, $v1, 0x1
/* 0359A0 004359A0 AE080058 */  sw          $t0, 0x58($s0)
/* 0359A4 004359A4 8F99810C */  lw          $t9, %call16(realloc)($gp)
/* 0359A8 004359A8 00082900 */  sll         $a1, $t0, 4
/* 0359AC 004359AC 0320F809 */  jalr        $t9
/* 0359B0 004359B0 00000000 */   nop
/* 0359B4 004359B4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0359B8 004359B8 14400009 */  bnez        $v0, .L004359E0
/* 0359BC 004359BC 00408825 */   move       $s1, $v0
/* 0359C0 004359C0 8F998144 */  lw          $t9, %call16(__assert)($gp)
/* 0359C4 004359C4 8F84802C */  lw          $a0, %got(STR_10013600)($gp)
/* 0359C8 004359C8 8F85802C */  lw          $a1, %got(STR_1001360C)($gp)
/* 0359CC 004359CC 2406034B */  addiu       $a2, $zero, 0x34B
/* 0359D0 004359D0 24843600 */  addiu       $a0, $a0, %lo(STR_10013600)
/* 0359D4 004359D4 0320F809 */  jalr        $t9
/* 0359D8 004359D8 24A5360C */   addiu      $a1, $a1, %lo(STR_1001360C)
/* 0359DC 004359DC 8FBC0020 */  lw          $gp, 0x20($sp)
.L004359E0:
/* 0359E0 004359E0 AE5100AC */  sw          $s1, 0xAC($s2)
/* 0359E4 004359E4 8FA9002C */  lw          $t1, 0x2C($sp)
/* 0359E8 004359E8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 0359EC 004359EC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 0359F0 004359F0 00095100 */  sll         $t2, $t1, 4
/* 0359F4 004359F4 022A1021 */  addu        $v0, $s1, $t2
/* 0359F8 004359F8 904B0000 */  lbu         $t3, 0x0($v0)
/* 0359FC 004359FC A4400002 */  sh          $zero, 0x2($v0)
/* 035A00 00435A00 9049000C */  lbu         $t1, 0xC($v0)
/* 035A04 00435A04 316DFF7F */  andi        $t5, $t3, 0xFF7F
/* 035A08 00435A08 A04D0000 */  sb          $t5, 0x0($v0)
/* 035A0C 00435A0C 31AE00BF */  andi        $t6, $t5, 0xBF
/* 035A10 00435A10 A04E0000 */  sb          $t6, 0x0($v0)
/* 035A14 00435A14 944F0000 */  lhu         $t7, 0x0($v0)
/* 035A18 00435A18 312AFF03 */  andi        $t2, $t1, 0xFF03
/* 035A1C 00435A1C 354B0004 */  ori         $t3, $t2, 0x4
/* 035A20 00435A20 31F8F800 */  andi        $t8, $t7, 0xF800
/* 035A24 00435A24 A4580000 */  sh          $t8, 0x0($v0)
/* 035A28 00435A28 8FB90030 */  lw          $t9, 0x30($sp)
/* 035A2C 00435A2C AC590004 */  sw          $t9, 0x4($v0)
/* 035A30 00435A30 8FA80048 */  lw          $t0, 0x48($sp)
/* 035A34 00435A34 A04B000C */  sb          $t3, 0xC($v0)
/* 035A38 00435A38 944C000C */  lhu         $t4, 0xC($v0)
/* 035A3C 00435A3C AC480008 */  sw          $t0, 0x8($v0)
/* 035A40 00435A40 318DFC1F */  andi        $t5, $t4, 0xFC1F
/* 035A44 00435A44 35AE00A0 */  ori         $t6, $t5, 0xA0
/* 035A48 00435A48 A44E000C */  sh          $t6, 0xC($v0)
/* 035A4C 00435A4C 904F000D */  lbu         $t7, 0xD($v0)
/* 035A50 00435A50 31F8FFEF */  andi        $t8, $t7, 0xFFEF
/* 035A54 00435A54 A058000D */  sb          $t8, 0xD($v0)
/* 035A58 00435A58 8C43000C */  lw          $v1, 0xC($v0)
/* 035A5C 00435A5C 0061C826 */  xor         $t9, $v1, $at
/* 035A60 00435A60 00194300 */  sll         $t0, $t9, 12
/* 035A64 00435A64 00084B02 */  srl         $t1, $t0, 12
/* 035A68 00435A68 01235026 */  xor         $t2, $t1, $v1
/* 035A6C 00435A6C AC4A000C */  sw          $t2, 0xC($v0)
/* 035A70 00435A70 8FBF0024 */  lw          $ra, 0x24($sp)
/* 035A74 00435A74 8FB2001C */  lw          $s2, 0x1C($sp)
/* 035A78 00435A78 8FB10018 */  lw          $s1, 0x18($sp)
/* 035A7C 00435A7C 8FB00014 */  lw          $s0, 0x14($sp)
/* 035A80 00435A80 03E00008 */  jr          $ra
/* 035A84 00435A84 27BD0040 */   addiu      $sp, $sp, 0x40
