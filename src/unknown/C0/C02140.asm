
UNKNOWN_C02140:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	ASL
	TAY
	STY @LOCAL00
	LDA ENTITY_SPRITEMAP_POINTER_LOW,Y
	JSL UNKNOWN_C01B15
	LDX #0
	LDA @VIRTUAL02
	JSL ALLOC_SPRITE_MEM
	LDY @LOCAL00
	LDA ENTITY_NPC_IDS,Y
	AND #$F000
	CMP #$8000
	BNE @UNKNOWN0
	DEC OVERWORLD_ENEMY_COUNT
@UNKNOWN0:
	LDA @VIRTUAL02
	ASL
	TAX
	LDA ENTITY_ENEMY_IDS,X
	CMP #ENEMY::MAGIC_BUTTERFLY
	BNE @UNKNOWN1
	STZ MAGIC_BUTTERFLY_SPAWNED
@UNKNOWN1:
	LDA @VIRTUAL02
	ASL
	TAX
	LDA #.LOWORD(-1)
	STA ENTITY_SPRITE_IDS,X
	STA ENTITY_NPC_IDS,X
	LDA @VIRTUAL02
	JSL UNKNOWN_C09C35
	END_C_FUNCTION
