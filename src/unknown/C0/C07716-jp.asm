
UNKNOWN_C07716: ;$C07716
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA GAME_STATE+game_state::current_party_members
	ASL
	TAX
	LDA ENTITY_TICK_CALLBACK_HIGH,X
	AND #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	BNE @RETURN
	LDA ENTITY_SPRITEMAP_POINTER_HIGH,X
	AND #$8000
	BNE @RETURN
	LDA GAME_STATE + game_state::unknownB0
	CMP #$0002
	BEQ @RETURN
	LDA #$0000
	STA $0E
	STA $10
	LDY #$FFFF
	LDX #EVENT_SCRIPT::EVENT_786
	LDA #OVERWORLD_SPRITE::MINI_GHOST
	JSL CREATE_ENTITY
	STA UNKNOWN_7E9F6B
	ASL
	TAX
	LDA #$FFFF
	STA ENTITY_ANIMATION_FRAME,X
	LDA UNKNOWN_7E9F6B
	ASL
	TAX
	LDA #$FF00
	STA ENTITY_SCREEN_Y_TABLE,X
	LDA UNKNOWN_7E9F6B
	ASL
	TAX
	LDA #$FF00
	STA ENTITY_ABS_Y_TABLE,X
	LDA UNKNOWN_7E9F6B
	ASL
	TAX
	LDA #$FF00
	STA ENTITY_ABS_X_TABLE,X
@RETURN:
	PLD
	RTL
