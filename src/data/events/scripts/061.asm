
EVENT_61: ;$C3B35D
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0012
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_UNKNOWN_C0A943 $FF
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_9, $0010
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C46E46
	EVENT_UNKNOWN_C0A8FF
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0018
	EVENT_UNKNOWN_C0A685 $20, $00
	EVENT_UNKNOWN_C0A673
	EVENT_UNKNOWN_C0C83B
	EVENT_PAUSE $40*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_HALT