
EVENT_573: ;$C34D77
	EVENT_SET_X $0188
	EVENT_SET_Y $1D80
UNKNOWN_C34D7D: ;$C34D7D
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_10F2 $00
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 2*SECONDS
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
