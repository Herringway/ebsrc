
EVENT_346: ;$C31B4B
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A039)
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_08 UNKNOWN_C48BE1
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $01F0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $23B0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0008
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0AAAC
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_UNKNOWN_C4DE98
	EVENT_WRITE_WORD_TEMPVAR $0007
	EVENT_UNKNOWN_C4E2D7
	EVENT_UNKNOWN_08_3B_94_C0
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C4DED0
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0006
	EVENT_LOOP $07
		EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_4
		EVENT_UNKNOWN_C4E2D7
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_4, $FFFF
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN2)
	EVENT_LOOP $07
		EVENT_PAUSE $46*FRAMES
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_3, $FFFF
	EVENT_LOOP_END
	EVENT_PAUSE 1*SECOND
	EVENT_LOOP $07
		EVENT_PAUSE $22*FRAMES
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_3, $0001
	EVENT_LOOP_END
@UNKNOWN1: ;$C31BCA
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A673
	EVENT_ADD_TEMPVAR $FFFC
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_END_UNKNOWN2
	EVENT_HALT
@UNKNOWN2: ;$C31BD9
	EVENT_WRITE_9AF9_WAIT_TIMER EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0C682
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0AAAC
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN2)
