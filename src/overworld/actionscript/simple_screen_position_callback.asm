
ACTIONSCRIPT_SIMPLE_SCREEN_POSITION_CALLBACK:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_ABS_X_TABLE,X
	SEC
	SBC BG1_X_POS
	STA ENTITY_SCREEN_X_TABLE,X
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	SEC
	SBC BG1_Y_POS
	STA ENTITY_SCREEN_Y_TABLE,X
	END_C_FUNCTION
