glabel func_0041BAA8 # 100
# _gp_disp: 0xFC02298
.set noreorder; .cpload $t9; # .set reorder
/* 01BAB4 0041BAB4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01BAB8 0041BAB8 AFB10018 */  sw          $s1, 0x18($sp)
/* 01BABC 0041BABC 00061180 */  sll         $v0, $a2, 6
/* 01BAC0 0041BAC0 00828821 */  addu        $s1, $a0, $v0
/* 01BAC4 0041BAC4 AFB2001C */  sw          $s2, 0x1C($sp)
/* 01BAC8 0041BAC8 AFB00014 */  sw          $s0, 0x14($sp)
/* 01BACC 0041BACC 0091382B */  sltu        $a3, $a0, $s1
/* 01BAD0 0041BAD0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01BAD4 0041BAD4 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01BAD8 0041BAD8 00809025 */  move        $s2, $a0
/* 01BADC 0041BADC 00A28021 */  addu        $s0, $a1, $v0
/* 01BAE0 0041BAE0 10E00217 */  beqz        $a3, .L0041C340
/* 01BAE4 0041BAE4 2631FFC0 */   addiu      $s1, $s1, -0x40
.L0041BAE8:
/* 01BAE8 0041BAE8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BAEC 0041BAEC 2610FFC0 */  addiu       $s0, $s0, -0x40
/* 01BAF0 0041BAF0 9205003F */  lbu         $a1, 0x3F($s0)
/* 01BAF4 0041BAF4 24040000 */  addiu       $a0, $zero, 0x0
/* 01BAF8 0041BAF8 24060000 */  addiu       $a2, $zero, 0x0
/* 01BAFC 0041BAFC 0320F809 */  jalr        $t9
/* 01BB00 0041BB00 24070008 */   addiu      $a3, $zero, 0x8
/* 01BB04 0041BB04 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BB08 0041BB08 920F003E */  lbu         $t7, 0x3E($s0)
/* 01BB0C 0041BB0C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BB10 0041BB10 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BB14 0041BB14 01E32821 */  addu        $a1, $t7, $v1
/* 01BB18 0041BB18 00A3082B */  sltu        $at, $a1, $v1
/* 01BB1C 0041BB1C 000FC7C3 */  sra         $t8, $t7, 31
/* 01BB20 0041BB20 00382021 */  addu        $a0, $at, $t8
/* 01BB24 0041BB24 00822021 */  addu        $a0, $a0, $v0
/* 01BB28 0041BB28 0320F809 */  jalr        $t9
/* 01BB2C 0041BB2C 24070008 */   addiu      $a3, $zero, 0x8
/* 01BB30 0041BB30 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BB34 0041BB34 9208003D */  lbu         $t0, 0x3D($s0)
/* 01BB38 0041BB38 24060000 */  addiu       $a2, $zero, 0x0
/* 01BB3C 0041BB3C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BB40 0041BB40 01032821 */  addu        $a1, $t0, $v1
/* 01BB44 0041BB44 00A3082B */  sltu        $at, $a1, $v1
/* 01BB48 0041BB48 000857C3 */  sra         $t2, $t0, 31
/* 01BB4C 0041BB4C 002A2021 */  addu        $a0, $at, $t2
/* 01BB50 0041BB50 00822021 */  addu        $a0, $a0, $v0
/* 01BB54 0041BB54 0320F809 */  jalr        $t9
/* 01BB58 0041BB58 24070008 */   addiu      $a3, $zero, 0x8
/* 01BB5C 0041BB5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BB60 0041BB60 9209003C */  lbu         $t1, 0x3C($s0)
/* 01BB64 0041BB64 24060000 */  addiu       $a2, $zero, 0x0
/* 01BB68 0041BB68 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BB6C 0041BB6C 01232821 */  addu        $a1, $t1, $v1
/* 01BB70 0041BB70 00A3082B */  sltu        $at, $a1, $v1
/* 01BB74 0041BB74 000967C3 */  sra         $t4, $t1, 31
/* 01BB78 0041BB78 002C2021 */  addu        $a0, $at, $t4
/* 01BB7C 0041BB7C 00822021 */  addu        $a0, $a0, $v0
/* 01BB80 0041BB80 0320F809 */  jalr        $t9
/* 01BB84 0041BB84 24070008 */   addiu      $a3, $zero, 0x8
/* 01BB88 0041BB88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BB8C 0041BB8C 920E003B */  lbu         $t6, 0x3B($s0)
/* 01BB90 0041BB90 24060000 */  addiu       $a2, $zero, 0x0
/* 01BB94 0041BB94 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BB98 0041BB98 01C32821 */  addu        $a1, $t6, $v1
/* 01BB9C 0041BB9C 00A3082B */  sltu        $at, $a1, $v1
/* 01BBA0 0041BBA0 000EC7C3 */  sra         $t8, $t6, 31
/* 01BBA4 0041BBA4 00382021 */  addu        $a0, $at, $t8
/* 01BBA8 0041BBA8 00822021 */  addu        $a0, $a0, $v0
/* 01BBAC 0041BBAC 0320F809 */  jalr        $t9
/* 01BBB0 0041BBB0 24070008 */   addiu      $a3, $zero, 0x8
/* 01BBB4 0041BBB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BBB8 0041BBB8 920F003A */  lbu         $t7, 0x3A($s0)
/* 01BBBC 0041BBBC 24060000 */  addiu       $a2, $zero, 0x0
/* 01BBC0 0041BBC0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BBC4 0041BBC4 01E32821 */  addu        $a1, $t7, $v1
/* 01BBC8 0041BBC8 00A3082B */  sltu        $at, $a1, $v1
/* 01BBCC 0041BBCC 000F47C3 */  sra         $t0, $t7, 31
/* 01BBD0 0041BBD0 00282021 */  addu        $a0, $at, $t0
/* 01BBD4 0041BBD4 00822021 */  addu        $a0, $a0, $v0
/* 01BBD8 0041BBD8 0320F809 */  jalr        $t9
/* 01BBDC 0041BBDC 24070008 */   addiu      $a3, $zero, 0x8
/* 01BBE0 0041BBE0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BBE4 0041BBE4 920A0039 */  lbu         $t2, 0x39($s0)
/* 01BBE8 0041BBE8 24060000 */  addiu       $a2, $zero, 0x0
/* 01BBEC 0041BBEC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BBF0 0041BBF0 01432821 */  addu        $a1, $t2, $v1
/* 01BBF4 0041BBF4 00A3082B */  sltu        $at, $a1, $v1
/* 01BBF8 0041BBF8 000A67C3 */  sra         $t4, $t2, 31
/* 01BBFC 0041BBFC 002C2021 */  addu        $a0, $at, $t4
/* 01BC00 0041BC00 00822021 */  addu        $a0, $a0, $v0
/* 01BC04 0041BC04 0320F809 */  jalr        $t9
/* 01BC08 0041BC08 24070008 */   addiu      $a3, $zero, 0x8
/* 01BC0C 0041BC0C 920B0038 */  lbu         $t3, 0x38($s0)
/* 01BC10 0041BC10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BC14 0041BC14 24040000 */  addiu       $a0, $zero, 0x0
/* 01BC18 0041BC18 0163C821 */  addu        $t9, $t3, $v1
/* 01BC1C 0041BC1C 0323082B */  sltu        $at, $t9, $v1
/* 01BC20 0041BC20 000B77C3 */  sra         $t6, $t3, 31
/* 01BC24 0041BC24 002EC021 */  addu        $t8, $at, $t6
/* 01BC28 0041BC28 0302C021 */  addu        $t8, $t8, $v0
/* 01BC2C 0041BC2C AE380038 */  sw          $t8, 0x38($s1)
/* 01BC30 0041BC30 AE39003C */  sw          $t9, 0x3C($s1)
/* 01BC34 0041BC34 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BC38 0041BC38 92050037 */  lbu         $a1, 0x37($s0)
/* 01BC3C 0041BC3C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BC40 0041BC40 0320F809 */  jalr        $t9
/* 01BC44 0041BC44 24070008 */   addiu      $a3, $zero, 0x8
/* 01BC48 0041BC48 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BC4C 0041BC4C 92090036 */  lbu         $t1, 0x36($s0)
/* 01BC50 0041BC50 24060000 */  addiu       $a2, $zero, 0x0
/* 01BC54 0041BC54 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BC58 0041BC58 01232821 */  addu        $a1, $t1, $v1
/* 01BC5C 0041BC5C 00A3082B */  sltu        $at, $a1, $v1
/* 01BC60 0041BC60 000957C3 */  sra         $t2, $t1, 31
/* 01BC64 0041BC64 002A2021 */  addu        $a0, $at, $t2
/* 01BC68 0041BC68 00822021 */  addu        $a0, $a0, $v0
/* 01BC6C 0041BC6C 0320F809 */  jalr        $t9
/* 01BC70 0041BC70 24070008 */   addiu      $a3, $zero, 0x8
/* 01BC74 0041BC74 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BC78 0041BC78 920C0035 */  lbu         $t4, 0x35($s0)
/* 01BC7C 0041BC7C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BC80 0041BC80 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BC84 0041BC84 01832821 */  addu        $a1, $t4, $v1
/* 01BC88 0041BC88 00A3082B */  sltu        $at, $a1, $v1
/* 01BC8C 0041BC8C 000C77C3 */  sra         $t6, $t4, 31
/* 01BC90 0041BC90 002E2021 */  addu        $a0, $at, $t6
/* 01BC94 0041BC94 00822021 */  addu        $a0, $a0, $v0
/* 01BC98 0041BC98 0320F809 */  jalr        $t9
/* 01BC9C 0041BC9C 24070008 */   addiu      $a3, $zero, 0x8
/* 01BCA0 0041BCA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BCA4 0041BCA4 920D0034 */  lbu         $t5, 0x34($s0)
/* 01BCA8 0041BCA8 24060000 */  addiu       $a2, $zero, 0x0
/* 01BCAC 0041BCAC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BCB0 0041BCB0 01A32821 */  addu        $a1, $t5, $v1
/* 01BCB4 0041BCB4 00A3082B */  sltu        $at, $a1, $v1
/* 01BCB8 0041BCB8 000DC7C3 */  sra         $t8, $t5, 31
/* 01BCBC 0041BCBC 00382021 */  addu        $a0, $at, $t8
/* 01BCC0 0041BCC0 00822021 */  addu        $a0, $a0, $v0
/* 01BCC4 0041BCC4 0320F809 */  jalr        $t9
/* 01BCC8 0041BCC8 24070008 */   addiu      $a3, $zero, 0x8
/* 01BCCC 0041BCCC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BCD0 0041BCD0 92080033 */  lbu         $t0, 0x33($s0)
/* 01BCD4 0041BCD4 24060000 */  addiu       $a2, $zero, 0x0
/* 01BCD8 0041BCD8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BCDC 0041BCDC 01032821 */  addu        $a1, $t0, $v1
/* 01BCE0 0041BCE0 00A3082B */  sltu        $at, $a1, $v1
/* 01BCE4 0041BCE4 000857C3 */  sra         $t2, $t0, 31
/* 01BCE8 0041BCE8 002A2021 */  addu        $a0, $at, $t2
/* 01BCEC 0041BCEC 00822021 */  addu        $a0, $a0, $v0
/* 01BCF0 0041BCF0 0320F809 */  jalr        $t9
/* 01BCF4 0041BCF4 24070008 */   addiu      $a3, $zero, 0x8
/* 01BCF8 0041BCF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BCFC 0041BCFC 92090032 */  lbu         $t1, 0x32($s0)
/* 01BD00 0041BD00 24060000 */  addiu       $a2, $zero, 0x0
/* 01BD04 0041BD04 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BD08 0041BD08 01232821 */  addu        $a1, $t1, $v1
/* 01BD0C 0041BD0C 00A3082B */  sltu        $at, $a1, $v1
/* 01BD10 0041BD10 000967C3 */  sra         $t4, $t1, 31
/* 01BD14 0041BD14 002C2021 */  addu        $a0, $at, $t4
/* 01BD18 0041BD18 00822021 */  addu        $a0, $a0, $v0
/* 01BD1C 0041BD1C 0320F809 */  jalr        $t9
/* 01BD20 0041BD20 24070008 */   addiu      $a3, $zero, 0x8
/* 01BD24 0041BD24 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BD28 0041BD28 920E0031 */  lbu         $t6, 0x31($s0)
/* 01BD2C 0041BD2C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BD30 0041BD30 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BD34 0041BD34 01C32821 */  addu        $a1, $t6, $v1
/* 01BD38 0041BD38 00A3082B */  sltu        $at, $a1, $v1
/* 01BD3C 0041BD3C 000EC7C3 */  sra         $t8, $t6, 31
/* 01BD40 0041BD40 00382021 */  addu        $a0, $at, $t8
/* 01BD44 0041BD44 00822021 */  addu        $a0, $a0, $v0
/* 01BD48 0041BD48 0320F809 */  jalr        $t9
/* 01BD4C 0041BD4C 24070008 */   addiu      $a3, $zero, 0x8
/* 01BD50 0041BD50 920F0030 */  lbu         $t7, 0x30($s0)
/* 01BD54 0041BD54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BD58 0041BD58 24040000 */  addiu       $a0, $zero, 0x0
/* 01BD5C 0041BD5C 01E35821 */  addu        $t3, $t7, $v1
/* 01BD60 0041BD60 0163082B */  sltu        $at, $t3, $v1
/* 01BD64 0041BD64 000F47C3 */  sra         $t0, $t7, 31
/* 01BD68 0041BD68 00285021 */  addu        $t2, $at, $t0
/* 01BD6C 0041BD6C 01425021 */  addu        $t2, $t2, $v0
/* 01BD70 0041BD70 AE2A0030 */  sw          $t2, 0x30($s1)
/* 01BD74 0041BD74 AE2B0034 */  sw          $t3, 0x34($s1)
/* 01BD78 0041BD78 920C002F */  lbu         $t4, 0x2F($s0)
/* 01BD7C 0041BD7C 920E002E */  lbu         $t6, 0x2E($s0)
/* 01BD80 0041BD80 920F002D */  lbu         $t7, 0x2D($s0)
/* 01BD84 0041BD84 000C6A00 */  sll         $t5, $t4, 8
/* 01BD88 0041BD88 01AEC021 */  addu        $t8, $t5, $t6
/* 01BD8C 0041BD8C 920A002C */  lbu         $t2, 0x2C($s0)
/* 01BD90 0041BD90 0018CA00 */  sll         $t9, $t8, 8
/* 01BD94 0041BD94 032F4021 */  addu        $t0, $t9, $t7
/* 01BD98 0041BD98 00084A00 */  sll         $t1, $t0, 8
/* 01BD9C 0041BD9C 01495821 */  addu        $t3, $t2, $t1
/* 01BDA0 0041BDA0 AE2B002C */  sw          $t3, 0x2C($s1)
/* 01BDA4 0041BDA4 920C002B */  lbu         $t4, 0x2B($s0)
/* 01BDA8 0041BDA8 920E002A */  lbu         $t6, 0x2A($s0)
/* 01BDAC 0041BDAC 920F0029 */  lbu         $t7, 0x29($s0)
/* 01BDB0 0041BDB0 000C6A00 */  sll         $t5, $t4, 8
/* 01BDB4 0041BDB4 01AEC021 */  addu        $t8, $t5, $t6
/* 01BDB8 0041BDB8 92090028 */  lbu         $t1, 0x28($s0)
/* 01BDBC 0041BDBC 0018CA00 */  sll         $t9, $t8, 8
/* 01BDC0 0041BDC0 032F4021 */  addu        $t0, $t9, $t7
/* 01BDC4 0041BDC4 00085200 */  sll         $t2, $t0, 8
/* 01BDC8 0041BDC8 012A5821 */  addu        $t3, $t1, $t2
/* 01BDCC 0041BDCC AE2B0028 */  sw          $t3, 0x28($s1)
/* 01BDD0 0041BDD0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BDD4 0041BDD4 92050027 */  lbu         $a1, 0x27($s0)
/* 01BDD8 0041BDD8 24060000 */  addiu       $a2, $zero, 0x0
/* 01BDDC 0041BDDC 0320F809 */  jalr        $t9
/* 01BDE0 0041BDE0 24070008 */   addiu      $a3, $zero, 0x8
/* 01BDE4 0041BDE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BDE8 0041BDE8 920D0026 */  lbu         $t5, 0x26($s0)
/* 01BDEC 0041BDEC 24060000 */  addiu       $a2, $zero, 0x0
/* 01BDF0 0041BDF0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BDF4 0041BDF4 01A32821 */  addu        $a1, $t5, $v1
/* 01BDF8 0041BDF8 00A3082B */  sltu        $at, $a1, $v1
/* 01BDFC 0041BDFC 000D77C3 */  sra         $t6, $t5, 31
/* 01BE00 0041BE00 002E2021 */  addu        $a0, $at, $t6
/* 01BE04 0041BE04 00822021 */  addu        $a0, $a0, $v0
/* 01BE08 0041BE08 0320F809 */  jalr        $t9
/* 01BE0C 0041BE0C 24070008 */   addiu      $a3, $zero, 0x8
/* 01BE10 0041BE10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BE14 0041BE14 92180025 */  lbu         $t8, 0x25($s0)
/* 01BE18 0041BE18 24060000 */  addiu       $a2, $zero, 0x0
/* 01BE1C 0041BE1C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BE20 0041BE20 03032821 */  addu        $a1, $t8, $v1
/* 01BE24 0041BE24 00A3082B */  sltu        $at, $a1, $v1
/* 01BE28 0041BE28 001847C3 */  sra         $t0, $t8, 31
/* 01BE2C 0041BE2C 00282021 */  addu        $a0, $at, $t0
/* 01BE30 0041BE30 00822021 */  addu        $a0, $a0, $v0
/* 01BE34 0041BE34 0320F809 */  jalr        $t9
/* 01BE38 0041BE38 24070008 */   addiu      $a3, $zero, 0x8
/* 01BE3C 0041BE3C 92190024 */  lbu         $t9, 0x24($s0)
/* 01BE40 0041BE40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BE44 0041BE44 24060000 */  addiu       $a2, $zero, 0x0
/* 01BE48 0041BE48 001957C3 */  sra         $t2, $t9, 31
/* 01BE4C 0041BE4C 03232821 */  addu        $a1, $t9, $v1
/* 01BE50 0041BE50 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BE54 0041BE54 00A3082B */  sltu        $at, $a1, $v1
/* 01BE58 0041BE58 002A2021 */  addu        $a0, $at, $t2
/* 01BE5C 0041BE5C 00822021 */  addu        $a0, $a0, $v0
/* 01BE60 0041BE60 0320F809 */  jalr        $t9
/* 01BE64 0041BE64 24070008 */   addiu      $a3, $zero, 0x8
/* 01BE68 0041BE68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BE6C 0041BE6C 920C0023 */  lbu         $t4, 0x23($s0)
/* 01BE70 0041BE70 24060000 */  addiu       $a2, $zero, 0x0
/* 01BE74 0041BE74 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BE78 0041BE78 01832821 */  addu        $a1, $t4, $v1
/* 01BE7C 0041BE7C 00A3082B */  sltu        $at, $a1, $v1
/* 01BE80 0041BE80 000C77C3 */  sra         $t6, $t4, 31
/* 01BE84 0041BE84 002E2021 */  addu        $a0, $at, $t6
/* 01BE88 0041BE88 00822021 */  addu        $a0, $a0, $v0
/* 01BE8C 0041BE8C 0320F809 */  jalr        $t9
/* 01BE90 0041BE90 24070008 */   addiu      $a3, $zero, 0x8
/* 01BE94 0041BE94 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BE98 0041BE98 920D0022 */  lbu         $t5, 0x22($s0)
/* 01BE9C 0041BE9C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BEA0 0041BEA0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BEA4 0041BEA4 01A32821 */  addu        $a1, $t5, $v1
/* 01BEA8 0041BEA8 00A3082B */  sltu        $at, $a1, $v1
/* 01BEAC 0041BEAC 000DC7C3 */  sra         $t8, $t5, 31
/* 01BEB0 0041BEB0 00382021 */  addu        $a0, $at, $t8
/* 01BEB4 0041BEB4 00822021 */  addu        $a0, $a0, $v0
/* 01BEB8 0041BEB8 0320F809 */  jalr        $t9
/* 01BEBC 0041BEBC 24070008 */   addiu      $a3, $zero, 0x8
/* 01BEC0 0041BEC0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BEC4 0041BEC4 92080021 */  lbu         $t0, 0x21($s0)
/* 01BEC8 0041BEC8 24060000 */  addiu       $a2, $zero, 0x0
/* 01BECC 0041BECC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BED0 0041BED0 01032821 */  addu        $a1, $t0, $v1
/* 01BED4 0041BED4 00A3082B */  sltu        $at, $a1, $v1
/* 01BED8 0041BED8 000857C3 */  sra         $t2, $t0, 31
/* 01BEDC 0041BEDC 002A2021 */  addu        $a0, $at, $t2
/* 01BEE0 0041BEE0 00822021 */  addu        $a0, $a0, $v0
/* 01BEE4 0041BEE4 0320F809 */  jalr        $t9
/* 01BEE8 0041BEE8 24070008 */   addiu      $a3, $zero, 0x8
/* 01BEEC 0041BEEC 92090020 */  lbu         $t1, 0x20($s0)
/* 01BEF0 0041BEF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BEF4 0041BEF4 24040000 */  addiu       $a0, $zero, 0x0
/* 01BEF8 0041BEF8 01237821 */  addu        $t7, $t1, $v1
/* 01BEFC 0041BEFC 01E3082B */  sltu        $at, $t7, $v1
/* 01BF00 0041BF00 000967C3 */  sra         $t4, $t1, 31
/* 01BF04 0041BF04 002C7021 */  addu        $t6, $at, $t4
/* 01BF08 0041BF08 01C27021 */  addu        $t6, $t6, $v0
/* 01BF0C 0041BF0C AE2E0020 */  sw          $t6, 0x20($s1)
/* 01BF10 0041BF10 AE2F0024 */  sw          $t7, 0x24($s1)
/* 01BF14 0041BF14 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BF18 0041BF18 9205001F */  lbu         $a1, 0x1F($s0)
/* 01BF1C 0041BF1C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BF20 0041BF20 0320F809 */  jalr        $t9
/* 01BF24 0041BF24 24070008 */   addiu      $a3, $zero, 0x8
/* 01BF28 0041BF28 9219001E */  lbu         $t9, 0x1E($s0)
/* 01BF2C 0041BF2C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BF30 0041BF30 24060000 */  addiu       $a2, $zero, 0x0
/* 01BF34 0041BF34 001947C3 */  sra         $t0, $t9, 31
/* 01BF38 0041BF38 03232821 */  addu        $a1, $t9, $v1
/* 01BF3C 0041BF3C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BF40 0041BF40 00A3082B */  sltu        $at, $a1, $v1
/* 01BF44 0041BF44 00282021 */  addu        $a0, $at, $t0
/* 01BF48 0041BF48 00822021 */  addu        $a0, $a0, $v0
/* 01BF4C 0041BF4C 0320F809 */  jalr        $t9
/* 01BF50 0041BF50 24070008 */   addiu      $a3, $zero, 0x8
/* 01BF54 0041BF54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BF58 0041BF58 920A001D */  lbu         $t2, 0x1D($s0)
/* 01BF5C 0041BF5C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BF60 0041BF60 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BF64 0041BF64 01432821 */  addu        $a1, $t2, $v1
/* 01BF68 0041BF68 00A3082B */  sltu        $at, $a1, $v1
/* 01BF6C 0041BF6C 000A67C3 */  sra         $t4, $t2, 31
/* 01BF70 0041BF70 002C2021 */  addu        $a0, $at, $t4
/* 01BF74 0041BF74 00822021 */  addu        $a0, $a0, $v0
/* 01BF78 0041BF78 0320F809 */  jalr        $t9
/* 01BF7C 0041BF7C 24070008 */   addiu      $a3, $zero, 0x8
/* 01BF80 0041BF80 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BF84 0041BF84 920B001C */  lbu         $t3, 0x1C($s0)
/* 01BF88 0041BF88 24060000 */  addiu       $a2, $zero, 0x0
/* 01BF8C 0041BF8C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BF90 0041BF90 01632821 */  addu        $a1, $t3, $v1
/* 01BF94 0041BF94 00A3082B */  sltu        $at, $a1, $v1
/* 01BF98 0041BF98 000B77C3 */  sra         $t6, $t3, 31
/* 01BF9C 0041BF9C 002E2021 */  addu        $a0, $at, $t6
/* 01BFA0 0041BFA0 00822021 */  addu        $a0, $a0, $v0
/* 01BFA4 0041BFA4 0320F809 */  jalr        $t9
/* 01BFA8 0041BFA8 24070008 */   addiu      $a3, $zero, 0x8
/* 01BFAC 0041BFAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BFB0 0041BFB0 9218001B */  lbu         $t8, 0x1B($s0)
/* 01BFB4 0041BFB4 24060000 */  addiu       $a2, $zero, 0x0
/* 01BFB8 0041BFB8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BFBC 0041BFBC 03032821 */  addu        $a1, $t8, $v1
/* 01BFC0 0041BFC0 00A3082B */  sltu        $at, $a1, $v1
/* 01BFC4 0041BFC4 001847C3 */  sra         $t0, $t8, 31
/* 01BFC8 0041BFC8 00282021 */  addu        $a0, $at, $t0
/* 01BFCC 0041BFCC 00822021 */  addu        $a0, $a0, $v0
/* 01BFD0 0041BFD0 0320F809 */  jalr        $t9
/* 01BFD4 0041BFD4 24070008 */   addiu      $a3, $zero, 0x8
/* 01BFD8 0041BFD8 9219001A */  lbu         $t9, 0x1A($s0)
/* 01BFDC 0041BFDC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BFE0 0041BFE0 24060000 */  addiu       $a2, $zero, 0x0
/* 01BFE4 0041BFE4 001957C3 */  sra         $t2, $t9, 31
/* 01BFE8 0041BFE8 03232821 */  addu        $a1, $t9, $v1
/* 01BFEC 0041BFEC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BFF0 0041BFF0 00A3082B */  sltu        $at, $a1, $v1
/* 01BFF4 0041BFF4 002A2021 */  addu        $a0, $at, $t2
/* 01BFF8 0041BFF8 00822021 */  addu        $a0, $a0, $v0
/* 01BFFC 0041BFFC 0320F809 */  jalr        $t9
/* 01C000 0041C000 24070008 */   addiu      $a3, $zero, 0x8
/* 01C004 0041C004 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C008 0041C008 920C0019 */  lbu         $t4, 0x19($s0)
/* 01C00C 0041C00C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C010 0041C010 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C014 0041C014 01832821 */  addu        $a1, $t4, $v1
/* 01C018 0041C018 00A3082B */  sltu        $at, $a1, $v1
/* 01C01C 0041C01C 000C77C3 */  sra         $t6, $t4, 31
/* 01C020 0041C020 002E2021 */  addu        $a0, $at, $t6
/* 01C024 0041C024 00822021 */  addu        $a0, $a0, $v0
/* 01C028 0041C028 0320F809 */  jalr        $t9
/* 01C02C 0041C02C 24070008 */   addiu      $a3, $zero, 0x8
/* 01C030 0041C030 920D0018 */  lbu         $t5, 0x18($s0)
/* 01C034 0041C034 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C038 0041C038 24040000 */  addiu       $a0, $zero, 0x0
/* 01C03C 0041C03C 01A34821 */  addu        $t1, $t5, $v1
/* 01C040 0041C040 0123082B */  sltu        $at, $t1, $v1
/* 01C044 0041C044 000DC7C3 */  sra         $t8, $t5, 31
/* 01C048 0041C048 00384021 */  addu        $t0, $at, $t8
/* 01C04C 0041C04C 01024021 */  addu        $t0, $t0, $v0
/* 01C050 0041C050 AE280018 */  sw          $t0, 0x18($s1)
/* 01C054 0041C054 AE29001C */  sw          $t1, 0x1C($s1)
/* 01C058 0041C058 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C05C 0041C05C 92050017 */  lbu         $a1, 0x17($s0)
/* 01C060 0041C060 24060000 */  addiu       $a2, $zero, 0x0
/* 01C064 0041C064 0320F809 */  jalr        $t9
/* 01C068 0041C068 24070008 */   addiu      $a3, $zero, 0x8
/* 01C06C 0041C06C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C070 0041C070 920B0016 */  lbu         $t3, 0x16($s0)
/* 01C074 0041C074 24060000 */  addiu       $a2, $zero, 0x0
/* 01C078 0041C078 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C07C 0041C07C 01632821 */  addu        $a1, $t3, $v1
/* 01C080 0041C080 00A3082B */  sltu        $at, $a1, $v1
/* 01C084 0041C084 000B67C3 */  sra         $t4, $t3, 31
/* 01C088 0041C088 002C2021 */  addu        $a0, $at, $t4
/* 01C08C 0041C08C 00822021 */  addu        $a0, $a0, $v0
/* 01C090 0041C090 0320F809 */  jalr        $t9
/* 01C094 0041C094 24070008 */   addiu      $a3, $zero, 0x8
/* 01C098 0041C098 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C09C 0041C09C 920E0015 */  lbu         $t6, 0x15($s0)
/* 01C0A0 0041C0A0 24060000 */  addiu       $a2, $zero, 0x0
/* 01C0A4 0041C0A4 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C0A8 0041C0A8 01C32821 */  addu        $a1, $t6, $v1
/* 01C0AC 0041C0AC 00A3082B */  sltu        $at, $a1, $v1
/* 01C0B0 0041C0B0 000EC7C3 */  sra         $t8, $t6, 31
/* 01C0B4 0041C0B4 00382021 */  addu        $a0, $at, $t8
/* 01C0B8 0041C0B8 00822021 */  addu        $a0, $a0, $v0
/* 01C0BC 0041C0BC 0320F809 */  jalr        $t9
/* 01C0C0 0041C0C0 24070008 */   addiu      $a3, $zero, 0x8
/* 01C0C4 0041C0C4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C0C8 0041C0C8 920F0014 */  lbu         $t7, 0x14($s0)
/* 01C0CC 0041C0CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01C0D0 0041C0D0 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C0D4 0041C0D4 01E32821 */  addu        $a1, $t7, $v1
/* 01C0D8 0041C0D8 00A3082B */  sltu        $at, $a1, $v1
/* 01C0DC 0041C0DC 000F47C3 */  sra         $t0, $t7, 31
/* 01C0E0 0041C0E0 00282021 */  addu        $a0, $at, $t0
/* 01C0E4 0041C0E4 00822021 */  addu        $a0, $a0, $v0
/* 01C0E8 0041C0E8 0320F809 */  jalr        $t9
/* 01C0EC 0041C0EC 24070008 */   addiu      $a3, $zero, 0x8
/* 01C0F0 0041C0F0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C0F4 0041C0F4 920A0013 */  lbu         $t2, 0x13($s0)
/* 01C0F8 0041C0F8 24060000 */  addiu       $a2, $zero, 0x0
/* 01C0FC 0041C0FC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C100 0041C100 01432821 */  addu        $a1, $t2, $v1
/* 01C104 0041C104 00A3082B */  sltu        $at, $a1, $v1
/* 01C108 0041C108 000A67C3 */  sra         $t4, $t2, 31
/* 01C10C 0041C10C 002C2021 */  addu        $a0, $at, $t4
/* 01C110 0041C110 00822021 */  addu        $a0, $a0, $v0
/* 01C114 0041C114 0320F809 */  jalr        $t9
/* 01C118 0041C118 24070008 */   addiu      $a3, $zero, 0x8
/* 01C11C 0041C11C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C120 0041C120 920B0012 */  lbu         $t3, 0x12($s0)
/* 01C124 0041C124 24060000 */  addiu       $a2, $zero, 0x0
/* 01C128 0041C128 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C12C 0041C12C 01632821 */  addu        $a1, $t3, $v1
/* 01C130 0041C130 00A3082B */  sltu        $at, $a1, $v1
/* 01C134 0041C134 000B77C3 */  sra         $t6, $t3, 31
/* 01C138 0041C138 002E2021 */  addu        $a0, $at, $t6
/* 01C13C 0041C13C 00822021 */  addu        $a0, $a0, $v0
/* 01C140 0041C140 0320F809 */  jalr        $t9
/* 01C144 0041C144 24070008 */   addiu      $a3, $zero, 0x8
/* 01C148 0041C148 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C14C 0041C14C 92180011 */  lbu         $t8, 0x11($s0)
/* 01C150 0041C150 24060000 */  addiu       $a2, $zero, 0x0
/* 01C154 0041C154 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C158 0041C158 03032821 */  addu        $a1, $t8, $v1
/* 01C15C 0041C15C 00A3082B */  sltu        $at, $a1, $v1
/* 01C160 0041C160 001847C3 */  sra         $t0, $t8, 31
/* 01C164 0041C164 00282021 */  addu        $a0, $at, $t0
/* 01C168 0041C168 00822021 */  addu        $a0, $a0, $v0
/* 01C16C 0041C16C 0320F809 */  jalr        $t9
/* 01C170 0041C170 24070008 */   addiu      $a3, $zero, 0x8
/* 01C174 0041C174 92190010 */  lbu         $t9, 0x10($s0)
/* 01C178 0041C178 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C17C 0041C17C 24040000 */  addiu       $a0, $zero, 0x0
/* 01C180 0041C180 03236821 */  addu        $t5, $t9, $v1
/* 01C184 0041C184 01A3082B */  sltu        $at, $t5, $v1
/* 01C188 0041C188 001957C3 */  sra         $t2, $t9, 31
/* 01C18C 0041C18C 002A6021 */  addu        $t4, $at, $t2
/* 01C190 0041C190 01826021 */  addu        $t4, $t4, $v0
/* 01C194 0041C194 AE2C0010 */  sw          $t4, 0x10($s1)
/* 01C198 0041C198 AE2D0014 */  sw          $t5, 0x14($s1)
/* 01C19C 0041C19C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C1A0 0041C1A0 9205000F */  lbu         $a1, 0xF($s0)
/* 01C1A4 0041C1A4 24060000 */  addiu       $a2, $zero, 0x0
/* 01C1A8 0041C1A8 0320F809 */  jalr        $t9
/* 01C1AC 0041C1AC 24070008 */   addiu      $a3, $zero, 0x8
/* 01C1B0 0041C1B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C1B4 0041C1B4 920F000E */  lbu         $t7, 0xE($s0)
/* 01C1B8 0041C1B8 24060000 */  addiu       $a2, $zero, 0x0
/* 01C1BC 0041C1BC 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C1C0 0041C1C0 01E32821 */  addu        $a1, $t7, $v1
/* 01C1C4 0041C1C4 00A3082B */  sltu        $at, $a1, $v1
/* 01C1C8 0041C1C8 000FC7C3 */  sra         $t8, $t7, 31
/* 01C1CC 0041C1CC 00382021 */  addu        $a0, $at, $t8
/* 01C1D0 0041C1D0 00822021 */  addu        $a0, $a0, $v0
/* 01C1D4 0041C1D4 0320F809 */  jalr        $t9
/* 01C1D8 0041C1D8 24070008 */   addiu      $a3, $zero, 0x8
/* 01C1DC 0041C1DC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C1E0 0041C1E0 9208000D */  lbu         $t0, 0xD($s0)
/* 01C1E4 0041C1E4 24060000 */  addiu       $a2, $zero, 0x0
/* 01C1E8 0041C1E8 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C1EC 0041C1EC 01032821 */  addu        $a1, $t0, $v1
/* 01C1F0 0041C1F0 00A3082B */  sltu        $at, $a1, $v1
/* 01C1F4 0041C1F4 000857C3 */  sra         $t2, $t0, 31
/* 01C1F8 0041C1F8 002A2021 */  addu        $a0, $at, $t2
/* 01C1FC 0041C1FC 00822021 */  addu        $a0, $a0, $v0
/* 01C200 0041C200 0320F809 */  jalr        $t9
/* 01C204 0041C204 24070008 */   addiu      $a3, $zero, 0x8
/* 01C208 0041C208 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C20C 0041C20C 9209000C */  lbu         $t1, 0xC($s0)
/* 01C210 0041C210 24060000 */  addiu       $a2, $zero, 0x0
/* 01C214 0041C214 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C218 0041C218 01232821 */  addu        $a1, $t1, $v1
/* 01C21C 0041C21C 00A3082B */  sltu        $at, $a1, $v1
/* 01C220 0041C220 000967C3 */  sra         $t4, $t1, 31
/* 01C224 0041C224 002C2021 */  addu        $a0, $at, $t4
/* 01C228 0041C228 00822021 */  addu        $a0, $a0, $v0
/* 01C22C 0041C22C 0320F809 */  jalr        $t9
/* 01C230 0041C230 24070008 */   addiu      $a3, $zero, 0x8
/* 01C234 0041C234 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C238 0041C238 920E000B */  lbu         $t6, 0xB($s0)
/* 01C23C 0041C23C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C240 0041C240 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C244 0041C244 01C32821 */  addu        $a1, $t6, $v1
/* 01C248 0041C248 00A3082B */  sltu        $at, $a1, $v1
/* 01C24C 0041C24C 000EC7C3 */  sra         $t8, $t6, 31
/* 01C250 0041C250 00382021 */  addu        $a0, $at, $t8
/* 01C254 0041C254 00822021 */  addu        $a0, $a0, $v0
/* 01C258 0041C258 0320F809 */  jalr        $t9
/* 01C25C 0041C25C 24070008 */   addiu      $a3, $zero, 0x8
/* 01C260 0041C260 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C264 0041C264 920F000A */  lbu         $t7, 0xA($s0)
/* 01C268 0041C268 24060000 */  addiu       $a2, $zero, 0x0
/* 01C26C 0041C26C 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C270 0041C270 01E32821 */  addu        $a1, $t7, $v1
/* 01C274 0041C274 00A3082B */  sltu        $at, $a1, $v1
/* 01C278 0041C278 000F47C3 */  sra         $t0, $t7, 31
/* 01C27C 0041C27C 00282021 */  addu        $a0, $at, $t0
/* 01C280 0041C280 00822021 */  addu        $a0, $a0, $v0
/* 01C284 0041C284 0320F809 */  jalr        $t9
/* 01C288 0041C288 24070008 */   addiu      $a3, $zero, 0x8
/* 01C28C 0041C28C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C290 0041C290 920A0009 */  lbu         $t2, 0x9($s0)
/* 01C294 0041C294 24060000 */  addiu       $a2, $zero, 0x0
/* 01C298 0041C298 8F99811C */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C29C 0041C29C 01432821 */  addu        $a1, $t2, $v1
/* 01C2A0 0041C2A0 00A3082B */  sltu        $at, $a1, $v1
/* 01C2A4 0041C2A4 000A67C3 */  sra         $t4, $t2, 31
/* 01C2A8 0041C2A8 002C2021 */  addu        $a0, $at, $t4
/* 01C2AC 0041C2AC 00822021 */  addu        $a0, $a0, $v0
/* 01C2B0 0041C2B0 0320F809 */  jalr        $t9
/* 01C2B4 0041C2B4 24070008 */   addiu      $a3, $zero, 0x8
/* 01C2B8 0041C2B8 920B0008 */  lbu         $t3, 0x8($s0)
/* 01C2BC 0041C2BC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C2C0 0041C2C0 0251382B */  sltu        $a3, $s2, $s1
/* 01C2C4 0041C2C4 0163C821 */  addu        $t9, $t3, $v1
/* 01C2C8 0041C2C8 0323082B */  sltu        $at, $t9, $v1
/* 01C2CC 0041C2CC 000B77C3 */  sra         $t6, $t3, 31
/* 01C2D0 0041C2D0 002EC021 */  addu        $t8, $at, $t6
/* 01C2D4 0041C2D4 0302C021 */  addu        $t8, $t8, $v0
/* 01C2D8 0041C2D8 AE380008 */  sw          $t8, 0x8($s1)
/* 01C2DC 0041C2DC AE39000C */  sw          $t9, 0xC($s1)
/* 01C2E0 0041C2E0 92080007 */  lbu         $t0, 0x7($s0)
/* 01C2E4 0041C2E4 920A0006 */  lbu         $t2, 0x6($s0)
/* 01C2E8 0041C2E8 920B0005 */  lbu         $t3, 0x5($s0)
/* 01C2EC 0041C2EC 00084A00 */  sll         $t1, $t0, 8
/* 01C2F0 0041C2F0 012A6021 */  addu        $t4, $t1, $t2
/* 01C2F4 0041C2F4 92180004 */  lbu         $t8, 0x4($s0)
/* 01C2F8 0041C2F8 000C6A00 */  sll         $t5, $t4, 8
/* 01C2FC 0041C2FC 01AB7021 */  addu        $t6, $t5, $t3
/* 01C300 0041C300 000E7A00 */  sll         $t7, $t6, 8
/* 01C304 0041C304 030FC821 */  addu        $t9, $t8, $t7
/* 01C308 0041C308 AE390004 */  sw          $t9, 0x4($s1)
/* 01C30C 0041C30C 92080003 */  lbu         $t0, 0x3($s0)
/* 01C310 0041C310 920A0002 */  lbu         $t2, 0x2($s0)
/* 01C314 0041C314 920B0001 */  lbu         $t3, 0x1($s0)
/* 01C318 0041C318 00084A00 */  sll         $t1, $t0, 8
/* 01C31C 0041C31C 012A6021 */  addu        $t4, $t1, $t2
/* 01C320 0041C320 920F0000 */  lbu         $t7, 0x0($s0)
/* 01C324 0041C324 000C6A00 */  sll         $t5, $t4, 8
/* 01C328 0041C328 01AB7021 */  addu        $t6, $t5, $t3
/* 01C32C 0041C32C 000EC200 */  sll         $t8, $t6, 8
/* 01C330 0041C330 01F8C821 */  addu        $t9, $t7, $t8
/* 01C334 0041C334 2631FFC0 */  addiu       $s1, $s1, -0x40
/* 01C338 0041C338 14E0FDEB */  bnez        $a3, .L0041BAE8
/* 01C33C 0041C33C AE390040 */   sw         $t9, 0x40($s1)
.L0041C340:
/* 01C340 0041C340 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01C344 0041C344 8FB00014 */  lw          $s0, 0x14($sp)
/* 01C348 0041C348 8FB10018 */  lw          $s1, 0x18($sp)
/* 01C34C 0041C34C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01C350 0041C350 03E00008 */  jr          $ra
/* 01C354 0041C354 27BD0028 */   addiu      $sp, $sp, 0x28
