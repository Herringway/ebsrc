
EVENT_729: ;$C38D50
	EVENT_SET_X $1ED4
	EVENT_SET_Y $0BD8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0007
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PLAY_SOUND SFX::DOOR_CLOSE
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0002
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $1ED4
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0C08
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C37559)
	EVENT_PAUSE 1*SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0007
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $1E30
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PLAY_SOUND SFX::UNKNOWN61
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_PLAY_SOUND SFX::UNKNOWN61
	EVENT_PAUSE $28*FRAMES
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $1EE8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_UNKNOWN2
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_HALT
