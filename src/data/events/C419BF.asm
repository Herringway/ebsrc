
UNKNOWN_C419BF: ;$C419BF
	EVENT_SET_X $0018
	EVENT_SET_Y $0020
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $05
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $05
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $05
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $05
@UNKNOWN0:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $01
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $01
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $02
	EVENT_UNKNOWN_C0AAD5 $03, .LOWORD(@UNKNOWN0)
@UNKNOWN1:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $01
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $01
	EVENT_UNKNOWN_C0AAD5 $01, .LOWORD(@UNKNOWN1)
@UNKNOWN2:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $0A
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN2)
