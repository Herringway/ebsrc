
UNKNOWN_C466C1:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL01
	JSL UNKNOWN_C07C5B
	STZ PLAYER_INTANGIBILITY_FRAMES
	LDA @LOCAL01
	DEC
	STA SPAWNING_TRAVELLING_PHOTOGRAPHER_ID
	DISPLAY_TEXT_PTR MSG_EVT_PHOTOGRAPHER
	LDA @LOCAL01
	JSL UNKNOWN_C4343E
	END_C_FUNCTION
