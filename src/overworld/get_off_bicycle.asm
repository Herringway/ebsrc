
GET_OFF_BICYCLE: ;$C1BEC6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	MOVE_INT_CONSTANT $00000001, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	DISPLAY_TEXT_PTR MSG_SYS_BICYCLE_OFF
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	JSL WINDOW_TICK
	JSL UNKNOWN_C03CFD
	PLD
	RTL
