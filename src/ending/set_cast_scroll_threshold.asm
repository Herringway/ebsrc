
SET_CAST_SCROLL_THRESHOLD:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL00
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA @LOCAL00
	ASL
	ASL
	ASL
	CLC
	ADC BG3_Y_POS
	STA ENTITY_SCRIPT_VAR0_TABLE,X
	END_C_FUNCTION
