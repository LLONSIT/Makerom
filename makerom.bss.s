.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .bss

.balign 16

glabel B_10016520
/* 046518 10016520 */ .space 0x100

glabel B_10016620
/* 046618 10016620 */ .space 0x100

glabel B_10016720
/* 046718 10016720 */ .space 0x100

glabel B_10016820
/* 046818 10016820 */ .space 0x100

glabel B_10016920
/* 046918 10016920 */ .space 0x100

glabel B_10016A20
/* 046A18 10016A20 */ .space 0x04

glabel fileName
/* 046A1C 10016A24 */ .space 0x04

glabel bootEntryName
/* 046A20 10016A28 */ .space 0x04

glabel bootStackName
/* 046A24 10016A2C */ .space 0x04

glabel bootStackOffset
/* 046A28 10016A30 */ .space 0x04

glabel loadMap
/* 046A2C 10016A34 */ .space 0x04

glabel gcord
/* 046A30 10016A38 */ .space 0x04

glabel bootBuf
/* 046A34 10016A3C */ .space 0x04

glabel headerBuf
/* 046A38 10016A40 */ .space 0x04

glabel pif2bootBuf
/* 046A3C 10016A44 */ .space 0x04

glabel fontBuf
/* 046A40 10016A48 */ .space 0x04

glabel bootWordAlignedByteSize
/* 046A44 10016A4C */ .space 0x04

glabel pif2bootWordAlignedByteSize
/* 046A48 10016A50 */ .space 0x04

glabel headerWordAlignedByteSize
/* 046A4C 10016A54 */ .space 0x04

glabel fontdataWordAlignedByteSize
/* 046A50 10016A58 */ .space 0x04

glabel irixVersion
/* 046A54 10016A5C */ .space 0x04

glabel B_10016A60
/* 046A58 10016A60 */ .space 0x10

glabel Address
/* 046A68 10016A70 */ .space 0x04

glabel Data0
/* 046A6C 10016A74 */ .space 0x04

glabel Data1
/* 046A70 10016A78 */ .space 0x04

glabel OFileName
/* 046A74 10016A7C */ .space 0x04

glabel AFileName
/* 046A78 10016A80 */ .space 0x04

glabel SName
/* 046A7C 10016A84 */ .space 0x04

glabel LDPtr
/* 046A80 10016A88 */ .space 0x04

glabel B_10016A8C
/* 046A84 10016A8C */ .space 0x04

glabel SHeader
/* 046A88 10016A90 */ .space 0x28

glabel AFile
/* 046AB0 10016AB8 */ .space 0x04

glabel B_10016ABC
/* 046AB4 10016ABC */ .space 0x04

glabel yysbuf
/* 046AB8 10016AC0 */ .space 0x800

glabel yyleng
/* 0472B8 100172C0 */ .space 0x04

glabel B_100172C4
/* 0472BC 100172C4 */ .space 0x04

glabel yytext
/* 0472C0 100172C8 */ .space 0x800

glabel yymorfg
/* 047AC0 10017AC8 */ .space 0x04

glabel yytchar
/* 047AC4 10017ACC */ .space 0x04

glabel yyestate
/* 047AC8 10017AD0 */ .space 0x04

glabel B_10017AD4
/* 047ACC 10017AD4 */ .space 0x04

glabel yylstate
/* 047AD0 10017AD8 */ .space 0x2000

glabel yylsp
/* 049AD0 10019AD8 */ .space 0x04

glabel yyolsp
/* 049AD4 10019ADC */ .space 0x04

glabel yyfnd
/* 049AD8 10019AE0 */ .space 0x04

glabel B_10019AE4
/* 049ADC 10019AE4 */ .space 0x0C

glabel yy_yys
/* 049AE8 10019AF0 */ .space 0x258

glabel yy_yyv
/* 049D40 10019D48 */ .space 0x258

glabel yychar
/* 049F98 10019FA0 */ .space 0x04

glabel yyerrflag
/* 049F9C 10019FA4 */ .space 0x04

glabel yylval
/* 049FA0 10019FA8 */ .space 0x04

glabel yyval
/* 049FA4 10019FAC */ .space 0x04

glabel yydebug
/* 049FA8 10019FB0 */ .space 0x04

glabel yypv
/* 049FAC 10019FB4 */ .space 0x04

glabel yyps
/* 049FB0 10019FB8 */ .space 0x04

glabel yystate
/* 049FB4 10019FBC */ .space 0x04

glabel yytmp
/* 049FB8 10019FC0 */ .space 0x04

glabel yynerrs
/* 049FBC 10019FC4 */ .space 0x04

glabel bootAddress
/* 049FC0 10019FC8 */ .space 0x04

glabel B_10019FCC
/* 049FC4 10019FCC */ .space 0x04

glabel B_10019FD0
/* 049FC8 10019FD0 */ .space 0x04

glabel B_10019FD4
/* 049FCC 10019FD4 */ .space 0x04

glabel B_10019FD8
/* 049FD0 10019FD8 */ .space 0x04

glabel B_10019FDC
/* 049FD4 10019FDC */ .space 0x04

glabel B_10019FE0
/* 049FD8 10019FE0 */ .space 0x10

