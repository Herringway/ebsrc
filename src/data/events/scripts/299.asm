
EVENT_299:
	EVENT_SET_X $16E0
	EVENT_SET_Y $1A88
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A039)
	EVENT_SET_TICK_CALLBACK ACTIONSCRIPT_SIMPLE_SCREEN_POSITION_CALLBACK
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $15B8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BB0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
