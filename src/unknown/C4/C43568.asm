
UNKNOWN_C43568: ;$C43568
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL READ_JOYPAD
	JSL UNKNOWN_C2DB3F
	RTL
