
EXIT_ESCALATOR:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$FFFF
	STA STAIRS_DIRECTION
	STZ GAME_STATE+game_state::walking_style
	STZ PLAYER_MOVEMENT_FLAGS
	STZ MOVEMENT_NOT_NORMAL
	LDA ESCALATOR_NEW_X
	STA GAME_STATE+game_state::leader_x_coord
	LDA ESCALATOR_NEW_Y
	STA GAME_STATE+game_state::leader_y_coord
	STZ GAME_STATE + game_state::leader_y_coord_fraction
	STZ GAME_STATE + game_state::leader_x_coord_fraction
	RTL
