
UNKNOWN_C10C55: ;$C10C55
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	MOVE_INT $20, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(UNKNOWN_C10D7C)
	PLD
	RTL
