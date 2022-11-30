glabel swap_hdr # 497
/* 02BA40 0042BA40 AFA50004 */  sw          $a1, 0x4($sp)
/* 02BA44 0042BA44 84830000 */  lh          $v1, 0x0($a0)
/* 02BA48 0042BA48 84850002 */  lh          $a1, 0x2($a0)
/* 02BA4C 0042BA4C 8C860004 */  lw          $a2, 0x4($a0)
/* 02BA50 0042BA50 3078FFFF */  andi        $t8, $v1, 0xFFFF
/* 02BA54 0042BA54 0018CA02 */  srl         $t9, $t8, 8
/* 02BA58 0042BA58 00037A00 */  sll         $t7, $v1, 8
/* 02BA5C 0042BA5C 01F94825 */  or          $t1, $t7, $t9
/* 02BA60 0042BA60 30ACFFFF */  andi        $t4, $a1, 0xFFFF
/* 02BA64 0042BA64 3C0200FF */  lui         $v0, (0xFF0000 >> 16)
/* 02BA68 0042BA68 000C6A02 */  srl         $t5, $t4, 8
/* 02BA6C 0042BA6C 00055A00 */  sll         $t3, $a1, 8
/* 02BA70 0042BA70 00067A00 */  sll         $t7, $a2, 8
/* 02BA74 0042BA74 8C870008 */  lw          $a3, 0x8($a0)
/* 02BA78 0042BA78 A4890000 */  sh          $t1, 0x0($a0)
/* 02BA7C 0042BA7C 016D7025 */  or          $t6, $t3, $t5
/* 02BA80 0042BA80 01E2C824 */  and         $t9, $t7, $v0
/* 02BA84 0042BA84 0006C600 */  sll         $t8, $a2, 24
/* 02BA88 0042BA88 03194825 */  or          $t1, $t8, $t9
/* 02BA8C 0042BA8C 00065203 */  sra         $t2, $a2, 8
/* 02BA90 0042BA90 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BA94 0042BA94 A48E0002 */  sh          $t6, 0x2($a0)
/* 02BA98 0042BA98 012C5825 */  or          $t3, $t1, $t4
/* 02BA9C 0042BA9C 00066E02 */  srl         $t5, $a2, 24
/* 02BAA0 0042BAA0 0007C200 */  sll         $t8, $a3, 8
/* 02BAA4 0042BAA4 8C88000C */  lw          $t0, 0xC($a0)
/* 02BAA8 0042BAA8 016D7025 */  or          $t6, $t3, $t5
/* 02BAAC 0042BAAC 0302C824 */  and         $t9, $t8, $v0
/* 02BAB0 0042BAB0 00077E00 */  sll         $t7, $a3, 24
/* 02BAB4 0042BAB4 01F95025 */  or          $t2, $t7, $t9
/* 02BAB8 0042BAB8 00074A03 */  sra         $t1, $a3, 8
/* 02BABC 0042BABC 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BAC0 0042BAC0 AC8E0004 */  sw          $t6, 0x4($a0)
/* 02BAC4 0042BAC4 014C5825 */  or          $t3, $t2, $t4
/* 02BAC8 0042BAC8 00076E02 */  srl         $t5, $a3, 24
/* 02BACC 0042BACC 00087A00 */  sll         $t7, $t0, 8
/* 02BAD0 0042BAD0 8C830010 */  lw          $v1, 0x10($a0)
/* 02BAD4 0042BAD4 016D7025 */  or          $t6, $t3, $t5
/* 02BAD8 0042BAD8 01E2C824 */  and         $t9, $t7, $v0
/* 02BADC 0042BADC 0008C600 */  sll         $t8, $t0, 24
/* 02BAE0 0042BAE0 03194825 */  or          $t1, $t8, $t9
/* 02BAE4 0042BAE4 00085203 */  sra         $t2, $t0, 8
/* 02BAE8 0042BAE8 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BAEC 0042BAEC AC8E0008 */  sw          $t6, 0x8($a0)
/* 02BAF0 0042BAF0 012C5825 */  or          $t3, $t1, $t4
/* 02BAF4 0042BAF4 00086E02 */  srl         $t5, $t0, 24
/* 02BAF8 0042BAF8 0003C200 */  sll         $t8, $v1, 8
/* 02BAFC 0042BAFC 8C850014 */  lw          $a1, 0x14($a0)
/* 02BB00 0042BB00 016D7025 */  or          $t6, $t3, $t5
/* 02BB04 0042BB04 0302C824 */  and         $t9, $t8, $v0
/* 02BB08 0042BB08 00037E00 */  sll         $t7, $v1, 24
/* 02BB0C 0042BB0C 01F95025 */  or          $t2, $t7, $t9
/* 02BB10 0042BB10 00034A03 */  sra         $t1, $v1, 8
/* 02BB14 0042BB14 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BB18 0042BB18 AC8E000C */  sw          $t6, 0xC($a0)
/* 02BB1C 0042BB1C 014C5825 */  or          $t3, $t2, $t4
/* 02BB20 0042BB20 00036E02 */  srl         $t5, $v1, 24
/* 02BB24 0042BB24 00057A00 */  sll         $t7, $a1, 8
/* 02BB28 0042BB28 8C860018 */  lw          $a2, 0x18($a0)
/* 02BB2C 0042BB2C 016D7025 */  or          $t6, $t3, $t5
/* 02BB30 0042BB30 01E2C824 */  and         $t9, $t7, $v0
/* 02BB34 0042BB34 0005C600 */  sll         $t8, $a1, 24
/* 02BB38 0042BB38 03194825 */  or          $t1, $t8, $t9
/* 02BB3C 0042BB3C 00055203 */  sra         $t2, $a1, 8
/* 02BB40 0042BB40 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BB44 0042BB44 AC8E0010 */  sw          $t6, 0x10($a0)
/* 02BB48 0042BB48 012C5825 */  or          $t3, $t1, $t4
/* 02BB4C 0042BB4C 00056E02 */  srl         $t5, $a1, 24
/* 02BB50 0042BB50 0006C200 */  sll         $t8, $a2, 8
/* 02BB54 0042BB54 8C87001C */  lw          $a3, 0x1C($a0)
/* 02BB58 0042BB58 016D7025 */  or          $t6, $t3, $t5
/* 02BB5C 0042BB5C 0302C824 */  and         $t9, $t8, $v0
/* 02BB60 0042BB60 00067E00 */  sll         $t7, $a2, 24
/* 02BB64 0042BB64 01F95025 */  or          $t2, $t7, $t9
/* 02BB68 0042BB68 00064A03 */  sra         $t1, $a2, 8
/* 02BB6C 0042BB6C 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BB70 0042BB70 AC8E0014 */  sw          $t6, 0x14($a0)
/* 02BB74 0042BB74 014C5825 */  or          $t3, $t2, $t4
/* 02BB78 0042BB78 00066E02 */  srl         $t5, $a2, 24
/* 02BB7C 0042BB7C 00077A00 */  sll         $t7, $a3, 8
/* 02BB80 0042BB80 8C830020 */  lw          $v1, 0x20($a0)
/* 02BB84 0042BB84 016D7025 */  or          $t6, $t3, $t5
/* 02BB88 0042BB88 01E2C824 */  and         $t9, $t7, $v0
/* 02BB8C 0042BB8C 0007C600 */  sll         $t8, $a3, 24
/* 02BB90 0042BB90 03194825 */  or          $t1, $t8, $t9
/* 02BB94 0042BB94 00075203 */  sra         $t2, $a3, 8
/* 02BB98 0042BB98 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BB9C 0042BB9C AC8E0018 */  sw          $t6, 0x18($a0)
/* 02BBA0 0042BBA0 012C5825 */  or          $t3, $t1, $t4
/* 02BBA4 0042BBA4 00076E02 */  srl         $t5, $a3, 24
/* 02BBA8 0042BBA8 0003C200 */  sll         $t8, $v1, 8
/* 02BBAC 0042BBAC 8C850024 */  lw          $a1, 0x24($a0)
/* 02BBB0 0042BBB0 016D7025 */  or          $t6, $t3, $t5
/* 02BBB4 0042BBB4 0302C824 */  and         $t9, $t8, $v0
/* 02BBB8 0042BBB8 00037E00 */  sll         $t7, $v1, 24
/* 02BBBC 0042BBBC 01F95025 */  or          $t2, $t7, $t9
/* 02BBC0 0042BBC0 00034A03 */  sra         $t1, $v1, 8
/* 02BBC4 0042BBC4 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BBC8 0042BBC8 AC8E001C */  sw          $t6, 0x1C($a0)
/* 02BBCC 0042BBCC 014C5825 */  or          $t3, $t2, $t4
/* 02BBD0 0042BBD0 00036E02 */  srl         $t5, $v1, 24
/* 02BBD4 0042BBD4 00057A00 */  sll         $t7, $a1, 8
/* 02BBD8 0042BBD8 8C860028 */  lw          $a2, 0x28($a0)
/* 02BBDC 0042BBDC 016D7025 */  or          $t6, $t3, $t5
/* 02BBE0 0042BBE0 01E2C824 */  and         $t9, $t7, $v0
/* 02BBE4 0042BBE4 0005C600 */  sll         $t8, $a1, 24
/* 02BBE8 0042BBE8 03194825 */  or          $t1, $t8, $t9
/* 02BBEC 0042BBEC 00055203 */  sra         $t2, $a1, 8
/* 02BBF0 0042BBF0 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BBF4 0042BBF4 AC8E0020 */  sw          $t6, 0x20($a0)
/* 02BBF8 0042BBF8 012C5825 */  or          $t3, $t1, $t4
/* 02BBFC 0042BBFC 00056E02 */  srl         $t5, $a1, 24
/* 02BC00 0042BC00 0006C200 */  sll         $t8, $a2, 8
/* 02BC04 0042BC04 8C87002C */  lw          $a3, 0x2C($a0)
/* 02BC08 0042BC08 016D7025 */  or          $t6, $t3, $t5
/* 02BC0C 0042BC0C 0302C824 */  and         $t9, $t8, $v0
/* 02BC10 0042BC10 00067E00 */  sll         $t7, $a2, 24
/* 02BC14 0042BC14 01F95025 */  or          $t2, $t7, $t9
/* 02BC18 0042BC18 00064A03 */  sra         $t1, $a2, 8
/* 02BC1C 0042BC1C 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BC20 0042BC20 AC8E0024 */  sw          $t6, 0x24($a0)
/* 02BC24 0042BC24 014C5825 */  or          $t3, $t2, $t4
/* 02BC28 0042BC28 00066E02 */  srl         $t5, $a2, 24
/* 02BC2C 0042BC2C 00077A00 */  sll         $t7, $a3, 8
/* 02BC30 0042BC30 8C830030 */  lw          $v1, 0x30($a0)
/* 02BC34 0042BC34 016D7025 */  or          $t6, $t3, $t5
/* 02BC38 0042BC38 01E2C824 */  and         $t9, $t7, $v0
/* 02BC3C 0042BC3C 0007C600 */  sll         $t8, $a3, 24
/* 02BC40 0042BC40 03194825 */  or          $t1, $t8, $t9
/* 02BC44 0042BC44 00075203 */  sra         $t2, $a3, 8
/* 02BC48 0042BC48 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BC4C 0042BC4C AC8E0028 */  sw          $t6, 0x28($a0)
/* 02BC50 0042BC50 012C5825 */  or          $t3, $t1, $t4
/* 02BC54 0042BC54 00076E02 */  srl         $t5, $a3, 24
/* 02BC58 0042BC58 0003C200 */  sll         $t8, $v1, 8
/* 02BC5C 0042BC5C 8C850034 */  lw          $a1, 0x34($a0)
/* 02BC60 0042BC60 016D7025 */  or          $t6, $t3, $t5
/* 02BC64 0042BC64 0302C824 */  and         $t9, $t8, $v0
/* 02BC68 0042BC68 00037E00 */  sll         $t7, $v1, 24
/* 02BC6C 0042BC6C 01F95025 */  or          $t2, $t7, $t9
/* 02BC70 0042BC70 00034A03 */  sra         $t1, $v1, 8
/* 02BC74 0042BC74 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BC78 0042BC78 AC8E002C */  sw          $t6, 0x2C($a0)
/* 02BC7C 0042BC7C 014C5825 */  or          $t3, $t2, $t4
/* 02BC80 0042BC80 00036E02 */  srl         $t5, $v1, 24
/* 02BC84 0042BC84 00057A00 */  sll         $t7, $a1, 8
/* 02BC88 0042BC88 8C860038 */  lw          $a2, 0x38($a0)
/* 02BC8C 0042BC8C 016D7025 */  or          $t6, $t3, $t5
/* 02BC90 0042BC90 01E2C824 */  and         $t9, $t7, $v0
/* 02BC94 0042BC94 0005C600 */  sll         $t8, $a1, 24
/* 02BC98 0042BC98 03194825 */  or          $t1, $t8, $t9
/* 02BC9C 0042BC9C 00055203 */  sra         $t2, $a1, 8
/* 02BCA0 0042BCA0 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BCA4 0042BCA4 AC8E0030 */  sw          $t6, 0x30($a0)
/* 02BCA8 0042BCA8 012C5825 */  or          $t3, $t1, $t4
/* 02BCAC 0042BCAC 00056E02 */  srl         $t5, $a1, 24
/* 02BCB0 0042BCB0 0006C200 */  sll         $t8, $a2, 8
/* 02BCB4 0042BCB4 8C87003C */  lw          $a3, 0x3C($a0)
/* 02BCB8 0042BCB8 016D7025 */  or          $t6, $t3, $t5
/* 02BCBC 0042BCBC 0302C824 */  and         $t9, $t8, $v0
/* 02BCC0 0042BCC0 00067E00 */  sll         $t7, $a2, 24
/* 02BCC4 0042BCC4 01F95025 */  or          $t2, $t7, $t9
/* 02BCC8 0042BCC8 00064A03 */  sra         $t1, $a2, 8
/* 02BCCC 0042BCCC 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BCD0 0042BCD0 AC8E0034 */  sw          $t6, 0x34($a0)
/* 02BCD4 0042BCD4 014C5825 */  or          $t3, $t2, $t4
/* 02BCD8 0042BCD8 00066E02 */  srl         $t5, $a2, 24
/* 02BCDC 0042BCDC 00077A00 */  sll         $t7, $a3, 8
/* 02BCE0 0042BCE0 8C830040 */  lw          $v1, 0x40($a0)
/* 02BCE4 0042BCE4 016D7025 */  or          $t6, $t3, $t5
/* 02BCE8 0042BCE8 01E2C824 */  and         $t9, $t7, $v0
/* 02BCEC 0042BCEC 0007C600 */  sll         $t8, $a3, 24
/* 02BCF0 0042BCF0 03194825 */  or          $t1, $t8, $t9
/* 02BCF4 0042BCF4 00075203 */  sra         $t2, $a3, 8
/* 02BCF8 0042BCF8 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BCFC 0042BCFC AC8E0038 */  sw          $t6, 0x38($a0)
/* 02BD00 0042BD00 012C5825 */  or          $t3, $t1, $t4
/* 02BD04 0042BD04 00076E02 */  srl         $t5, $a3, 24
/* 02BD08 0042BD08 0003C200 */  sll         $t8, $v1, 8
/* 02BD0C 0042BD0C 8C850044 */  lw          $a1, 0x44($a0)
/* 02BD10 0042BD10 016D7025 */  or          $t6, $t3, $t5
/* 02BD14 0042BD14 0302C824 */  and         $t9, $t8, $v0
/* 02BD18 0042BD18 00037E00 */  sll         $t7, $v1, 24
/* 02BD1C 0042BD1C 01F95025 */  or          $t2, $t7, $t9
/* 02BD20 0042BD20 00034A03 */  sra         $t1, $v1, 8
/* 02BD24 0042BD24 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BD28 0042BD28 AC8E003C */  sw          $t6, 0x3C($a0)
/* 02BD2C 0042BD2C 014C5825 */  or          $t3, $t2, $t4
/* 02BD30 0042BD30 00036E02 */  srl         $t5, $v1, 24
/* 02BD34 0042BD34 00057A00 */  sll         $t7, $a1, 8
/* 02BD38 0042BD38 8C860048 */  lw          $a2, 0x48($a0)
/* 02BD3C 0042BD3C 016D7025 */  or          $t6, $t3, $t5
/* 02BD40 0042BD40 01E2C824 */  and         $t9, $t7, $v0
/* 02BD44 0042BD44 0005C600 */  sll         $t8, $a1, 24
/* 02BD48 0042BD48 03194825 */  or          $t1, $t8, $t9
/* 02BD4C 0042BD4C 00055203 */  sra         $t2, $a1, 8
/* 02BD50 0042BD50 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BD54 0042BD54 AC8E0040 */  sw          $t6, 0x40($a0)
/* 02BD58 0042BD58 012C5825 */  or          $t3, $t1, $t4
/* 02BD5C 0042BD5C 00056E02 */  srl         $t5, $a1, 24
/* 02BD60 0042BD60 0006C200 */  sll         $t8, $a2, 8
/* 02BD64 0042BD64 8C87004C */  lw          $a3, 0x4C($a0)
/* 02BD68 0042BD68 016D7025 */  or          $t6, $t3, $t5
/* 02BD6C 0042BD6C 0302C824 */  and         $t9, $t8, $v0
/* 02BD70 0042BD70 00067E00 */  sll         $t7, $a2, 24
/* 02BD74 0042BD74 01F95025 */  or          $t2, $t7, $t9
/* 02BD78 0042BD78 00064A03 */  sra         $t1, $a2, 8
/* 02BD7C 0042BD7C 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BD80 0042BD80 AC8E0044 */  sw          $t6, 0x44($a0)
/* 02BD84 0042BD84 014C5825 */  or          $t3, $t2, $t4
/* 02BD88 0042BD88 00066E02 */  srl         $t5, $a2, 24
/* 02BD8C 0042BD8C 00077A00 */  sll         $t7, $a3, 8
/* 02BD90 0042BD90 8C830050 */  lw          $v1, 0x50($a0)
/* 02BD94 0042BD94 016D7025 */  or          $t6, $t3, $t5
/* 02BD98 0042BD98 01E2C824 */  and         $t9, $t7, $v0
/* 02BD9C 0042BD9C 0007C600 */  sll         $t8, $a3, 24
/* 02BDA0 0042BDA0 03194825 */  or          $t1, $t8, $t9
/* 02BDA4 0042BDA4 00075203 */  sra         $t2, $a3, 8
/* 02BDA8 0042BDA8 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BDAC 0042BDAC AC8E0048 */  sw          $t6, 0x48($a0)
/* 02BDB0 0042BDB0 012C5825 */  or          $t3, $t1, $t4
/* 02BDB4 0042BDB4 00076E02 */  srl         $t5, $a3, 24
/* 02BDB8 0042BDB8 0003C200 */  sll         $t8, $v1, 8
/* 02BDBC 0042BDBC 8C850054 */  lw          $a1, 0x54($a0)
/* 02BDC0 0042BDC0 016D7025 */  or          $t6, $t3, $t5
/* 02BDC4 0042BDC4 0302C824 */  and         $t9, $t8, $v0
/* 02BDC8 0042BDC8 00037E00 */  sll         $t7, $v1, 24
/* 02BDCC 0042BDCC 01F95025 */  or          $t2, $t7, $t9
/* 02BDD0 0042BDD0 00034A03 */  sra         $t1, $v1, 8
/* 02BDD4 0042BDD4 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BDD8 0042BDD8 AC8E004C */  sw          $t6, 0x4C($a0)
/* 02BDDC 0042BDDC 014C5825 */  or          $t3, $t2, $t4
/* 02BDE0 0042BDE0 00036E02 */  srl         $t5, $v1, 24
/* 02BDE4 0042BDE4 00057A00 */  sll         $t7, $a1, 8
/* 02BDE8 0042BDE8 8C860058 */  lw          $a2, 0x58($a0)
/* 02BDEC 0042BDEC 016D7025 */  or          $t6, $t3, $t5
/* 02BDF0 0042BDF0 01E2C824 */  and         $t9, $t7, $v0
/* 02BDF4 0042BDF4 0005C600 */  sll         $t8, $a1, 24
/* 02BDF8 0042BDF8 03194825 */  or          $t1, $t8, $t9
/* 02BDFC 0042BDFC 00055203 */  sra         $t2, $a1, 8
/* 02BE00 0042BE00 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BE04 0042BE04 AC8E0050 */  sw          $t6, 0x50($a0)
/* 02BE08 0042BE08 012C5825 */  or          $t3, $t1, $t4
/* 02BE0C 0042BE0C 00056E02 */  srl         $t5, $a1, 24
/* 02BE10 0042BE10 0006C200 */  sll         $t8, $a2, 8
/* 02BE14 0042BE14 8C87005C */  lw          $a3, 0x5C($a0)
/* 02BE18 0042BE18 016D7025 */  or          $t6, $t3, $t5
/* 02BE1C 0042BE1C 0302C824 */  and         $t9, $t8, $v0
/* 02BE20 0042BE20 00067E00 */  sll         $t7, $a2, 24
/* 02BE24 0042BE24 01F95025 */  or          $t2, $t7, $t9
/* 02BE28 0042BE28 00064A03 */  sra         $t1, $a2, 8
/* 02BE2C 0042BE2C 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 02BE30 0042BE30 AC8E0054 */  sw          $t6, 0x54($a0)
/* 02BE34 0042BE34 014C5825 */  or          $t3, $t2, $t4
/* 02BE38 0042BE38 00066E02 */  srl         $t5, $a2, 24
/* 02BE3C 0042BE3C 016D7025 */  or          $t6, $t3, $t5
/* 02BE40 0042BE40 00077A00 */  sll         $t7, $a3, 8
/* 02BE44 0042BE44 01E2C824 */  and         $t9, $t7, $v0
/* 02BE48 0042BE48 00075203 */  sra         $t2, $a3, 8
/* 02BE4C 0042BE4C 0007C600 */  sll         $t8, $a3, 24
/* 02BE50 0042BE50 03194825 */  or          $t1, $t8, $t9
/* 02BE54 0042BE54 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 02BE58 0042BE58 AC8E0058 */  sw          $t6, 0x58($a0)
/* 02BE5C 0042BE5C 012C5825 */  or          $t3, $t1, $t4
/* 02BE60 0042BE60 00076E02 */  srl         $t5, $a3, 24
/* 02BE64 0042BE64 016D7025 */  or          $t6, $t3, $t5
/* 02BE68 0042BE68 03E00008 */  jr          $ra
/* 02BE6C 0042BE6C AC8E005C */   sw         $t6, 0x5C($a0)
