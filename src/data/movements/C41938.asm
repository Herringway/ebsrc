
UNKNOWN_C41938: ;$C41938
	EBMOVE_SET_X $0018
	EBMOVE_SET_Y $FFE0
	EBMOVE_SET_X_VELOCITY $0000
	EBMOVE_SET_Y_VELOCITY $0200
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $00
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $01
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C0AAD5, $03, $44, $19
	EBMOVE_SET_X_VELOCITY $0000
	EBMOVE_SET_Y_VELOCITY $0000
@UNKNOWN0:
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $00
	EBMOVE_PAUSE $0A
	EBMOVE_CALLROUTINE UNKNOWN_C0AA6E, $00, $01
	EBMOVE_PAUSE $0A
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN0)