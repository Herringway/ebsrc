
UNKNOWN_C4B57D: ;$C4B57D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$0018
	JSL UNKNOWN_C4B4BE
	RTL
