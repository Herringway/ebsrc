
EVENT_549: ;$C3459E
	EVENT_SET_X $1080
	EVENT_SET_Y $0358
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $1080
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0395
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
