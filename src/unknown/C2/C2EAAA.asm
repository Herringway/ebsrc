
UNKNOWN_C2EAAA: ;$C2EAAA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7EAEC2
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT_CONSTANT NULL, UNKNOWN_7EAECC
	LDA #$0003
	JSL UNKNOWN_C0AE34
	LDX #$0000
	TXA
	JSL SET_WINDOW_MASK
	RTL
