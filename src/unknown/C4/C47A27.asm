
UNKNOWN_C47A27:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX GAME_STATE+game_state::current_party_members
	STX @LOCAL02
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	SEC
	SBC #112
	STA BG1_Y_POS
	STA @VIRTUAL02
	LDX @LOCAL02
	TXA
	ASL
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	SEC
	SBC @VIRTUAL02
	STA @LOCAL01
	CLC
	ADC #96
	STA @LOCAL00
	LDY #240
	LDA @LOCAL01
	SEC
	SBC #96
	TAX
	LDA #16
	JSL UNKNOWN_C47930
	END_C_FUNCTION
