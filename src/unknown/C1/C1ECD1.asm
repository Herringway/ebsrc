
UNKNOWN_C1ECD1: ;$C1ECD1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	XBA
	AND #$00FF
	JSL UNKNOWN_C1EC8F
	RTL
