
UNKNOWN_C3CCA8: ;$C3CCA8
	EVENT_SET_Y_RELATIVE $FFF8
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_SET_Y_RELATIVE $0008
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3CCA8)