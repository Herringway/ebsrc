
CLEAR_CAMERA_FOCUS:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	STZ GAME_STATE + game_state::leader_has_moved
	STZ GAME_STATE + game_state::camera_mode
	END_C_FUNCTION