glabel _elf_page_size
/* 049FE8 10019FF0 */ .space 0x04

glabel B_10019FF4
/* 049FEC 10019FF4 */ .space 0x0C

glabel B_1001A000
/* 049FF8 1001A000 */ .space 0x08

glabel B_1001A008
/* 04A000 1001A008 */ .space 0x108

glabel B_1001A110
/* 04A108 1001A110 */ .space 0x04

glabel B_1001A114
/* 04A10C 1001A114 */ .space 0x04

glabel B_1001A118
/* 04A110 1001A118 */ .space 0x04

glabel B_1001A11C
/* 04A114 1001A11C */ .space 0x04

glabel B_1001A120
/* 04A118 1001A120 */ .space 0x100

glabel B_1001A220
/* 04A218 1001A220 */ .space 0x04

glabel B_1001A224
/* 04A21C 1001A224 */ .space 0x04

glabel B_1001A228
/* 04A220 1001A228 */ .space 0x04

glabel B_1001A22C
/* 04A224 1001A22C */ .space 0x04

glabel B_1001A230
/* 04A228 1001A230 */ .space 0x340

glabel B_1001A570
/* 04A568 1001A570 */ .space 0x04

glabel B_1001A574
/* 04A56C 1001A574 */ .space 0x04

glabel B_1001A578
/* 04A570 1001A578 */ .space 0x08

glabel B_1001A580
/* 04A578 1001A580 */ .space 0x04

glabel B_1001A584
/* 04A57C 1001A584 */ .space 0x04

glabel B_1001A588
/* 04A580 1001A588 */ .space 0x04

glabel B_1001A58C
/* 04A584 1001A58C */ .space 0x04

glabel B_1001A590
/* 04A588 1001A590 */ .space 0x04

glabel B_1001A594
/* 04A58C 1001A594 */ .space 0x04

glabel B_1001A598
/* 04A590 1001A598 */ .space 0x04

glabel B_1001A59C
/* 04A594 1001A59C */ .space 0x04

glabel B_1001A5A0
/* 04A598 1001A5A0 */ .space 0x04

glabel B_1001A5A4
/* 04A59C 1001A5A4 */ .space 0x04

glabel B_1001A5A8
/* 04A5A0 1001A5A8 */ .space 0x04

glabel B_1001A5AC
/* 04A5A4 1001A5AC */ .space 0x04

glabel B_1001A5B0
/* 04A5A8 1001A5B0 */ .space 0x04

glabel B_1001A5B4
/* 04A5AC 1001A5B4 */ .space 0x1C

glabel B_1001A5D0
/* 04A5C8 1001A5D0 */ .space 0x08

glabel B_1001A5D8
/* 04A5D0 1001A5D8 */ .space 0x88

glabel B_1001A660
/* 04A658 1001A660 */ .space 0x88

glabel B_1001A6E8
/* 04A6E0 1001A6E8 */ .space 0xFC4

glabel B_1001B6AC
/* 04B6A4 1001B6AC */ .space 0x04

glabel B_1001B6B0
/* 04B6A8 1001B6B0 */ .space 0x04

glabel B_1001B6B4
/* 04B6AC 1001B6B4 */ .space 0x0C

glabel B_1001B6C0
/* 04B6B8 1001B6C0 */ .space 0x48

glabel B_1001B708
/* 04B700 1001B708 */ .space 0x40

glabel B_1001B748
/* 04B740 1001B748 */ .space 0x44

glabel B_1001B78C
/* 04B784 1001B78C */ .space 0x04

glabel B_1001B790
/* 04B788 1001B790 */ .space 0x04

glabel B_1001B794
/* 04B78C 1001B794 */ .space 0x04

glabel B_1001B798
/* 04B790 1001B798 */ .space 0x20

glabel B_1001B7B8
/* 04B7B0 1001B7B8 */ .space 0x08

glabel B_1001B7C0
/* 04B7B8 1001B7C0 */ .space 0x40

glabel B_1001B800
/* 04B7F8 1001B800 */ .space 0x04

glabel B_1001B804
/* 04B7FC 1001B804 */ .space 0x04

glabel B_1001B808
/* 04B800 1001B808 */ .space 0x04

glabel B_1001B80C
/* 04B804 1001B80C */ .space 0x04

glabel B_1001B810
/* 04B808 1001B810 */ .space 0x04

glabel B_1001B814
/* 04B80C 1001B814 */ .space 0x0C

glabel __Argv
/* 04B818 1001B820 */ .space 0x04

glabel __rld_obj_head
/* 04B81C 1001B824 */ .space 0x04

glabel __Argc
/* 04B820 1001B828 */ .space 0x04

glabel B_1001B82C
/* 04B824 1001B82C */ .space 0x04

glabel st_pchdr
/* 04B828 1001B830 */ .space 0x04

glabel pcfdcur
/* 04B82C 1001B834 */ .space 0x04

glabel Uc
/* 04B830 1001B838 */ .space 0x20

glabel usertype
/* 04B850 1001B858 */ .space 0x800

glabel usersymbol
/* 04C050 1001C058 */ .space 0x1800
