
UNKNOWN_C03A94: ;$C03A94
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 34
	STA $20
	LDA UNKNOWN_7E438A
	ORA UNKNOWN_7E438C
	BEQ @UNKNOWN0
	LDA UNKNOWN_7E438A
	ASL
	ASL
	ASL
	STA $1E
	LDA UNKNOWN_7E438C
	ASL
	ASL
	ASL
	TAX
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA GAME_STATE+game_state::leader_x_coord
	STA $1E
	LDX GAME_STATE+game_state::leader_y_coord
@UNKNOWN1:
	LDA $1E
	JSL LOAD_SECTOR_ATTRS
	AND #$0007
	STA $1C
	STA GAME_STATE+game_state::unknown92
	ASL
	STA FOOTSTEP_SOUND_ID
	STZ FOOTSTEP_SOUND_ID_OVERRIDE
	LDA $1C
	CMP #$0003
	BEQ @UNKNOWN2
	STZ GAME_STATE+game_state::walking_style
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA #WALKING_STYLE::SLOWEST
	STA GAME_STATE+game_state::walking_style
@UNKNOWN3:
	LDA CURRENT_ENTITY_SLOT
	STA $1A
	LDA #$FFFF
	STA CURRENT_ENTITY_SLOT
	STZ $18
	JMP @UNKNOWN9
@UNKNOWN4:
	LDA $18
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	TAX
	BEQL @UNKNOWN8
	TXA
	DEC
	STA $04
	LDA $18
	ASL
	STA $16
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
	STA $02
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	STA NEW_ENTITY_VAR0
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	STA NEW_ENTITY_VAR1
	LDA $16
	STA NEW_ENTITY_VAR5
	LDA ENTITY_SPRITEMAP_POINTER_HIGH,X
	STA $14
	LDA ENTITY_TICK_CALLBACK_HIGH,X
	STA $16
	LDA $02
	JSL UNKNOWN_C02140
	LDA $02
	STA UNKNOWN_7E9F73
	LDA GAME_STATE+game_state::unknown92
	CMP #$0003
	BEQ @UNKNOWN6
	LDA $18
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAY
	LDX #$0000
	LDA $04
	JSL UNKNOWN_C0780F
	STA $1C
	LDA GAME_STATE+game_state::leader_x_coord
	STA $0E
	LDA GAME_STATE+game_state::leader_y_coord
	STA $10
	LDY $02
	LDA $04
	OPTIMIZED_MULT $04, .SIZEOF(character_initial_entity_entry)
	TAX
	INX
	INX
	INX
	INX
	LDA f:CHARACTER_INITIAL_ENTITY_DATA,X ;character_initial_entity_entry::actionscript_id
	TAX
	LDA $1C
	JSL CREATE_ENTITY
	STA $12
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA $18
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAY
	LDX #$000A
	LDA $04
	JSL UNKNOWN_C0780F
	STA $1C
	LDA GAME_STATE+game_state::leader_x_coord
	STA $0E
	LDA GAME_STATE+game_state::leader_y_coord
	STA $10
	LDY $02
	LDA $04
	OPTIMIZED_MULT $04, .SIZEOF(character_initial_entity_entry)
	TAX
	INX
	INX
	INX
	INX
	LDA f:CHARACTER_INITIAL_ENTITY_DATA,X ;character_initial_entity_entry::actionscript_id
	TAX
	LDA $1C
	JSL CREATE_ENTITY
	STA $12
@UNKNOWN7:
	ASL
	TAX
	LDA $14
	STA ENTITY_SPRITEMAP_POINTER_HIGH,X
	LDA $16
	STA ENTITY_TICK_CALLBACK_HIGH,X
	LDA $20
	STA ENTITY_DIRECTIONS,X
	STZ ENTITY_ANIMATION_FRAME,X
	LDA $12
	JSL UNKNOWN_C0A780
@UNKNOWN8:
	INC $18
@UNKNOWN9:
	LDA $18
	CMP #$0006
	BCCL @UNKNOWN4
	LDA $1A
	STA CURRENT_ENTITY_SLOT
	JSL UNKNOWN_C039E5
	LDA #$FFFF
	STA UNKNOWN_7E5DA8
	LDA UNKNOWN_7E5D9A
	STA $02
	STZ UNKNOWN_7E5D9A
	LDA #$0004
	STA $0E
	LDY GAME_STATE+game_state::current_party_members
	LDX GAME_STATE+game_state::leader_y_coord
	LDA GAME_STATE+game_state::leader_x_coord
	JSL UNKNOWN_C05B7B
	LDA $02
	STA UNKNOWN_7E5D9A
	LDA UNKNOWN_7E5DA8
	CMP #$FFFF
	BEQ @UNKNOWN11
	LDX UNKNOWN_7E5DAA
	LDA UNKNOWN_7E5DA8
	JSL UNKNOWN_C07526
@UNKNOWN11:
	PLD
	RTL
