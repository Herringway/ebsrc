
UNKNOWN_C06E2C: ;$C06E2C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #WALKING_STYLE::ESCALATOR
	STA GAME_STATE+game_state::walking_style
	STZ MISC_DEBUG_FLAGS
	LDA UNKNOWN_7E5DD0
	STA GAME_STATE+game_state::leader_x_coord
	LDA UNKNOWN_7E5DD2
	STA GAME_STATE+game_state::leader_y_coord
	STZ GAME_STATE + game_state::unknown84
	STZ GAME_STATE + game_state::unknown80
	RTL
