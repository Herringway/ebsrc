
UNKNOWN_C1A778: ;$C1A778
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	STZ UNKNOWN_7E9CD4
	TXA
	JSR UNKNOWN_C19F29
	LDX $0E
	TXA
	JSL UNKNOWN_C1A1D8
	PLD
	RTL
