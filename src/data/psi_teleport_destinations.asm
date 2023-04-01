
PSI_TELEPORT_DEST_TABLE: ;$D57880
	PADDEDASCII "", .SIZEOF(psi_teleport_destination::name) ;
	.WORD EVENT_FLAG::NONE
	.WORD $0000 ;X
	.WORD $0000 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xF0\xE8\xCE\xF6", .SIZEOF(psi_teleport_destination::name) ; オネット
.ELSE
	PADDEDEBTEXT "Onett", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_ONET
	.WORD $00FD ;X
	.WORD $00BA ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xD6\x25\xF4\xED", .SIZEOF(psi_teleport_destination::name) ; ツーソン
.ELSE
	PADDEDEBTEXT "Twoson", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_TWSN
	.WORD $00B0 ;X
	.WORD $0334 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xD4\xCF\x25\xD2", .SIZEOF(psi_teleport_destination::name) ; スリーク
.ELSE
	PADDEDEBTEXT "Threed", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_THRK
	.WORD $02B4 ;X
	.WORD $0466 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xB4\xB6\x25\xED\xBA\xEF\x25", .SIZEOF(psi_teleport_destination::name) ; サターンバレー
.ELSE
	PADDEDEBTEXT "Saturn Valley", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_BAKA
	.WORD $0022 ;X
	.WORD $03CC ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xD9\xF1\x25\xB4\xC0\xF7", .SIZEOF(psi_teleport_destination::name) ; フォーサイド
.ELSE
	PADDEDEBTEXT "Fourside", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_FOUR
	.WORD $017C ;X
	.WORD $01F9 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xD0\xC1\xED\xB6\x25\xD5", .SIZEOF(psi_teleport_destination::name) ; ウィンターズ
.ELSE
	PADDEDEBTEXT "Winters", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_WINS
	.WORD $003E ;X
	.WORD $0121 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xB4\xBC\x25\xD5", .SIZEOF(psi_teleport_destination::name) ; サマーズ
.ELSE
	PADDEDEBTEXT "Summers", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_SUMS
	.WORD $022A ;X
	.WORD $0161 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xD4\xB2\xBF\xCA", .SIZEOF(psi_teleport_destination::name) ; スカラビ
.ELSE
	PADDEDEBTEXT "Scaraba", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_SKRB
	.WORD $0098 ;X
	.WORD $020E ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xBF\xED\xBC", .SIZEOF(psi_teleport_destination::name) ; ランマ
.ELSE
	PADDEDEBTEXT "Dalaam", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_RAMA
	.WORD $023A ;X
	.WORD $01C1 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\x6C\x72\xAE\x80", .SIZEOF(psi_teleport_destination::name) ; まきょう
.ELSE
	PADDEDEBTEXT "Deep Darkness", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_MAKY
	.WORD $02C0 ;X
	.WORD $0380 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xD3\xCC\xA5\x82\xA8\x8C\x6F", .SIZEOF(psi_teleport_destination::name) ; グミぞくのむら
.ELSE
	PADDEDEBTEXT "Tenda Village", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_GUMI
	.WORD $0234 ;X
	.WORD $0379 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\x76\x96\x70\x66\x70\x7F\x82", .SIZEOF(psi_teleport_destination::name) ; ちていたいりく
.ELSEIF .DEFINED(PROTOTYPE19950327)
	PADDEDEBTEXT "Lost Underworld", .SIZEOF(psi_teleport_destination::name)
.ELSE
	PADDEDEBTEXT "Underworld", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_DKFD
	.WORD $0145 ;X
	.WORD $015F ;Y

	PADDEDASCII "", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::FLG_FOUR_TONZURA_FREE
	.WORD $01B1 ;X
	.WORD $0203 ;Y

.IF .DEFINED(JPN)
	PADDEDASCII "\xF7\xF2\xF7\xF2\x64\x6A\x82", .SIZEOF(psi_teleport_destination::name) ; ドコドコさばく
.ELSE
	PADDEDEBTEXT "Dusty Dunes", .SIZEOF(psi_teleport_destination::name)
.ENDIF
	.WORD EVENT_FLAG::FLG_TLPT_DSRT
	.WORD $00A0 ;X
	.WORD $04E3 ;Y

	PADDEDASCII "", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::FLG_FOUR_TONZURA_FREE
	.WORD $02EE ;X
	.WORD $02EB ;Y

	PADDEDASCII "", .SIZEOF(psi_teleport_destination::name)
	.WORD NULL
	.WORD $0000 ;X
	.WORD $0000 ;Y
