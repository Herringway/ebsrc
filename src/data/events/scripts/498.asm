
EVENT_498: ;$C342B1
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_START_TASK .LOWORD(EVENT_8_ENTRY_2)
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C0A8B3 $0000, $0010
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $000C
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $000C
@UNKNOWN1: ;$C342D2
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C468A9
	EVENT_AND_TEMPVAR $0800
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_498
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
