
EVENT_228_229_230_231_232_COMMON: ;$C3033F
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000E
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_WRITE_TEMPVAR_TO_VAR ACTIONSCRIPT_VARS::V6
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V1
	EVENT_WRITE_TEMPVAR_TO_VAR ACTIONSCRIPT_VARS::V7
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_GET_DIRECTION_FROM_PLAYER_TO_ENTITY
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_SHORT_RETURN
