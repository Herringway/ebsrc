
IS_ENTITY_STILL_ON_CAST_SCREEN:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA #0
	STA @LOCAL00
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA BG3_Y_POS
	SEC
	SBC #8
	CMP ENTITY_ABS_Y_TABLE,X
	BCS @UNKNOWN0
	LDA #1
	STA @LOCAL00
@UNKNOWN0:
	LDA @LOCAL00
	END_C_FUNCTION