
BTLACT_DEFENSE_SHOWER: ;$C2AB0D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL BTLACT_DEFENSE_SPRAY
	RTL