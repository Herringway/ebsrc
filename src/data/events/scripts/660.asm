
EVENT_660: ;$C37987
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C37A7C)
	EVENT_PAUSE $10*FRAMES
	EVENT_PAUSE $20*FRAMES
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::UP
	EVENT_SET_DIRECTION
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $20*FRAMES
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SET_DIRECTION
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_UNKNOWN_C0C83B
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_HALT
