
EVENT_544: ;$C350F4
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34E73)
	EVENT_UNKNOWN_C0A685 $40, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A80
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0E30
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $09F0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0EC0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $09F0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0EF0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A28
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0F30
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A28
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0F58
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A48
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0F58
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE $14*FRAMES
	EVENT_DISPLAY_TEXT_IMMEDIATELY MSG_MD_FRSD_YAJIUMA
	EVENT_PAUSE $78*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
