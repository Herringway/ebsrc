
EVENT_126: ;$C3C2E3
	EVENT_SET_X $1788
	EVENT_SET_Y $1768
UNKNOWN_C3C2E9: ;$C3C2E9
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3C2EF)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
UNKNOWN_C3C2EF: ;$C3C2EF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
UNKNOWN_C3C301: ;$C3C301
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_002
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C3C301)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $17C8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $1768
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SHORT_RETURN
