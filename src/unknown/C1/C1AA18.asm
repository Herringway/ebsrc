
UNKNOWN_C1AA18: ;$C1AA18
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::CARRIED_MONEY
	LDA #$0005
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	JSL SET_9622_ONE
	JSR a:.LOWORD(UNKNOWN_C10FA3)
	MOVE_INT .LOWORD(GAME_STATE)+game_state::money_carried, $06
	MOVE_INT $06, $0E
	JSL UNKNOWN_C4507A
	JSL CLEAR_9622
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20ABC
	PLD
	RTS