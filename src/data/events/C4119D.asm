
UNKNOWN_C4119D: ;$C4119D
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $30
@UNKNOWN0:
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $82
	EVENT_SET_X $0018
	EVENT_SET_Y $0028
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $FF00
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0100
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP_RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $1E
	EVENT_UNKNOWN_C0AAD5 $01, $11AD
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $A9
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)