
UNKNOWN_C4B587:
	BEGIN_C_FUNCTION
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDX PATH_HEAP_CURRENT
	CLC
	ADC PATH_HEAP_CURRENT
	STA PATH_HEAP_CURRENT
	TXA
	END_C_FUNCTION
