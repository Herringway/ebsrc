
UNKNOWN_C41253: ;$C41253
	EBMOVE_SET_X $FFF8
	EBMOVE_SET_Y $0028
	EBMOVE_SET_X_VELOCITY $0100
	EBMOVE_SET_Y_VELOCITY $0000
	EBMOVE_UNKNOWN_C0AA6E $02, $00
	EBMOVE_PAUSE $08
	EBMOVE_UNKNOWN_C0AA6E $02, $01
	EBMOVE_PAUSE $08
	EBMOVE_UNKNOWN_C0AAD5 $01, $125F
	EBMOVE_SET_X_VELOCITY $0000
	EBMOVE_SET_Y_VELOCITY $0000
	EBMOVE_UNKNOWN_C0AA6E $03, $01
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $3C
	EBMOVE_UNKNOWN_C0AA6E $04, $00
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AAD5 $08, $1294
@UNKNOWN0:
	EBMOVE_UNKNOWN_C0AA6E $03, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $02, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $01, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $00, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $07, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $06, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $05, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $04, $00
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AA6E $05, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $06, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $07, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $00, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $01, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $02, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $03, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $05
	EBMOVE_UNKNOWN_C0AA6E $04, $00
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $0A
	EBMOVE_WRITE_WORD_WRAM $B4B4, $0001
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $3C
	EBMOVE_WRITE_WORD_WRAM $B4B4, $0000
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $14
	EBMOVE_UNKNOWN_C0AAD5 $01, $134B
	EBMOVE_UNKNOWN_C0AA6E $04, $00
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AA6E $04, $01
	EBMOVE_PAUSE $0A
	EBMOVE_UNKNOWN_C0AAD5 $08, $1368
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN0)
