
EVENT_632: ;$C3740F
	EVENT_PAUSE $F0*FRAMES
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C37439)
UNKNOWN_C37414: ;$C37414
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0C48
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE $78*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0C10
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE $78*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0BD9
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $F0*FRAMES
	EVENT_SET_X $0C89
	EVENT_SET_10F2 $00
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C37414)
