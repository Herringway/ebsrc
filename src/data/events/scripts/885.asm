
EVENT_885: ;$C39902
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1: ;$C39905
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_1F6
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1BD0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $2384
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0020
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $000C
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_WANDERING_PHOTOGRAPHER_23
	EVENT_HALT
