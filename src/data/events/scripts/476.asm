
EVENT_476: ;$C3ABED
	EVENT_SET_X $0824
	EVENT_SET_Y $06E8
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A039)
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_10F2 $FF
	EVENT_UNKNOWN_08 UNKNOWN_C48BE1
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR $0007
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_LOOP $05
		EVENT_PAUSE 1*SECOND
	EVENT_LOOP_END
	EVENT_UNKNOWN_C09FAE_MOVEMENT_ENTRY $0701
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C49EC4
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
