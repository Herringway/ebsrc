
EVENT_753: ;$C391AE
	EVENT_SET_X $0218
	EVENT_SET_Y $1DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $000C
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $01C0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $1DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0190
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $1DD8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_UNKNOWN2
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $01
	EVENT_HALT