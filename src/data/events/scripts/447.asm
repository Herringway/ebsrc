
EVENT_447: ;$C33AED
	EVENT_SET_X $1280
	EVENT_SET_Y $1670
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0014
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C31E2D)
	EVENT_EXEC_TEXT_BLOCK VENUS_CONCERT_CLEANUP
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
