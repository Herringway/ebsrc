
UNKNOWN_C052D4: ;$C052D4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 42
	STA $28
	LDA #$00FF
	STA $26
	STA GAME_STATE + game_state::unknown88
	LDA GAME_STATE+game_state::leader_x_coord
	STA $24
	LDA GAME_STATE+game_state::leader_y_coord
	STA $22
	LDA GAME_STATE+game_state::trodden_tile_type
	STA $04
	STA $20
	LDA GAME_STATE+game_state::walking_style
	STA $1E
	LDA $28
	INC
	INC
	INC
	INC
	AND #$0007
	STA $02
	LDY #.LOWORD(GAME_STATE) + game_state::unknown80
	STY $1C
	MOVE_INT_YPTRSRC __BSS_START__, $06
	MOVE_INT $06, $0E
	LDX $04
	LDA $02
	JSR ADJUST_POSITION_HORIZONTAL
	LDY $1C
	MOVE_INT_YPTRSRC __BSS_START__, $0A
	SEC
	SUB_INT_ASSIGN $06, $0A
	MOVE_INT $06, $12
	LDY #.LOWORD(GAME_STATE) + game_state::unknown84
	STY $1C
	MOVE_INT_YPTRSRC __BSS_START__, $06
	MOVE_INT $06, $0E
	LDX $04
	LDA $02
	JSR ADJUST_POSITION_VERTICAL
	LDY $1C
	MOVE_INT_YPTRSRC __BSS_START__, $0A
	SEC
	SUB_INT_ASSIGN $06, $0A
	MOVE_INT $06, $16
	LDX #$0100
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	DEC
	STA $1C
	OPTIMIZED_MULT $04, .SIZEOF(player_position_buffer_entry)
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	TAX
	LDA $24
	STA a:player_position_buffer_entry::x_coord,X
	LDA $22
	STA a:player_position_buffer_entry::y_coord,X
	LDA $20
	STA $04
	STA a:player_position_buffer_entry::tile_flags,X
	LDA $1E
	STA a:player_position_buffer_entry::walking_style,X
	LDA $28
	STA a:player_position_buffer_entry::direction,X
	STZ a:player_position_buffer_entry::unknown10,X
	LDA $24
	CLC
	ADC $14
	STA $24
	LDA $22
	CLC
	ADC $18
	STA $22
	LDA $1C
	TAX
@UNKNOWN1:
	BNE @UNKNOWN0
	LDA $26
	OPTIMIZED_MULT $04, .SIZEOF(player_position_buffer_entry)
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	TAX
	STX $1C
	LDA #$0000
	STA $1A
.IF .DEFINED(JPN)
	JMP @UNKNOWN3
.ELSE
	BRA @UNKNOWN3
.ENDIF
@UNKNOWN2:
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::player_controlled_party_members,X
.ELSE
	TAX
	LDA GAME_STATE+game_state::player_controlled_party_members,X
.ENDIF
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAY
	LDA $26
	STA __BSS_START__+char_struct::position_index,Y
	LDA #$FFFF
	STA __BSS_START__+char_struct::unknown63 + 2,Y
	STA __BSS_START__+char_struct::unknown53 + 2,Y
	LDA $1A
	ASL
	STA $02
	CLC
.IF .DEFINED(JPN)
	ADC #.LOWORD(GAME_STATE)
	CLC
	ADC #game_state::unknownA2
.ELSE
	ADC #.LOWORD(GAME_STATE) + game_state::unknownA2
.ENDIF
	TAY
	LDA __BSS_START__,Y
	ASL
	PHA
	LDX $1C
	LDA a:player_position_buffer_entry::x_coord,X
	PLX
	STA ENTITY_ABS_X_TABLE,X
	LDA __BSS_START__,Y
	ASL
	PHA
	LDX $1C
	LDA a:player_position_buffer_entry::y_coord,X
	PLX
	STA ENTITY_ABS_Y_TABLE,X
	LDX $1C
	LDA a:player_position_buffer_entry::direction,X
	LDX $02
	STA ENTITY_DIRECTIONS,X
	LDX $1C
	LDA a:player_position_buffer_entry::tile_flags,X
	LDX $02
	STA ENTITY_SURFACE_FLAGS,X
	LDA $26
	SEC
	SBC #$0010
	STA $26
	LDX $1C
	TXA
	SEC
	SBC #$00C0
	TAX
	STX $1C
	LDA $1A
	INC
	STA $1A
@UNKNOWN3:
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	STA $02
	LDA $1A
	CMP $02
	BCCL @UNKNOWN2
	PLD
	RTL
