
UNKNOWN_C46B65:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA GAME_STATE+game_state::leader_x_coord
	STA ENTITY_SCRIPT_VAR6_TABLE,X
	LDA GAME_STATE+game_state::leader_y_coord
	STA ENTITY_SCRIPT_VAR7_TABLE,X
	END_C_FUNCTION
