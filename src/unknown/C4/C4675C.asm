
UNKNOWN_C4675C: ;$C4675C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA GAME_STATE + game_state::unknownA2
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA RAM,X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA RAM,X
	LDA #$0001
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	TAX
	LDA GAME_STATE + game_state::unknown96,X
	AND #$00FF
	CMP #$0009
	BEQ @UNKNOWN1
	LDA $0E
	ASL
	TAX
	LDA GAME_STATE + game_state::unknownA2,X
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA RAM,X
	AND #$7FFF
	STA RAM,X
@UNKNOWN1:
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BCC @UNKNOWN0
	PLD
	RTL
