
EVENT_284: ;$C30CE2
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000C
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $01B0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $10A8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0010
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0018
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_284
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $000B
	EVENT_UNKNOWN_C0A685 $20, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SHORTCALL .LOWORD(EVENT_285_ENTRY_2)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
