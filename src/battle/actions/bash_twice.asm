
BTLACT_DOUBLE_BASH: ;$C28FF9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL BTLACT_BASH
	JSL BTLACT_BASH
	RTL
