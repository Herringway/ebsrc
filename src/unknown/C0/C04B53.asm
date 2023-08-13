
UNKNOWN_C04B53: ;$C04B53
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDX GAME_STATE+game_state::walking_style
	STX $12
	CPX #WALKING_STYLE::STAIRS
	BEQ @UNKNOWN0
	LDA GAME_STATE+game_state::leader_direction
	STA $10
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA UNKNOWN_7E5DCA
	STA $10
@UNKNOWN1:
	LDA #.LOWORD(GAME_STATE) + game_state::unknownB0
	STA $02
	LDX $02
	LDA RAM,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN4
	CMP #$0002
	BEQL @UNKNOWN6
	CMP #$0003
	BEQL @UNKNOWN7
	JMP @UNKNOWN8
@UNKNOWN4:
	LDY #.LOWORD(GAME_STATE) + game_state::unknown80
	STY $0E
	LDA $10
	ASL
	ASL
	STA $04
	LDX $12
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $04
	STA $10
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC RAM, $0A
	LDY $0E
	MOVE_INT_YPTRSRC RAM, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	LDA $06
	STA RAM,Y
	LDA $08
	STA RAM+2,Y
	LDY #.LOWORD(GAME_STATE) + game_state::unknown84
	STY $12
	LDA $10
	CLC
	ADC #.LOWORD(VERTICAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC RAM, $0A
	LDY $12
	MOVE_INT_YPTRSRC RAM, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	LDA $06
	STA RAM,Y
	LDA $08
	STA RAM+2,Y
	LDX #.LOWORD(GAME_STATE) + game_state::unknownB2
	LDA RAM,X
	DEC
	STA RAM,X
	BNE @UNKNOWN5
	LDA #$0000
	LDX $02
	STA RAM,X
	LDA GAME_STATE + game_state::unknownB4
	STA GAME_STATE+game_state::walking_style
@UNKNOWN5:
	LDA #$0001
	STA GAME_STATE + game_state::unknown90
	BRA @UNKNOWN8
@UNKNOWN6:
	JSR UNKNOWN_C0476D
	BRA @UNKNOWN8
@UNKNOWN7:
	JSR UNKNOWN_C04AAD
@UNKNOWN8:
	PLD
	RTS
