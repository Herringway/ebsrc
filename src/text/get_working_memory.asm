
GET_WORKING_MEMORY:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_RETURN_INT32
	END_STACK_VARS
	JSR GET_ACTIVE_WINDOW_ADDRESS
	CLC
	ADC #window_stats::working_memory
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @RETURNVAL
	END_C_FUNCTION
