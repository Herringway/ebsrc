
EVENT_667: ;$C37B0B
	EVENT_SET_X $1360
	EVENT_SET_Y $1020
	EVENT_SET_Z $0000
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0000
	EVENT_WRITE_9AF9_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B51
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A685_ME2
	EVENT_SET_Z_VELOCITY $0200
	EVENT_LOOP $80
		EVENT_PAUSE 1*FRAME
		EVENT_ADD_9AF9 ACTIONSCRIPT_VARS::V0, $1000
		EVENT_UNKNOWN_C0A86F $00A9
		EVENT_UNKNOWN_C0A8E7
		EVENT_UNKNOWN_C4730E
		EVENT_UNKNOWN_C0A691
		EVENT_ADD_TEMPVAR $0080
		EVENT_UNKNOWN_C0A685_ME2
	EVENT_LOOP_END
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
