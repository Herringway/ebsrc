
UNKNOWN_C04049: ;$C04049
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STZ a:.LOWORD(UNKNOWN_7E0081)
	RTL
