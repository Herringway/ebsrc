
EVENT_206: ;$C3D7E2
	EVENT_SET_X $1498
	EVENT_SET_Y $2338
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1558
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $2338
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46E46
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_10F2 $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3B431)
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_MOVEMENT_ENTRY_2
	EVENT_UNKNOWN_C0A8B3 $0000, $0008
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0018
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0008
@UNKNOWN0: ;$C3D7E2
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_206
	EVENT_UNKNOWN_C0A8FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
