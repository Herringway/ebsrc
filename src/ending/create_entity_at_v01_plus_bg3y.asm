
CREATE_ENTITY_AT_V01_PLUS_BG3Y:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 "SPRITE_ID"
	STACK_RESERVE_PARAM_INT16 "ACTIONSCRIPT"
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	STA @LOCAL02
	LDA INITIAL_CAST_ENTITY_SLEEP_FRAMES
	AND #$0003
	STA NEW_ENTITY_VAR0
	INC INITIAL_CAST_ENTITY_SLEEP_FRAMES
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	STA @LOCAL00
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	CLC
	ADC BG3_Y_POS
	STA @LOCAL01
	LDY #.LOWORD(-1)
	LDX @VIRTUAL02
	LDA @LOCAL02
	JSL CREATE_ENTITY
	END_C_FUNCTION