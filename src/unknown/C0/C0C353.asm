
UNKNOWN_C0C353: ;$C0C353
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(UNKNOWN_7E1A42)
	JSL UNKNOWN_C0C30C
	RTL
