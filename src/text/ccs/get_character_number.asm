
CC_19_10:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	CPX #0
	BEQ @UNKNOWN0
	TXA
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR GET_ARGUMENT_MEMORY
	LDA @VIRTUAL06
@UNKNOWN1:
	JSR UNKNOWN_C190E6
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDA #NULL
	END_C_FUNCTION
