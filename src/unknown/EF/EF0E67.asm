
UNKNOWN_EF0E67:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(timed_delivery)
	CLC
	ADC #timed_delivery::enter_speed
	TAX
	LDA TIMED_DELIVERY_TABLE,X
	END_C_FUNCTION
