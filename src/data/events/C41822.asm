
UNKNOWN_C41822: ;$C41822
	EVENT_SET_X $FFF4
	EVENT_SET_Y $0028
	EVENT_SET_X_VELOCITY $0100
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE $08
	EVENT_UNKNOWN_C0AAD5 $01, $182E
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE $72
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $01, $1853
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $14
@UNKNOWN0:
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $78
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $FF
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE $60
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $02, $188A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::UP, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $02, $18A1
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $02, $18B8
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $02, $18CF
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $01
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_PAUSE $0A
	EVENT_UNKNOWN_C0AAD5 $02, $18E6
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
