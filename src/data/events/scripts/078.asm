
EVENT_78: ;$C3B86C
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAB8)
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C46C45
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0028
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0028
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_128
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_129
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $38*FRAMES
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
