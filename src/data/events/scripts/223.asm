
EVENT_223: ;$C3024A
	EVENT_SET_X $1FE8
	EVENT_SET_Y $0068
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $1F18
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0068
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C30295)
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
