
UNKNOWN_C0EC77:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	BNE @UNKNOWN0
	LOADPTR UNKNOWN_E1AE83, @LOCAL00
	LOADPTR BUFFER, @LOCAL01
	JSL DECOMP
	BRA @UNKNOWN1
@UNKNOWN0:
	LOADPTR UNKNOWN_E1AEFD, @LOCAL00
	LOADPTR BUFFER, @LOCAL01
	JSL DECOMP
@UNKNOWN1:
	END_C_FUNCTION
