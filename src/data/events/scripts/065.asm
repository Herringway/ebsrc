
EVENT_65: ;$C3B46F
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_10F2 $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3B431)
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A8B3 $0000, $0008
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0018
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0008
@UNKNOWN1: ;$C3B490
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_65
	EVENT_UNKNOWN_C0A8FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
