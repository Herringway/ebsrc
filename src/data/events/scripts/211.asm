
EVENT_211: ;$C3D91C
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $80, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0528
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2730
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0600
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2730
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C03F1E
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A023)
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $70
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
