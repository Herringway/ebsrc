
GET_PSI_NAME: ;$C1C403
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STA $12
	CMP #$0001
	BNE @NOT_ROCKIN
	LDA #.LOWORD(GAME_STATE) + game_state::favourite_thing
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	BRA @UNKNOWN1
@NOT_ROCKIN:
	.A16
	LOADPTR PSI_NAME_TABLE, $06
	LDA $12
	DEC
	OPTIMIZED_MULT $04, 25
	CLC
	ADC $06
	STA $06
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDA #$FFFF
	JSL UNKNOWN_C447FB
	PLD
	RTS
