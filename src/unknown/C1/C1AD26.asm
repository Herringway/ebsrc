
UNKNOWN_C1AD26: ;$C1AD26
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	MOVE_INT UNKNOWN_7E9D12, $06
	MOVE_INT $06, $14
	PLD
	RTS
