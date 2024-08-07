
TRY_RENDERING_PHOTOGRAPH:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @LOCAL06
	LDX #0
	STX @LOCAL05
	LOADPTR PHOTOGRAPHER_CFG_TABLE, @VIRTUAL0A
	LDA @LOCAL06
	LDY #.SIZEOF(photographer_config_entry)
	JSL MULT168
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	STA @VIRTUAL06
	LDA @VIRTUAL0A+2
	STA @VIRTUAL06+2
	LDA [@VIRTUAL06]
	JSL GET_EVENT_FLAG
	CMP #0
	BEQL @RETURN
	LDA #1
	STA PHOTOGRAPH_MAP_LOADING_MODE
	LDA @LOCAL06
	STA CUR_PHOTO_DISPLAY
	LDA ENEMY_SPAWNS_ENABLED
	STA @VIRTUAL02
	STZ ENEMY_SPAWNS_ENABLED
	LDY #0
	LDX #$2000
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #0
	STA __BSS_START__,X
	INX
	INX
	INY
@UNKNOWN2:
	CPY #1024
	BCC @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	STZ PALETTE_UPLOAD_MODE
	REP #PROC_FLAGS::ACCUM8
	LOADPTR UNKNOWN_E1E924+6, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 1
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 1
	JSL MEMCPY16
	LDY #4
	LDA [@VIRTUAL0A],Y
	ASL
	ASL
	ASL
	TAX
	LDY #2
	LDA [@VIRTUAL0A],Y
	ASL
	ASL
	ASL
	JSL LOAD_MAP_AT_POSITION
	LDA @VIRTUAL02
	STA ENEMY_SPAWNS_ENABLED
	STZ BG2_Y_POS
	STZ BG2_X_POS
	STZ PHOTOGRAPH_MAP_LOADING_MODE
	STZ @LOCAL04
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 6
	STA @LOCAL03
	CLC
	ADC #42
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL02
	LDA @VIRTUAL06+2
	STA @LOCAL02+2
	LDA [@VIRTUAL06]
	BEQ @UNKNOWN4
	LDA @LOCAL04
	STA NEW_ENTITY_VAR0
	INC @LOCAL04
	LDA @LOCAL03
	CLC
	ADC #photographer_config_entry::object_config + photographer_config_entry_object::tile_x
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	ASL
	ASL
	ASL
	STA @LOCAL00
	LDA @LOCAL03
	CLC
	ADC #photographer_config_entry::object_config + photographer_config_entry_object::tile_y
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	ASL
	ASL
	ASL
	STA @LOCAL00+2
	LDY #.LOWORD(-1)
	LDX #EVENT_SCRIPT::EVENT_799
	MOVE_INT @LOCAL02, @VIRTUAL06
	LDA [@VIRTUAL06]
	JSL CREATE_ENTITY
@UNKNOWN4:
	INC @VIRTUAL02
@UNKNOWN5:
	LDA @VIRTUAL02
	CMP #4
	BCCL @UNKNOWN3
	LDA #0
	STA @VIRTUAL04
	JMP @UNKNOWN9
@UNKNOWN7:
	LDA @LOCAL06
	ASL
	ASL
	ASL
	CLC
.IF .DEFINED(JPN)
	ADC #.LOWORD(GAME_STATE)
	CLC
	ADC @VIRTUAL04
	TAX
	LDA a:game_state::saved_photo_states + photo_state::party,X
.ELSE
	ADC @VIRTUAL04
	TAX
	LDA GAME_STATE + game_state::saved_photo_states + photo_state::party,X
.ENDIF
	AND #$00FF
	STA @VIRTUAL02
	BEQ @UNKNOWN8
	LDA @VIRTUAL02
	AND #$001F
	CMP #18
	BCS @UNKNOWN8
	CMP #0
	BEQ @UNKNOWN8
	LDA @LOCAL04
	STA NEW_ENTITY_VAR0
	INC @LOCAL04
	LDA @VIRTUAL04
	ASL
	ASL
	TAX
	STX @LOCAL05
	LDA @VIRTUAL02
	JSL UNKNOWN_C079EC
	STA @LOCAL01
	LDX @LOCAL05
	TXA
	CLC
	ADC #14
	MOVE_INTY @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	ASL
	ASL
	ASL
	STA @LOCAL00
	TXA
	CLC
	ADC #16
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	ASL
	ASL
	ASL
	STA @LOCAL00+2
	LDY #.LOWORD(-1)
	LDX #EVENT_SCRIPT::EVENT_800
	LDA @LOCAL01
	JSL CREATE_ENTITY
	TAY
	LDX @VIRTUAL02
	TYA
	JSL UNKNOWN_C07A31
@UNKNOWN8:
	INC @VIRTUAL04
@UNKNOWN9:
	LDA @VIRTUAL04
	CMP #6
	BCCL @UNKNOWN7
	LDX #1
	STX @LOCAL05
@RETURN:
	LDX @LOCAL05
	TXA
	END_C_FUNCTION
