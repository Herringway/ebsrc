
UNKNOWN_C4675C: ;$C4675C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA .LOWORD(GAME_STATE) + game_state::unknownA2
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA a:.LOWORD(RAM),X
	LDA #$0001
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	CMP #$0009
	BEQ @UNKNOWN1
	LDA $0E
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_16)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$7FFF
	STA a:.LOWORD(RAM),X
@UNKNOWN1:
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BCC @UNKNOWN0
	PLD
	RTL