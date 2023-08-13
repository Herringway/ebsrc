
UNKNOWN_C047CF: ;$C047CF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDA BATTLE_SWIRL_FLAG
	BNEL @UNKNOWN9
	LDA BATTLE_SWIRL_COUNTDOWN
	BEQ @UNKNOWN1
	DEC BATTLE_SWIRL_COUNTDOWN
	JMP @UNKNOWN9
@UNKNOWN1:
	LDA UNKNOWN_7E5DC6
	AND #$0300
	BEQ @UNKNOWN2
	CMP #$0200
	BEQ @UNKNOWN3
	CMP #$0100
	BEQ @UNKNOWN4
	CMP #$0300
	BEQ @UNKNOWN5
	BRA @UNKNOWN6
@UNKNOWN2:
	LDA #$0007
	STA $02
	STA $14
	BRA @UNKNOWN6
@UNKNOWN3:
	LDA #$0005
	STA $02
	STA $14
	BRA @UNKNOWN6
@UNKNOWN4:
	LDA #$0001
	STA $02
	STA $14
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA #$0003
	STA $02
	STA $14
@UNKNOWN6:
	LDA #$FFFF
	STA UNKNOWN_7E5DA8
	LDA $14
	STA $02
	STA $0E
	LDY GAME_STATE+game_state::current_party_members
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSL UNKNOWN_C05B7B
	LDA UNKNOWN_7E5DA8
	CMP #$FFFF
	BEQ @UNKNOWN7
	LDX UNKNOWN_7E5DAA
	LDA UNKNOWN_7E5DA8
	JSL UNKNOWN_C07526
@UNKNOWN7:
	LDX #$0001
	BEQ @UNKNOWN8
	LDY #.LOWORD(GAME_STATE) + game_state::unknown80
	STY $12
	LDA $02
	ASL
	ASL
	STA $10
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS) + .SIZEOF(movement_speeds) * 12
	TAY
	MOVE_INT_YPTRSRC RAM, $0A
	LDY $12
	MOVE_INT_YPTRSRC RAM, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT_YPTRDEST $06, RAM
	LDY #.LOWORD(GAME_STATE) + game_state::unknown84
	STY $14
	LDA $10
	CLC
	ADC #.LOWORD(VERTICAL_MOVEMENT_SPEEDS) + .SIZEOF(movement_speeds) * 12
	TAY
	MOVE_INT_YPTRSRC RAM, $0A
	LDY $14
	MOVE_INT_YPTRSRC RAM, $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT_YPTRDEST $06, RAM
@UNKNOWN8:
	LDA #$0001
	STA GAME_STATE + game_state::unknown90
@UNKNOWN9:
	PLD
	RTS
