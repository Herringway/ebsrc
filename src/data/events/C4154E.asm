
UNKNOWN_C4154E: ;$C4154E
	EVENT_SET_X $000B
	EVENT_SET_Y $001F
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $33
@UNKNOWN0:
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $09
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $0A
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $05, $1564
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $89
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)