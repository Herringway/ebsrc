
EVENT_342: ;$C31A83
	EVENT_UNKNOWN_C0A87A $0080, $0000
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $40, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0080
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0080
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C31AB0)
	EVENT_UNKNOWN_C46E46
UNKNOWN_C31AB0: ;$C31AB0
	EVENT_HALT
