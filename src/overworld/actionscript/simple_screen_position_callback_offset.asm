
ACTIONSCRIPT_SIMPLE_SCREEN_POSITION_CALLBACK_OFFSET:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_ABS_X_TABLE,X
	SEC
	SBC BG1_X_POS
	CLC
	ADC ENTITY_SCRIPT_VAR0_TABLE,X
	STA ENTITY_SCREEN_X_TABLE,X
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	SEC
	SBC BG1_Y_POS
	CLC
	ADC ENTITY_SCRIPT_VAR1_TABLE,X
	STA ENTITY_SCREEN_Y_TABLE,X
	END_C_FUNCTION