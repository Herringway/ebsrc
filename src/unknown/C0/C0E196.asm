
UNKNOWN_C0E196:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #.LOWORD(GAME_STATE) + game_state::unknown88
	STA @VIRTUAL04
	STA @LOCAL03
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(player_position_buffer_entry)
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	STA @VIRTUAL02
	LDA #.LOWORD(GAME_STATE) + game_state::leader_x_coord
	STA @LOCAL02
	TAX
	LDA __BSS_START__,X
	LDX @VIRTUAL02
	STA a:player_position_buffer_entry::x_coord,X
	LDX #.LOWORD(GAME_STATE) + game_state::leader_y_coord
	STX @LOCAL01
	LDA __BSS_START__,X
	LDX @VIRTUAL02
	STA a:player_position_buffer_entry::y_coord,X
	LDY GAME_STATE+game_state::current_party_members
	LDX @LOCAL01
	LDA __BSS_START__,X
	TAX
	STX @LOCAL00
	LDA @LOCAL02
	TAX
	LDA __BSS_START__,X
	LDX @LOCAL00
	JSL UNKNOWN_C05F33
	LDX @VIRTUAL02
	STA a:player_position_buffer_entry::tile_flags,X
	LDX @VIRTUAL02
	STZ a:player_position_buffer_entry::walking_style,X
	LDA GAME_STATE+game_state::leader_direction
	LDX @VIRTUAL02
	STA a:player_position_buffer_entry::direction,X
	LDA @LOCAL03
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	INC
	LDX @VIRTUAL04
	STA __BSS_START__,X
	AND #$00FF
	LDX @VIRTUAL04
	STA __BSS_START__,X
	END_C_FUNCTION
