
CREATE_PREPARED_ENTITY_SPRITE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int sprite
	STACK_RESERVE_PARAM_INT16 ;int actionscript
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	STA @LOCAL03
	LDA ENTITY_PREPARED_X_COORDINATE
	STA @LOCAL00
	LDA ENTITY_PREPARED_Y_COORDINATE
	STA @LOCAL01
	LDY #$FFFF
	LDA @LOCAL03
	JSL CREATE_ENTITY
	STA @LOCAL02
	ASL
	TAX
	LDA ENTITY_PREPARED_DIRECTION
	STA ENTITY_DIRECTIONS,X
	LDA @LOCAL02
	END_C_FUNCTION
