
EVENT_205: ;$C3D758
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $80, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0003
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $02B0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2208
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $02B0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2200
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0868
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1C40
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $08C8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0870
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE $3C
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $09A0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB67)
	EVENT_UNKNOWN_C03F1E
	EVENT_PREPARE_NEW_ENTITY_AT_SELF
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_205
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A023)
	EVENT_PAUSE $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $C8
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
