
CC_1F_01:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	TXA
	JSL REDIRECT_STOP_MUSIC
	LDA #NULL
	RTS
