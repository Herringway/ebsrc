
UNKNOWN_C11F5A: ;$C11F5A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	MOVE_INT $1C, $06
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE) + window_stats::cursor_move_callback
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	PLD
	RTS
