
UNKNOWN_C03F1E: ;$C03F1E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	STZ .LOWORD(GAME_STATE) + game_state::unknown88
	LDX #.LOWORD(PLAYER_POSITION_BUFFER)
	LDY #$0002
@UNKNOWN0:
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA a:.LOWORD(RAM),X
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA a:.LOWORD(RAM)+2,X
	LDA .LOWORD(GAME_STATE)+game_state::leader_direction
	STA a:.LOWORD(RAM)+8,X
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	STA a:.LOWORD(RAM)+6,X
	LDA .LOWORD(GAME_STATE)+game_state::trodden_tile_type
	STA a:.LOWORD(RAM)+4,X
	STZ .LOWORD(MISC_DEBUG_FLAGS)
	STZ a:.LOWORD(RAM)+10,X
	TXA
	CLC
	ADC #$0BF4
	TAX
	DEY
	BNE @UNKNOWN0
	LDY #$0000
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA .LOWORD(GAME_STATE) + game_state::player_controlled_party_members,Y
	AND #$00FF
	ASL
	TAX
	LDA .LOWORD(CHOSEN_FOUR_PTRS),X
	TAX
	STZ a:char_struct::position_index,X
	LDA #$FFFF
	STA a:char_struct::unknown65,X
	STA a:char_struct::unknown55,X
	TYA
	ASL
	TAX
	LDA .LOWORD(GAME_STATE) + game_state::unknownA2,X
	ASL
	TAX
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
	LDA .LOWORD(GAME_STATE)+game_state::leader_direction
	STA .LOWORD(ENTITY_DIRECTIONS),X
	LDA .LOWORD(GAME_STATE)+game_state::trodden_tile_type
	STA .LOWORD(UNKNOWN_30X2_TABLE_37),X
	INY
@UNKNOWN2:
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	STA $02
	TYA
	CMP $02
	BCC @UNKNOWN1
	PLD
	RTL
