
UNKNOWN_C1C3B6: ;$C1C3B6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$0000
	STA $04
	STA $02
	STA $10
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY #$000F
	LDX #$0001
	STX $0E
	LDA $10
	STA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	LDX $0E
	JSR UNKNOWN_C1C32A
	CMP #$0000
	BEQ @UNKNOWN1
	INC $04
@UNKNOWN1:
	INC $02
	LDA $02
	STA $10
@UNKNOWN2:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	PHA
	LDA $02
	PLY
	STY $02
	CMP $02
	BCC @UNKNOWN0
	LDA $04
	PLD
	RTS
