
BTLACT_BIG_BOTTLE_ROCKET: ;$C2A5DA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #BIG_BOTTLE_ROCKET_COUNT
	JSR BOTTLE_ROCKET_COMMON
	RTL
