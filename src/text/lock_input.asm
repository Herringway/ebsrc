
LOCK_INPUT: ;$C100C7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$0001
	STA INPUT_LOCK_FLAG
	RTS
