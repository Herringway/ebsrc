
EVENT_665: ;$C37A8A
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_X_RELATIVE $0080
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0004
	EVENT_UNKNOWN_C0A685 $00, $04
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $20*FRAMES
	EVENT_SHORTJUMP .LOWORD(EVENT_35)