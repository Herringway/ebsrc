
EVENT_651: ;$C37814
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_10F2 $FF
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_LOOP $1F
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_3, $FFFF
		EVENT_UNKNOWN_C47499
		EVENT_PAUSE 3*TWENTIETHS_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_PLAY_SOUND SFX::OUCH
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0005
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0000
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0002
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0004
	EVENT_UNKNOWN_C47A9E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0000
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0003
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0008
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_UNKNOWN_C4981F
	EVENT_UNDRAW_FLYOVER_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
