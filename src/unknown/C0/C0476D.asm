
UNKNOWN_C0476D: ;$C0476D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $04
	LDA UNKNOWN_7E9E33
	ASL
	TAX
	LDY ENTITY_ABS_X_TABLE,X
	LDA ENTITY_ABS_Y_TABLE,X
	STA $0E
	LDA ENTITY_ABS_X_FRACTION_TABLE,X
	STA $02
	LDA ENTITY_ABS_Y_FRACTION_TABLE,X
	TAX
	CPY GAME_STATE+game_state::leader_x_coord
	BNE @UNKNOWN0
	LDA $0E
	CMP GAME_STATE+game_state::leader_y_coord
	BNE @UNKNOWN0
	LDA $02
	CMP GAME_STATE + game_state::unknown80
	BNE @UNKNOWN0
	CPX GAME_STATE + game_state::unknown84
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDA #$0001
	STA $04
@UNKNOWN1:
	STY GAME_STATE+game_state::leader_x_coord
	LDA $0E
	STA GAME_STATE+game_state::leader_y_coord
	LDA $02
	STA GAME_STATE + game_state::unknown80
	STX GAME_STATE + game_state::unknown84
	LDA UNKNOWN_7E9E33
	ASL
	TAX
	LDA ENTITY_DIRECTIONS,X
	STA GAME_STATE+game_state::leader_direction
	LDA $04
	STA GAME_STATE + game_state::unknown90
	PLD
	RTS
