
UNKNOWN_C0402B:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	MOVE_INT @PARAM00, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL UNKNOWN_C083E3
	END_C_FUNCTION
