
UNKNOWN_C41402: ;$C41402
	EVENT_SET_X $000C
	EVENT_SET_Y $0014
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $70
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $08, $140C
@UNKNOWN0:
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $05, $141F
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $A0
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $08, $1436
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
