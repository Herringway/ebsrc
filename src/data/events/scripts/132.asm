
EVENT_132: ;$C3C282
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1558
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $17B8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
UNKNOWN_C3C2AB: ;$C3C2AB
	EVENT_SET_X_RELATIVE $0001
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_X_RELATIVE $FFFF
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3C2AB)
