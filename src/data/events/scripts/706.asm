
EVENT_706: ;$C386FA
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(EVENT_705_706_COMMON)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_10F2 $FF
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0002
	EVENT_UNKNOWN_C47A9E
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0004
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0007
	EVENT_LOOP $03
		EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0000
		EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_LOOP_END
	EVENT_PLAY_SOUND SFX::PSI_FREEZE_FINISH
	EVENT_PAUSE $06*FRAMES
	EVENT_UNKNOWN_C46E46
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0003
	EVENT_LOOP $04
		EVENT_UNKNOWN_C47B77
		EVENT_PAUSE 1*SIXTH_OF_A_SECOND
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_4, $FFFF
	EVENT_LOOP_END
	EVENT_UNKNOWN_C4981F
	EVENT_UNDRAW_FLYOVER_TEXT
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
