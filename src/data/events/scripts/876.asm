
EVENT_876: ;$C39749
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39AC7)
@UNKNOWN1: ;$C3974C
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_1ED
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1618
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $2700
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0028
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0008
	EVENT_UNKNOWN_C46E74
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C39E01)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_WANDERING_PHOTOGRAPHER_14
	EVENT_HALT
