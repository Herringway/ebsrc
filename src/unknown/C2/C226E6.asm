
UNKNOWN_C226E6:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA CURRENT_INTERACTING_EVENT_FLAG
	JSL GET_EVENT_FLAG
	END_C_FUNCTION
