
MOVEMENT_559: ;$C34767
	EBMOVE_UNKNOWN_43 $00
	EBMOVE_SET_X $0200
	EBMOVE_SET_Y $1D88
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EBMOVE_UNKNOWN_C0A685 $C0, $00
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0001
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $0190
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $1D88
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A685 $80, $00
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $0178
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $1D90
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $0170
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $1DA8
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A685 $40, $00
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0001
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $0170
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $1DB8
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_PAUSE 1*HALF_OF_A_SECOND
	EBMOVE_UNKNOWN_C46E46
	EBMOVE_SHORTJUMP .LOWORD(MOVEMENT_35)