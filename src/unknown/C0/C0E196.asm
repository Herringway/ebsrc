
UNKNOWN_C0E196: ;$C0E196
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDA #.LOWORD(GAME_STATE) + game_state::unknown88
	STA $04
	STA $14
	LDX $04
	LDA RAM,X
	OPTIMIZED_MULT $04, .SIZEOF(player_position_buffer_entry)
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	STA $02
	LDA #.LOWORD(GAME_STATE) + game_state::leader_x_coord
	STA $12
	TAX
	LDA RAM,X
	LDX $02
	STA a:player_position_buffer_entry::x_coord,X
	LDX #.LOWORD(GAME_STATE) + game_state::leader_y_coord
	STX $10
	LDA RAM,X
	LDX $02
	STA a:player_position_buffer_entry::y_coord,X
	LDY GAME_STATE+game_state::current_party_members
	LDX $10
	LDA RAM,X
	TAX
	STX $0E
	LDA $12
	TAX
	LDA RAM,X
	LDX $0E
	JSL UNKNOWN_C05F33
	LDX $02
	STA a:player_position_buffer_entry::tile_flags,X
	LDX $02
	STZ a:player_position_buffer_entry::walking_style,X
	LDA GAME_STATE+game_state::leader_direction
	LDX $02
	STA a:player_position_buffer_entry::direction,X
	LDA $14
	STA $04
	LDX $04
	LDA RAM,X
	INC
	LDX $04
	STA RAM,X
	AND #$00FF
	LDX $04
	STA RAM,X
	PLD
	RTS
