
EVENT_59: ;$C3B2B2
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C46C45
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0050
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0050
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_59
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0005
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0CC8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0860
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
