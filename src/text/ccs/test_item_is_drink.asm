
CC_19_21:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	CPX #0
	BEQ @ARG_IS_ZERO
	TXA
	BRA @ARG_IS_NONZERO
@ARG_IS_ZERO:
	JSR GET_ARGUMENT_MEMORY
	LDA @VIRTUAL06
@ARG_IS_NONZERO:
	JSL GET_ITEM_SUBTYPE_2
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDA #NULL
	END_C_FUNCTION
