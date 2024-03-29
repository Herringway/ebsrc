
CREATE_PREPARED_ENTITY_NPC:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int npcID
	STACK_RESERVE_PARAM_INT16 ;int actionscript
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	STA @VIRTUAL02
	LOADPTR NPC_CONFIG_TABLE, @VIRTUAL06
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 17
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA ENTITY_PREPARED_X_COORDINATE
	STA @LOCAL00
	LDA ENTITY_PREPARED_Y_COORDINATE
	STA @LOCAL01
	LDY #$FFFF
	STY @LOCAL03
	LDY #1
	LDA [@VIRTUAL06],Y
	LDY @LOCAL03
	JSL CREATE_ENTITY
	STA @LOCAL02
	ASL
	TAX
	LDA ENTITY_PREPARED_DIRECTION
	STA ENTITY_DIRECTIONS,X
	LDA @VIRTUAL02
	STA ENTITY_NPC_IDS,X
	LDA @LOCAL02
	END_C_FUNCTION
