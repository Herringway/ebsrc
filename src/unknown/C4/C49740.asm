
UNKNOWN_C49740:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	END_STACK_VARS
	PROMOTENEARPTR PALETTES, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA #^PALETTES
	STA @LOCAL02+2
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LOADPTR BUFFER, @LOCAL01
	LDA #.LOWORD(PALETTES)
	JSL MEMCPY24
	LDA #24
	JSL UNKNOWN_C0856B
	END_C_FUNCTION
