
UNKNOWN_C35F8B: ;$C35F8B
	EVENT_WRITE_9AF9_WAIT_TIMER ACTIONSCRIPT_VARS::V3
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35F98)
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
UNKNOWN_C35F98: ;$C35F98
	EVENT_WRITE_9AF9_WAIT_TIMER ACTIONSCRIPT_VARS::V3
	EVENT_UNKNOWN_C4ECE7
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C35FB3)
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35FAC)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
UNKNOWN_C35FAC: ;$C35FAC
	EVENT_UNKNOWN_C4ECE7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35F8B)
UNKNOWN_C35FB3: ;$C35FB3
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
