
EVENT_455: ;$C3DBF2
	EVENT_SET_X $0A60
	EVENT_SET_Y $1390
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0A18
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $13D8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $09E0
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $13D8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46E46
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_10F2 $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3B431)
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_UNKNOWN_C0A8B3 $0000, $0008
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0018
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0008
@UNKNOWN0: ;$C3DC42
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_455
	EVENT_UNKNOWN_C0A8FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB94)
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
