
UNUSED_C0035B:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @LOCAL00
	LOADPTR BUFFER + $8000, @VIRTUAL06
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 32
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	TXA
	ASL
	STA @VIRTUAL02
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 8
	CLC
	ADC @VIRTUAL02
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	END_C_FUNCTION