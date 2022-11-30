glabel swap_ehdr # 518
/* 02DDDC 0042DDDC 94820010 */  lhu         $v0, 0x10($a0)
/* 02DDE0 0042DDE0 94830012 */  lhu         $v1, 0x12($a0)
/* 02DDE4 0042DDE4 8C850014 */  lw          $a1, 0x14($a0)
/* 02DDE8 0042DDE8 00027A00 */  sll         $t7, $v0, 8
/* 02DDEC 0042DDEC 0002C202 */  srl         $t8, $v0, 8
/* 02DDF0 0042DDF0 01F8C825 */  or          $t9, $t7, $t8
/* 02DDF4 0042DDF4 00035A00 */  sll         $t3, $v1, 8
/* 02DDF8 0042DDF8 00036202 */  srl         $t4, $v1, 8
/* 02DDFC 0042DDFC 016C6825 */  or          $t5, $t3, $t4
/* 02DE00 0042DE00 3C0900FF */  lui         $t1, (0xFF0000 >> 16)
/* 02DE04 0042DE04 00057A00 */  sll         $t7, $a1, 8
/* 02DE08 0042DE08 8C860018 */  lw          $a2, 0x18($a0)
/* 02DE0C 0042DE0C A4990010 */  sh          $t9, 0x10($a0)
/* 02DE10 0042DE10 01E9C024 */  and         $t8, $t7, $t1
/* 02DE14 0042DE14 00057600 */  sll         $t6, $a1, 24
/* 02DE18 0042DE18 00055202 */  srl         $t2, $a1, 8
/* 02DE1C 0042DE1C A48D0012 */  sh          $t5, 0x12($a0)
/* 02DE20 0042DE20 314BFF00 */  andi        $t3, $t2, 0xFF00
/* 02DE24 0042DE24 01D8C825 */  or          $t9, $t6, $t8
/* 02DE28 0042DE28 032B6025 */  or          $t4, $t9, $t3
/* 02DE2C 0042DE2C 00056E02 */  srl         $t5, $a1, 24
/* 02DE30 0042DE30 018D7825 */  or          $t7, $t4, $t5
/* 02DE34 0042DE34 0006C200 */  sll         $t8, $a2, 8
/* 02DE38 0042DE38 8C87001C */  lw          $a3, 0x1C($a0)
/* 02DE3C 0042DE3C 03095024 */  and         $t2, $t8, $t1
/* 02DE40 0042DE40 00065A02 */  srl         $t3, $a2, 8
/* 02DE44 0042DE44 00067600 */  sll         $t6, $a2, 24
/* 02DE48 0042DE48 AC8F0014 */  sw          $t7, 0x14($a0)
/* 02DE4C 0042DE4C 01CAC825 */  or          $t9, $t6, $t2
/* 02DE50 0042DE50 316CFF00 */  andi        $t4, $t3, 0xFF00
/* 02DE54 0042DE54 032C6825 */  or          $t5, $t9, $t4
/* 02DE58 0042DE58 00067E02 */  srl         $t7, $a2, 24
/* 02DE5C 0042DE5C 01AFC025 */  or          $t8, $t5, $t7
/* 02DE60 0042DE60 00075200 */  sll         $t2, $a3, 8
/* 02DE64 0042DE64 8C820020 */  lw          $v0, 0x20($a0)
/* 02DE68 0042DE68 01495824 */  and         $t3, $t2, $t1
/* 02DE6C 0042DE6C 00076202 */  srl         $t4, $a3, 8
/* 02DE70 0042DE70 00077600 */  sll         $t6, $a3, 24
/* 02DE74 0042DE74 AC980018 */  sw          $t8, 0x18($a0)
/* 02DE78 0042DE78 01CBC825 */  or          $t9, $t6, $t3
/* 02DE7C 0042DE7C 318DFF00 */  andi        $t5, $t4, 0xFF00
/* 02DE80 0042DE80 032D7825 */  or          $t7, $t9, $t5
/* 02DE84 0042DE84 0007C602 */  srl         $t8, $a3, 24
/* 02DE88 0042DE88 01F85025 */  or          $t2, $t7, $t8
/* 02DE8C 0042DE8C 00025A00 */  sll         $t3, $v0, 8
/* 02DE90 0042DE90 8C830024 */  lw          $v1, 0x24($a0)
/* 02DE94 0042DE94 01696024 */  and         $t4, $t3, $t1
/* 02DE98 0042DE98 00026A02 */  srl         $t5, $v0, 8
/* 02DE9C 0042DE9C 00027600 */  sll         $t6, $v0, 24
/* 02DEA0 0042DEA0 AC8A001C */  sw          $t2, 0x1C($a0)
/* 02DEA4 0042DEA4 01CCC825 */  or          $t9, $t6, $t4
/* 02DEA8 0042DEA8 31AFFF00 */  andi        $t7, $t5, 0xFF00
/* 02DEAC 0042DEAC 032FC025 */  or          $t8, $t9, $t7
/* 02DEB0 0042DEB0 00025602 */  srl         $t2, $v0, 24
/* 02DEB4 0042DEB4 030A5825 */  or          $t3, $t8, $t2
/* 02DEB8 0042DEB8 00036200 */  sll         $t4, $v1, 8
/* 02DEBC 0042DEBC 01896824 */  and         $t5, $t4, $t1
/* 02DEC0 0042DEC0 00037A02 */  srl         $t7, $v1, 8
/* 02DEC4 0042DEC4 00037600 */  sll         $t6, $v1, 24
/* 02DEC8 0042DEC8 AC8B0020 */  sw          $t3, 0x20($a0)
/* 02DECC 0042DECC 01CDC825 */  or          $t9, $t6, $t5
/* 02DED0 0042DED0 31F8FF00 */  andi        $t8, $t7, 0xFF00
/* 02DED4 0042DED4 94850028 */  lhu         $a1, 0x28($a0)
/* 02DED8 0042DED8 9486002A */  lhu         $a2, 0x2A($a0)
/* 02DEDC 0042DEDC 03385025 */  or          $t2, $t9, $t8
/* 02DEE0 0042DEE0 00035E02 */  srl         $t3, $v1, 24
/* 02DEE4 0042DEE4 014B6025 */  or          $t4, $t2, $t3
/* 02DEE8 0042DEE8 9487002C */  lhu         $a3, 0x2C($a0)
/* 02DEEC 0042DEEC 9488002E */  lhu         $t0, 0x2E($a0)
/* 02DEF0 0042DEF0 AC8C0024 */  sw          $t4, 0x24($a0)
/* 02DEF4 0042DEF4 00056A00 */  sll         $t5, $a1, 8
/* 02DEF8 0042DEF8 00057A02 */  srl         $t7, $a1, 8
/* 02DEFC 0042DEFC 00065A02 */  srl         $t3, $a2, 8
/* 02DF00 0042DF00 00065200 */  sll         $t2, $a2, 8
/* 02DF04 0042DF04 01AFC825 */  or          $t9, $t5, $t7
/* 02DF08 0042DF08 014B6025 */  or          $t4, $t2, $t3
/* 02DF0C 0042DF0C 94820030 */  lhu         $v0, 0x30($a0)
/* 02DF10 0042DF10 94980032 */  lhu         $t8, 0x32($a0)
/* 02DF14 0042DF14 A4990028 */  sh          $t9, 0x28($a0)
/* 02DF18 0042DF18 A48C002A */  sh          $t4, 0x2A($a0)
/* 02DF1C 0042DF1C 00077A02 */  srl         $t7, $a3, 8
/* 02DF20 0042DF20 00076A00 */  sll         $t5, $a3, 8
/* 02DF24 0042DF24 00085A02 */  srl         $t3, $t0, 8
/* 02DF28 0042DF28 00085200 */  sll         $t2, $t0, 8
/* 02DF2C 0042DF2C 01AFC825 */  or          $t9, $t5, $t7
/* 02DF30 0042DF30 014B6025 */  or          $t4, $t2, $t3
/* 02DF34 0042DF34 304E00FF */  andi        $t6, $v0, 0xFF
/* 02DF38 0042DF38 A499002C */  sh          $t9, 0x2C($a0)
/* 02DF3C 0042DF3C A48C002E */  sh          $t4, 0x2E($a0)
/* 02DF40 0042DF40 000E6A00 */  sll         $t5, $t6, 8
/* 02DF44 0042DF44 00027A02 */  srl         $t7, $v0, 8
/* 02DF48 0042DF48 00185A02 */  srl         $t3, $t8, 8
/* 02DF4C 0042DF4C 00185200 */  sll         $t2, $t8, 8
/* 02DF50 0042DF50 01AFC825 */  or          $t9, $t5, $t7
/* 02DF54 0042DF54 014B6025 */  or          $t4, $t2, $t3
/* 02DF58 0042DF58 A4990030 */  sh          $t9, 0x30($a0)
/* 02DF5C 0042DF5C 03E00008 */  jr          $ra
/* 02DF60 0042DF60 A48C0032 */   sh         $t4, 0x32($a0)
