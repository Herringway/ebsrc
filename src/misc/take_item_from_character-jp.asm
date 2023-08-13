
TAKE_ITEM_FROM_CHARACTER: ;$C18EAD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STX $04
	CMP #$00FF
	BNE @UNKNOWN3
	LDA #$0000
	STA $02
	STA $10
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA $10
	STA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	CLC
	ADC #game_state::party_members
	TAY
	STY $0E
	LDX $04
	LDA RAM,Y
	AND #$00FF
	JSR TAKE_ITEM_FROM_SPECIFIC_CHARACTER
	CMP #$0000
	BEQ @UNKNOWN1
	LDY $0E
	LDA RAM,Y
	AND #$00FF
	BRA @UNKNOWN4
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
	LDA #$0000
	BRA @UNKNOWN4
@UNKNOWN3:
	LDX $04
	JSR TAKE_ITEM_FROM_SPECIFIC_CHARACTER
@UNKNOWN4:
	PLD
	RTL
