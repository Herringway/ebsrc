
UNKNOWN_C07A56:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @VIRTUAL04
	STX @VIRTUAL02
	STX @LOCAL03
	STA @LOCAL02
	LDA @VIRTUAL04
	STA MOVING_PARTY_MEMBER_ENTITY_ID
	LDY CURRENT_PARTY_MEMBER_TICK
	LDX @VIRTUAL02
	LDA @LOCAL02
	JSL UNKNOWN_C0780F
	STA @LOCAL01
	CMP #.LOWORD(-1)
	BNE @UNKNOWN0
	LDA @VIRTUAL04
	ASL
	TAX
	LDA @LOCAL01
	STA ENTITY_ANIMATION_FRAME,X
	JMP @UNKNOWN3
@UNKNOWN0:
	LOADPTR SPRITE_GROUPING_PTR_TABLE, @VIRTUAL0A
	LDA @LOCAL01
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @VIRTUAL04
	ASL
	TAX
	LDA @LOCAL00+2
	STA ENTITY_GRAPHICS_PTR_HIGH,X
	LDA @LOCAL00
	CLC
	ADC #9
	STA ENTITY_GRAPHICS_PTR_LOW,X
	LDY #8
	LDA [@LOCAL00],Y
	AND #$00FF
	STA ENTITY_GRAPHICS_SPRITE_BANK,X
	LDA @VIRTUAL02
	STA ENTITY_WALKING_STYLES,X
	LDA CURRENT_PARTY_MEMBER_TICK
	CLC
	ADC #char_struct::unknown55
	TAY
	LDA __BSS_START__,Y
	PHA
	LDA @VIRTUAL02
	STA TEMP_REGISTER
	PLA
	STA @VIRTUAL02
	LDA TEMP_REGISTER
	CMP @VIRTUAL02
	BEQ @UNKNOWN1
	LDA @LOCAL03
	STA @VIRTUAL02
	STA __BSS_START__,Y
	TXA
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA __BSS_START__,X
	ORA #SPRITE_TABLE_10_FLAGS::UNKNOWN15
	STA __BSS_START__,X
@UNKNOWN1:
	LDA GAME_STATE + game_state::unknown90
	BEQ @UNKNOWN2
	LDA @LOCAL03
	STA @VIRTUAL02
	CMP #12
	BEQ @UNKNOWN2
	LDA @VIRTUAL04
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA __BSS_START__,X
	AND #$FFFF ^ (SPRITE_TABLE_10_FLAGS::UNKNOWN15 | SPRITE_TABLE_10_FLAGS::UNKNOWN14 | SPRITE_TABLE_10_FLAGS::UNKNOWN13)
	STA __BSS_START__,X
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA @VIRTUAL04
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA __BSS_START__,X
	ORA #SPRITE_TABLE_10_FLAGS::UNKNOWN14 | SPRITE_TABLE_10_FLAGS::UNKNOWN13
	STA __BSS_START__,X
@UNKNOWN3:
	LDA GAME_STATE + game_state::unknownB0
	CMP #2
	BNE @UNKNOWN4
	LDA @VIRTUAL04
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR7_TABLE)
	TAX
	LDA __BSS_START__,X
	ORA #SPRITE_TABLE_10_FLAGS::UNKNOWN12
	STA __BSS_START__,X
@UNKNOWN4:
	END_C_FUNCTION
