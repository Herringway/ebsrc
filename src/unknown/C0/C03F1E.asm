
UNKNOWN_C03F1E:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	END_STACK_VARS
	STZ GAME_STATE + game_state::unknown88
	LDX #.LOWORD(PLAYER_POSITION_BUFFER)
	LDY #$0002
@UNKNOWN0:
	LDA GAME_STATE+game_state::leader_x_coord
	STA a:player_position_buffer_entry::x_coord,X
	LDA GAME_STATE+game_state::leader_y_coord
	STA a:player_position_buffer_entry::y_coord,X
	LDA GAME_STATE+game_state::leader_direction
	STA a:player_position_buffer_entry::direction,X
	LDA GAME_STATE+game_state::walking_style
	STA a:player_position_buffer_entry::walking_style,X
	LDA GAME_STATE+game_state::trodden_tile_type
	STA a:player_position_buffer_entry::tile_flags,X
	STZ PLAYER_MOVEMENT_FLAGS
	STZ a:player_position_buffer_entry::unknown10,X
	TXA
	CLC
	ADC #$0BF4
	TAX
	DEY
	BNE @UNKNOWN0
	LDY #$0000
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA GAME_STATE + game_state::player_controlled_party_members,Y
	AND #$00FF
	ASL
	TAX
	LDA CHOSEN_FOUR_PTRS,X
	TAX
	STZ a:char_struct::position_index,X
	LDA #$FFFF
	STA a:char_struct::unknown65,X
	STA a:char_struct::unknown55,X
	TYA
	ASL
	TAX
	LDA GAME_STATE + game_state::unknownA2,X
	ASL
	TAX
	LDA GAME_STATE+game_state::leader_x_coord
	STA ENTITY_ABS_X_TABLE,X
	LDA GAME_STATE+game_state::leader_y_coord
	STA ENTITY_ABS_Y_TABLE,X
	LDA GAME_STATE+game_state::leader_direction
	STA ENTITY_DIRECTIONS,X
	LDA GAME_STATE+game_state::trodden_tile_type
	STA ENTITY_SURFACE_FLAGS,X
	INY
@UNKNOWN2:
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	STA @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BCC @UNKNOWN1
	PLD
	RTL
