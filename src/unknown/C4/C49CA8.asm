
UNKNOWN_C49CA8: ;$C49CA8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	AND #$00FF
	CLC
	ADC #$0008
	CLC
	ADC UNKNOWN_7E9F2F
	STA UNKNOWN_7E9F2F
	LSR
	LSR
	LSR
	ASL
	ASL
	ASL
	ASL
	STA UNKNOWN_7E9F31
	RTL
