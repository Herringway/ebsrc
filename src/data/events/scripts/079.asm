
EVENT_79: ;$C3B8A5
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAB8)
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C46C45
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0038
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0038
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_129
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_12A
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $1E70
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $2438
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PLAY_SOUND SFX::DOOR_CLOSE
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
