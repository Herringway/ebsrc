
EVENT_810: ;$C36073
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C35FB6)
@UNKNOWN1: ;$C36076
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 1*SECOND
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 1*SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
