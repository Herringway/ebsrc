
REDIRECT_BATTLE_PSI_MENU:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_PARAM_INT16 ;NEAR A97DStruct*
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	JSR BATTLE_PSI_MENU
	END_C_FUNCTION
