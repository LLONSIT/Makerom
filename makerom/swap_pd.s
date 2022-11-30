glabel swap_pd # 502
/* 02CBF8 0042CBF8 18A0009C */  blez        $a1, .L0042CE6C
/* 02CBFC 0042CBFC AFA60008 */   sw         $a2, 0x8($sp)
/* 02CC00 0042CC00 00057080 */  sll         $t6, $a1, 2
/* 02CC04 0042CC04 01C57023 */  subu        $t6, $t6, $a1
/* 02CC08 0042CC08 000E7080 */  sll         $t6, $t6, 2
/* 02CC0C 0042CC0C 01C57021 */  addu        $t6, $t6, $a1
/* 02CC10 0042CC10 000E7080 */  sll         $t6, $t6, 2
/* 02CC14 0042CC14 01C43821 */  addu        $a3, $t6, $a0
/* 02CC18 0042CC18 00801025 */  move        $v0, $a0
/* 02CC1C 0042CC1C 3C0900FF */  lui         $t1, (0xFF0000 >> 16)
/* 02CC20 0042CC20 3C0800FF */  lui         $t0, (0xFF0000 >> 16)
.L0042CC24:
/* 02CC24 0042CC24 8C430000 */  lw          $v1, 0x0($v0)
/* 02CC28 0042CC28 8C440004 */  lw          $a0, 0x4($v0)
/* 02CC2C 0042CC2C 24420034 */  addiu       $v0, $v0, 0x34
/* 02CC30 0042CC30 00037E02 */  srl         $t7, $v1, 24
/* 02CC34 0042CC34 0003C600 */  sll         $t8, $v1, 24
/* 02CC38 0042CC38 00035200 */  sll         $t2, $v1, 8
/* 02CC3C 0042CC3C 01485824 */  and         $t3, $t2, $t0
/* 02CC40 0042CC40 01F8C825 */  or          $t9, $t7, $t8
/* 02CC44 0042CC44 00036A02 */  srl         $t5, $v1, 8
/* 02CC48 0042CC48 31AEFF00 */  andi        $t6, $t5, 0xFF00
/* 02CC4C 0042CC4C 032B6025 */  or          $t4, $t9, $t3
/* 02CC50 0042CC50 018E7825 */  or          $t7, $t4, $t6
/* 02CC54 0042CC54 00045200 */  sll         $t2, $a0, 8
/* 02CC58 0042CC58 8C43FFD4 */  lw          $v1, -0x2C($v0)
/* 02CC5C 0042CC5C 0149C824 */  and         $t9, $t2, $t1
/* 02CC60 0042CC60 00046A03 */  sra         $t5, $a0, 8
/* 02CC64 0042CC64 0004C600 */  sll         $t8, $a0, 24
/* 02CC68 0042CC68 AC4FFFCC */  sw          $t7, -0x34($v0)
/* 02CC6C 0042CC6C 03195825 */  or          $t3, $t8, $t9
/* 02CC70 0042CC70 31ACFF00 */  andi        $t4, $t5, 0xFF00
/* 02CC74 0042CC74 016C7025 */  or          $t6, $t3, $t4
/* 02CC78 0042CC78 00047E02 */  srl         $t7, $a0, 24
/* 02CC7C 0042CC7C 01EE5025 */  or          $t2, $t7, $t6
/* 02CC80 0042CC80 0003CA00 */  sll         $t9, $v1, 8
/* 02CC84 0042CC84 8C44FFD8 */  lw          $a0, -0x28($v0)
/* 02CC88 0042CC88 03296824 */  and         $t5, $t9, $t1
/* 02CC8C 0042CC8C 00036203 */  sra         $t4, $v1, 8
/* 02CC90 0042CC90 0003C600 */  sll         $t8, $v1, 24
/* 02CC94 0042CC94 AC4AFFD0 */  sw          $t2, -0x30($v0)
/* 02CC98 0042CC98 030D5825 */  or          $t3, $t8, $t5
/* 02CC9C 0042CC9C 318FFF00 */  andi        $t7, $t4, 0xFF00
/* 02CCA0 0042CCA0 016F7025 */  or          $t6, $t3, $t7
/* 02CCA4 0042CCA4 00035602 */  srl         $t2, $v1, 24
/* 02CCA8 0042CCA8 014EC825 */  or          $t9, $t2, $t6
/* 02CCAC 0042CCAC 00046A00 */  sll         $t5, $a0, 8
/* 02CCB0 0042CCB0 8C43FFDC */  lw          $v1, -0x24($v0)
/* 02CCB4 0042CCB4 01A96024 */  and         $t4, $t5, $t1
/* 02CCB8 0042CCB8 00047A03 */  sra         $t7, $a0, 8
/* 02CCBC 0042CCBC 0004C600 */  sll         $t8, $a0, 24
/* 02CCC0 0042CCC0 AC59FFD4 */  sw          $t9, -0x2C($v0)
/* 02CCC4 0042CCC4 030C5825 */  or          $t3, $t8, $t4
/* 02CCC8 0042CCC8 31EAFF00 */  andi        $t2, $t7, 0xFF00
/* 02CCCC 0042CCCC 016A7025 */  or          $t6, $t3, $t2
/* 02CCD0 0042CCD0 0004CE02 */  srl         $t9, $a0, 24
/* 02CCD4 0042CCD4 032E6825 */  or          $t5, $t9, $t6
/* 02CCD8 0042CCD8 00036200 */  sll         $t4, $v1, 8
/* 02CCDC 0042CCDC 8C44FFE0 */  lw          $a0, -0x20($v0)
/* 02CCE0 0042CCE0 01897824 */  and         $t7, $t4, $t1
/* 02CCE4 0042CCE4 00035203 */  sra         $t2, $v1, 8
/* 02CCE8 0042CCE8 0003C600 */  sll         $t8, $v1, 24
/* 02CCEC 0042CCEC AC4DFFD8 */  sw          $t5, -0x28($v0)
/* 02CCF0 0042CCF0 030F5825 */  or          $t3, $t8, $t7
/* 02CCF4 0042CCF4 3159FF00 */  andi        $t9, $t2, 0xFF00
/* 02CCF8 0042CCF8 01797025 */  or          $t6, $t3, $t9
/* 02CCFC 0042CCFC 00036E02 */  srl         $t5, $v1, 24
/* 02CD00 0042CD00 01AE6025 */  or          $t4, $t5, $t6
/* 02CD04 0042CD04 00047A00 */  sll         $t7, $a0, 8
/* 02CD08 0042CD08 8C43FFE4 */  lw          $v1, -0x1C($v0)
/* 02CD0C 0042CD0C 01E95024 */  and         $t2, $t7, $t1
/* 02CD10 0042CD10 0004CA03 */  sra         $t9, $a0, 8
/* 02CD14 0042CD14 0004C600 */  sll         $t8, $a0, 24
/* 02CD18 0042CD18 AC4CFFDC */  sw          $t4, -0x24($v0)
/* 02CD1C 0042CD1C 030A5825 */  or          $t3, $t8, $t2
/* 02CD20 0042CD20 332DFF00 */  andi        $t5, $t9, 0xFF00
/* 02CD24 0042CD24 016D7025 */  or          $t6, $t3, $t5
/* 02CD28 0042CD28 00046602 */  srl         $t4, $a0, 24
/* 02CD2C 0042CD2C 018E7825 */  or          $t7, $t4, $t6
/* 02CD30 0042CD30 00035200 */  sll         $t2, $v1, 8
/* 02CD34 0042CD34 8C44FFE8 */  lw          $a0, -0x18($v0)
/* 02CD38 0042CD38 0149C824 */  and         $t9, $t2, $t1
/* 02CD3C 0042CD3C 00036A03 */  sra         $t5, $v1, 8
/* 02CD40 0042CD40 0003C600 */  sll         $t8, $v1, 24
/* 02CD44 0042CD44 AC4FFFE0 */  sw          $t7, -0x20($v0)
/* 02CD48 0042CD48 03195825 */  or          $t3, $t8, $t9
/* 02CD4C 0042CD4C 31ACFF00 */  andi        $t4, $t5, 0xFF00
/* 02CD50 0042CD50 016C7025 */  or          $t6, $t3, $t4
/* 02CD54 0042CD54 00037E02 */  srl         $t7, $v1, 24
/* 02CD58 0042CD58 01EE5025 */  or          $t2, $t7, $t6
/* 02CD5C 0042CD5C 0004CA00 */  sll         $t9, $a0, 8
/* 02CD60 0042CD60 8C43FFEC */  lw          $v1, -0x14($v0)
/* 02CD64 0042CD64 03296824 */  and         $t5, $t9, $t1
/* 02CD68 0042CD68 00046203 */  sra         $t4, $a0, 8
/* 02CD6C 0042CD6C 0004C600 */  sll         $t8, $a0, 24
/* 02CD70 0042CD70 AC4AFFE4 */  sw          $t2, -0x1C($v0)
/* 02CD74 0042CD74 030D5825 */  or          $t3, $t8, $t5
/* 02CD78 0042CD78 318FFF00 */  andi        $t7, $t4, 0xFF00
/* 02CD7C 0042CD7C 016F7025 */  or          $t6, $t3, $t7
/* 02CD80 0042CD80 00045602 */  srl         $t2, $a0, 24
/* 02CD84 0042CD84 014EC825 */  or          $t9, $t2, $t6
/* 02CD88 0042CD88 00036A00 */  sll         $t5, $v1, 8
/* 02CD8C 0042CD8C 01A96024 */  and         $t4, $t5, $t1
/* 02CD90 0042CD90 00037A03 */  sra         $t7, $v1, 8
/* 02CD94 0042CD94 0003C600 */  sll         $t8, $v1, 24
/* 02CD98 0042CD98 AC59FFE8 */  sw          $t9, -0x18($v0)
/* 02CD9C 0042CD9C 030C5825 */  or          $t3, $t8, $t4
/* 02CDA0 0042CDA0 31EAFF00 */  andi        $t2, $t7, 0xFF00
/* 02CDA4 0042CDA4 016A7025 */  or          $t6, $t3, $t2
/* 02CDA8 0042CDA8 0003CE02 */  srl         $t9, $v1, 24
/* 02CDAC 0042CDAC 844FFFF0 */  lh          $t7, -0x10($v0)
/* 02CDB0 0042CDB0 032E6825 */  or          $t5, $t9, $t6
/* 02CDB4 0042CDB4 AC4DFFEC */  sw          $t5, -0x14($v0)
/* 02CDB8 0042CDB8 844DFFF2 */  lh          $t5, -0xE($v0)
/* 02CDBC 0042CDBC 31F8FFFF */  andi        $t8, $t7, 0xFFFF
/* 02CDC0 0042CDC0 8C43FFF4 */  lw          $v1, -0xC($v0)
/* 02CDC4 0042CDC4 00186202 */  srl         $t4, $t8, 8
/* 02CDC8 0042CDC8 000F5A00 */  sll         $t3, $t7, 8
/* 02CDCC 0042CDCC 018B5025 */  or          $t2, $t4, $t3
/* 02CDD0 0042CDD0 31B9FFFF */  andi        $t9, $t5, 0xFFFF
/* 02CDD4 0042CDD4 00197202 */  srl         $t6, $t9, 8
/* 02CDD8 0042CDD8 000DC200 */  sll         $t8, $t5, 8
/* 02CDDC 0042CDDC 01D87825 */  or          $t7, $t6, $t8
/* 02CDE0 0042CDE0 A44AFFF0 */  sh          $t2, -0x10($v0)
/* 02CDE4 0042CDE4 00035A00 */  sll         $t3, $v1, 8
/* 02CDE8 0042CDE8 8C44FFF8 */  lw          $a0, -0x8($v0)
/* 02CDEC 0042CDEC 01695024 */  and         $t2, $t3, $t1
/* 02CDF0 0042CDF0 00036A03 */  sra         $t5, $v1, 8
/* 02CDF4 0042CDF4 00036600 */  sll         $t4, $v1, 24
/* 02CDF8 0042CDF8 A44FFFF2 */  sh          $t7, -0xE($v0)
/* 02CDFC 0042CDFC 018AC825 */  or          $t9, $t4, $t2
/* 02CE00 0042CE00 31AEFF00 */  andi        $t6, $t5, 0xFF00
/* 02CE04 0042CE04 032EC025 */  or          $t8, $t9, $t6
/* 02CE08 0042CE08 00037E02 */  srl         $t7, $v1, 24
/* 02CE0C 0042CE0C 01F85825 */  or          $t3, $t7, $t8
/* 02CE10 0042CE10 00045200 */  sll         $t2, $a0, 8
/* 02CE14 0042CE14 8C43FFFC */  lw          $v1, -0x4($v0)
/* 02CE18 0042CE18 01496824 */  and         $t5, $t2, $t1
/* 02CE1C 0042CE1C 00047203 */  sra         $t6, $a0, 8
/* 02CE20 0042CE20 00046600 */  sll         $t4, $a0, 24
/* 02CE24 0042CE24 AC4BFFF4 */  sw          $t3, -0xC($v0)
/* 02CE28 0042CE28 018DC825 */  or          $t9, $t4, $t5
/* 02CE2C 0042CE2C 31CFFF00 */  andi        $t7, $t6, 0xFF00
/* 02CE30 0042CE30 032FC025 */  or          $t8, $t9, $t7
/* 02CE34 0042CE34 00045E02 */  srl         $t3, $a0, 24
/* 02CE38 0042CE38 01785025 */  or          $t2, $t3, $t8
/* 02CE3C 0042CE3C 00036A00 */  sll         $t5, $v1, 8
/* 02CE40 0042CE40 01A97024 */  and         $t6, $t5, $t1
/* 02CE44 0042CE44 00037A03 */  sra         $t7, $v1, 8
/* 02CE48 0042CE48 00036600 */  sll         $t4, $v1, 24
/* 02CE4C 0042CE4C AC4AFFF8 */  sw          $t2, -0x8($v0)
/* 02CE50 0042CE50 018EC825 */  or          $t9, $t4, $t6
/* 02CE54 0042CE54 31EBFF00 */  andi        $t3, $t7, 0xFF00
/* 02CE58 0042CE58 032BC025 */  or          $t8, $t9, $t3
/* 02CE5C 0042CE5C 00035602 */  srl         $t2, $v1, 24
/* 02CE60 0042CE60 01586825 */  or          $t5, $t2, $t8
/* 02CE64 0042CE64 1447FF6F */  bne         $v0, $a3, .L0042CC24
/* 02CE68 0042CE68 AC4DFFFC */   sw         $t5, -0x4($v0)
.L0042CE6C:
/* 02CE6C 0042CE6C 03E00008 */  jr          $ra
/* 02CE70 0042CE70 00000000 */   nop
