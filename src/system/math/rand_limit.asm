
RAND_LIMIT: ;$C26A2D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	JSR RAND_LONG
	LDX $0E
	JSR TRUNCATE_16_TO_8
	PLD
	RTS
