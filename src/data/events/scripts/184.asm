
EVENT_184: ;$C3D26E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_LOOP $0A
		EVENT_SET_Y_RELATIVE $FFFF
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $0001
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $08F0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $19A8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB67)
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY | SURFACE_FLAGS::OBSCURE_UPPER_BODY
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0930
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $19A8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB67)
	EVENT_QUEUE_TEXT MSG_EVT_TONZURABUS_CHAOUS
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $08E8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $19C8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $06B8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BF8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0898
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1BF8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0278
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2218
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $04E8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2218
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $3C
	EVENT_QUEUE_TEXT MSG_EVT_TBUS_TO_THRK_TUNNEL
	EVENT_HALT
