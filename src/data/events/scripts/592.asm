
EVENT_592:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
@UNKNOWN1:
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_UNKNOWN_C0C6B6
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
