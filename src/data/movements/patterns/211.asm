
MOVEMENT_211: ;$C3D91C
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EBMOVE_UNKNOWN_C0A685 $80, $02
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0003
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $0528
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $2730
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A685 $00, $02
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $05, $0002
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $06, $0600
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $07, $2730
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C03F1E
	EBMOVE_UNKNOWN_08_3B_94_C0
	EBMOVE_UNKNOWN_WRITE_11A6 $A023
	EBMOVE_UNKNOWN_C46E46
	EBMOVE_PAUSE $01
	EBMOVE_WRITE_WORD_TEMPVAR $0002
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EBMOVE_PAUSE $70
	EBMOVE_UNKNOWN_C46E46
	EBMOVE_SHORTJUMP .LOWORD(MOVEMENT_35)
