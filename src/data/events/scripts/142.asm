
EVENT_142:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_TICK_CALLBACK MAKE_PARTY_LOOK_AT_ACTIVE_ENTITY
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1EA0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0B48
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
