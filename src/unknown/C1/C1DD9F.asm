
UNKNOWN_C1DD9F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	MOVE_INT @PARAM00, @VIRTUAL06
	LDA #1
	JSR ENABLE_BLINKING_TRIANGLE
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
	JSR CLEAR_BLINKING_PROMPT
	END_C_FUNCTION
