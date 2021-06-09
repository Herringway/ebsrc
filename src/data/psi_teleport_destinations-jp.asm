
.FEATURE STRING_ESCAPES

PSI_TELEPORT_DEST_TABLE: ;$D57880
	PADDEDASCII "", .SIZEOF(psi_teleport_destination::name) ;
	.WORD EVENT_FLAG::UNKNOWN_000
	.WORD $0000 ;X
	.WORD $0000 ;Y

	PADDEDASCII "\xF0\xE8\xCE\xF6", .SIZEOF(psi_teleport_destination::name) ; オネット
	.WORD EVENT_FLAG::ONETT_REACHED
	.WORD $00FD ;X
	.WORD $00BA ;Y

	PADDEDASCII "\xD6\x25\xF4\xED", .SIZEOF(psi_teleport_destination::name) ; ツーソン
	.WORD EVENT_FLAG::TWOSON_REACHED
	.WORD $00B0 ;X
	.WORD $0334 ;Y

	PADDEDASCII "\xD4\xCF\x25\xD2", .SIZEOF(psi_teleport_destination::name) ; スリーク
	.WORD EVENT_FLAG::THREED_REACHED
	.WORD $02B4 ;X
	.WORD $0466 ;Y

	PADDEDASCII "\xB4\xB6\x25\xED\xBA\xEF\x25", .SIZEOF(psi_teleport_destination::name) ; サターンバレー
	.WORD EVENT_FLAG::SATURN_VALLEY_REACHED
	.WORD $0022 ;X
	.WORD $03CC ;Y

	PADDEDASCII "\xD9\xF1\x25\xB4\xC0\xF7", .SIZEOF(psi_teleport_destination::name) ; フォーサイド
	.WORD EVENT_FLAG::FOURSIDE_REACHED
	.WORD $017C ;X
	.WORD $01F9 ;Y

	PADDEDASCII "\xD0\xC1\xED\xB6\x25\xD5", .SIZEOF(psi_teleport_destination::name) ; ウィンターズ
	.WORD EVENT_FLAG::WINTERS_REACHED
	.WORD $003E ;X
	.WORD $0121 ;Y

	PADDEDASCII "\xB4\xBC\x25\xD5", .SIZEOF(psi_teleport_destination::name) ; サマーズ
	.WORD EVENT_FLAG::SUMMERS_REACHED
	.WORD $022A ;X
	.WORD $0161 ;Y

	PADDEDASCII "\xD4\xB2\xBF\xCA", .SIZEOF(psi_teleport_destination::name) ; スカラビ
	.WORD EVENT_FLAG::SCARABA_REACHED
	.WORD $0098 ;X
	.WORD $020E ;Y

	PADDEDASCII "\xBF\xED\xBC", .SIZEOF(psi_teleport_destination::name) ; ランマ
	.WORD EVENT_FLAG::DALAAM_REACHED
	.WORD $023A ;X
	.WORD $01C1 ;Y

	PADDEDASCII "\x6C\x72\xAE\x80", .SIZEOF(psi_teleport_destination::name) ; まきょう
	.WORD EVENT_FLAG::DEEP_DARKNESS_REACHED
	.WORD $02C0 ;X
	.WORD $0380 ;Y

	PADDEDASCII "\xD3\xCC\xA5\x82\xA8\x8C\x6F", .SIZEOF(psi_teleport_destination::name) ; グミぞくのむら
	.WORD EVENT_FLAG::TENDA_VILLAGE_REACHED
	.WORD $0234 ;X
	.WORD $0379 ;Y

	PADDEDASCII "\x76\x96\x70\x66\x70\x7F\x82", .SIZEOF(psi_teleport_destination::name) ; ちていたいりく
	.WORD EVENT_FLAG::UNDERWORLD_REACHED
	.WORD $0145 ;X
	.WORD $015F ;Y

	PADDEDASCII "", .SIZEOF(psi_teleport_destination::name) ;
	.WORD EVENT_FLAG::UNKNOWN_092
	.WORD $01B1 ;X
	.WORD $0203 ;Y

	PADDEDASCII "\xF7\xF2\xF7\xF2\x64\x6A\x82", .SIZEOF(psi_teleport_destination::name) ; ドコドコさばく
	.WORD EVENT_FLAG::UNKNOWN_254
	.WORD $00A0 ;X
	.WORD $04E3 ;Y

	PADDEDASCII "", .SIZEOF(psi_teleport_destination::name) ;
	.WORD EVENT_FLAG::UNKNOWN_092
	.WORD $02EE ;X
	.WORD $02EB ;Y

	PADDEDASCII "", .SIZEOF(psi_teleport_destination::name) ;
	.WORD NULL
	.WORD $0000 ;X
	.WORD $0000 ;Y
