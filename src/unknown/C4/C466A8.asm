
UNKNOWN_C466A8: ;$C466A8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL UNKNOWN_C46028
	STA UNKNOWN_7E9E33
	LDA #$0002
	STA GAME_STATE + game_state::unknownB0
	RTL
