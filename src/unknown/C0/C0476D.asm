
UNKNOWN_C0476D: ;$C0476D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $04
	LDA .LOWORD(UNKNOWN_7E9E33)
	ASL
	TAX
	LDY .LOWORD(ENTITY_ABS_X_TABLE),X
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA $0E
	LDA .LOWORD(ENTITY_ABS_X_FRACTION_TABLE),X
	STA $02
	LDA .LOWORD(ENTITY_ABS_Y_FRACTION_TABLE),X
	TAX
	CPY .LOWORD(GAME_STATE)+game_state::leader_x_coord
	BNE @UNKNOWN0
	LDA $0E
	CMP .LOWORD(GAME_STATE)+game_state::leader_y_coord
	BNE @UNKNOWN0
	LDA $02
	CMP .LOWORD(GAME_STATE) + game_state::unknown80
	BNE @UNKNOWN0
	CPX .LOWORD(GAME_STATE) + game_state::unknown84
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDA #$0001
	STA $04
@UNKNOWN1:
	STY .LOWORD(GAME_STATE)+game_state::leader_x_coord
	LDA $0E
	STA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA $02
	STA .LOWORD(GAME_STATE) + game_state::unknown80
	STX .LOWORD(GAME_STATE) + game_state::unknown84
	LDA .LOWORD(UNKNOWN_7E9E33)
	ASL
	TAX
	LDA .LOWORD(ENTITY_DIRECTIONS),X
	STA .LOWORD(GAME_STATE)+game_state::leader_direction
	LDA $04
	STA .LOWORD(GAME_STATE) + game_state::unknown90
	PLD
	RTS
