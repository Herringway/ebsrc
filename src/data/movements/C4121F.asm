
UNKNOWN_C4121F: ;$C4121F
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $30
@UNKNOWN0:
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $FF
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $FF
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $FF
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $D9
	EBMOVE_SET_X $0018
	EBMOVE_SET_Y $0013
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $03, $00
	EBMOVE_PAUSE $0A
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $0A
	EBMOVE_CALLROUTINE UNKNOWN_C0AAD5, $02, $33, $12
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $7A
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN0)