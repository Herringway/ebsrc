
UNKNOWN_C02668:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @LOCAL0E
	STX @LOCAL0D
	STA @LOCAL0C
	LDA DEBUG
	BEQ @UNKNOWN0
	JSL UNKNOWN_EFE759
	CMP #0
	BEQ @UNKNOWN0
	JSL RAND
	CMP #16
	BCS @UNKNOWN0
	STZ @LOCAL0B
	LOADPTR ENEMY_BATTLE_GROUPS_TABLE, @VIRTUAL0A
	JMP @UNKNOWN31
@UNKNOWN0:
	LDA ENEMY_SPAWN_COUNTER
	INC
	STA ENEMY_SPAWN_COUNTER
	AND #$000F
	BNEL @UNKNOWN10
	LDA @LOCAL0C
	OPTIMIZED_MULT @VIRTUAL04, 8
	LSR
	LSR
	LSR
	LSR
	LSR
	ASL
	STA @VIRTUAL04
	LDA @LOCAL0D
	OPTIMIZED_MULT @VIRTUAL04, 8
	LSR
	LSR
	LSR
	LSR
	OPTIMIZED_MULT @VIRTUAL04, 64
	CLC
	ADC @VIRTUAL04
	TAX
	LDA f:MAP_DATA_PER_SECTOR_ATTRIBUTES_TABLE,X
	AND #$0007
	BEQ @UNKNOWN2
	CMP #1
	BEQ @UNKNOWN3
	CMP #2
	BEQ @UNKNOWN4
	CMP #3
	BEQ @UNKNOWN5
	CMP #4
	BEQ @UNKNOWN6
	CMP #5
	BEQ @UNKNOWN7
	BRA @UNKNOWN8
@UNKNOWN2:
	LDA #2
	STA @VIRTUAL02
	STA @LOCAL0A
	BRA @UNKNOWN8
@UNKNOWN3:
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL0A
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA #1
	STA @VIRTUAL02
	STA @LOCAL0A
	BRA @UNKNOWN8
@UNKNOWN5:
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL0A
	BRA @UNKNOWN8
@UNKNOWN6:
	LDA #5
	STA @VIRTUAL02
	STA @LOCAL0A
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA #1
	STA @VIRTUAL02
	STA @LOCAL0A
@UNKNOWN8:
	JSL RAND
	LDX @LOCAL0A
	STX @VIRTUAL02
	LDY #100
	JSL MODULUS16
	CMP @VIRTUAL02
	BCC @UNKNOWN9
	JMP @UNKNOWN32
@UNKNOWN9:
	LDA #MAGIC_BUTTERFLY_BATTLEGROUP
	STA @LOCAL0B
	STA SPAWNING_ENEMY_GROUP
	MOVE_INT f:BTL_ENTRY_PTR_TABLE +.SIZEOF(battle_entry_ptr_entry) * MAGIC_BUTTERFLY_BATTLEGROUP + battle_entry_ptr_entry::pointer, @VIRTUAL0A
	JMP @UNKNOWN31
@UNKNOWN10:
	LDY @LOCAL0E
	BEQL @UNKNOWN32
	LDA @LOCAL0C
	OPTIMIZED_MULT @VIRTUAL04, 8
	LSR
	LSR
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	LDA @LOCAL0D
	OPTIMIZED_MULT @VIRTUAL04, 8
	LSR
	LSR
	LSR
	LSR
	OPTIMIZED_MULT @VIRTUAL04, 32
	CLC
	ADC @VIRTUAL02
	TAX
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	AND #$00FF
	LSR
	LSR
	LSR
	CMP LOADED_MAP_TILE_COMBO
	BNEL @UNKNOWN32
	STY ENEMY_SPAWN_ENCOUNTER_ID
	LOADPTR ENEMY_PLACEMENT_GROUPS_PTR_TABLE, @VIRTUAL06
	TYA
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @LOCAL09
	LDA #enemy_placement::groups
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL08
	LDA @VIRTUAL06+2
	STA @LOCAL08+2
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL07
	LDA [@LOCAL07] ;enemy_placement::spawn_chance
	AND #$00FF
	STA ENEMY_SPAWN_CHANCE
	LDX #0
	STX @LOCAL06
	LDA @LOCAL09
	BEQ @UNKNOWN13
	JSL GET_EVENT_FLAG
	CMP #0
	BEQ @UNKNOWN13
	SEP #PROC_FLAGS::ACCUM8
	LDY #enemy_placement::spawn_chance_alt
	LDA [@VIRTUAL0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA ENEMY_SPAWN_CHANCE
	LDA [@LOCAL07]
	AND #$00FF
	BEQ @UNKNOWN13
	LDX #8
	STX @LOCAL06
@UNKNOWN13:
	LDY ENEMY_SPAWN_CHANCE
	STY @LOCAL09
	LDA PIRACY_FLAG
	BNE @UNKNOWN14
	JSL RAND
	LDY @LOCAL09
	STY @VIRTUAL02
	LDY #100
	JSL MULT168
	XBA
	AND #$00FF
	CMP @VIRTUAL02
	BCC @UNKNOWN14
	JMP @UNKNOWN32
@UNKNOWN14:
	JSL RAND
	AND #$0007
	STA @VIRTUAL02
	LDX @LOCAL06
	TXA
	CLC
	ADC @VIRTUAL02
	STA @LOCAL05
	LDX #0
@UNKNOWN15:
	MOVE_INT @LOCAL08, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDA [@VIRTUAL0A] ;enemy_group::slots
	AND #$00FF
	STA @VIRTUAL02
	TXA
	CLC
	ADC @VIRTUAL02
	TAX
	STX @VIRTUAL02
	LDA @LOCAL05
	CMP @VIRTUAL02
	BCC @UNKNOWN16
	LDA #.SIZEOF(enemy_group)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL08
	LDA @VIRTUAL06+2
	STA @LOCAL08+2
	BRA @UNKNOWN15
@UNKNOWN16:
	LDY #enemy_group::group
	LDA [@VIRTUAL06],Y
	STA @LOCAL0B
	STA SPAWNING_ENEMY_GROUP
	LOADPTR BTL_ENTRY_PTR_TABLE, @VIRTUAL06
	LDA @LOCAL0B
	OPTIMIZED_MULT @VIRTUAL04, 8
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL0A
	LDA @LOCAL0D
	OPTIMIZED_MULT @VIRTUAL04, 128
	CLC
	ADC @LOCAL0C
	STA @LOCAL06
	LDY #0
	BRA @UNKNOWN19
@UNKNOWN17:
	TYA
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN18
	LDA @LOCAL0B
	CLC
	ADC #$8000
	CMP ENTITY_NPC_IDS,X
	BNE @UNKNOWN18
	LDA @LOCAL06
	CMP ENTITY_ENEMY_SPAWN_TILES,X
	BEQL @UNKNOWN32
@UNKNOWN18:
	INY
@UNKNOWN19:
	CPY #23
	BNE @UNKNOWN17
	JMP @UNKNOWN31
@UNKNOWN20:
	LDY #battle_group_entry::id
	LDA [@VIRTUAL0A],Y
	STA @LOCAL04
	LOADPTR ENEMY_CONFIGURATION_TABLE, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL08
	LDA @LOCAL04
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	STA @LOCAL03
.IF .DEFINED(USA)
	INC
.ENDIF
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	STA SPAWNING_ENEMY_NAME
	LDA @LOCAL03
	CLC
	ADC #enemy_data::overworld_sprite
	MOVE_INTX @LOCAL08, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @LOCAL09
	STA SPAWNING_ENEMY_SPRITE
	LDA @LOCAL03
	CLC
	ADC #enemy_data::event_script
	MOVE_INTX @LOCAL08, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @LOCAL03
	BNEL @UNKNOWN29
	LDA #DEFAULT_ENEMY_MOVEMENT_STYLE
	STA @LOCAL03
	JMP @UNKNOWN29
@UNKNOWN22:
	LDA @LOCAL04
	CMP #ENEMY::MAGIC_BUTTERFLY
	BNE @UNKNOWN23
	LDA MAGIC_BUTTERFLY_SPAWNED
	BNEL @UNKNOWN29
@UNKNOWN23:
	LDA OVERWORLD_ENEMY_COUNT
	CMP OVERWORLD_ENEMY_MAXIMUM
	BNE @UNKNOWN24
	INC ENEMY_SPAWN_TOO_MANY_ENEMIES_FAILURE_COUNT
	JMP @UNKNOWN29
@UNKNOWN24:
	STZ ENEMY_SPAWN_TOO_MANY_ENEMIES_FAILURE_COUNT
	STZ_BADOPT @LOCAL00
.IF .DEFINED(USA)
	STZ @LOCAL00+2
.ELSE
	STA @LOCAL00+2
.ENDIF
	LDY #.LOWORD(-1)
	LDX @LOCAL03
	LDA @LOCAL09
	JSL CREATE_ENTITY
	STA @LOCAL02
	STZ @LOCAL06
	BRA @UNKNOWN27
@UNKNOWN25:
	JSL RAND
	LDY ENEMY_SPAWN_RANGE_WIDTH
	JSL MODULUS16
	STA @VIRTUAL02
	LDA @LOCAL0C
	OPTIMIZED_MULT @VIRTUAL04, 8
	CLC
	ADC @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 8
	STA @VIRTUAL04
	JSL RAND
	LDY ENEMY_SPAWN_RANGE_HEIGHT
	JSL MODULUS16
	STA @VIRTUAL02
	LDA @LOCAL0D
	OPTIMIZED_MULT @VIRTUAL04, 8
	CLC
	ADC @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 8
	STA @VIRTUAL02
	LDY @LOCAL02
	LDX @VIRTUAL02
	LDA @VIRTUAL04
	JSL UNKNOWN_C05F33
	STA @LOCAL01
	AND #$00D0
	BNE @UNKNOWN26
	LDY @LOCAL04
	LDX @LOCAL02
	LDA @LOCAL01
	JSL UNKNOWN_C05DE7
	CMP #0
	BEQ @UNKNOWN28
@UNKNOWN26:
	INC @LOCAL06
@UNKNOWN27:
	LDA @LOCAL06
	CMP #20
	BNE @UNKNOWN25
	LDA @LOCAL02
	JSL UNKNOWN_C02140
	BRA @UNKNOWN29
@UNKNOWN28:
	LDA @LOCAL02
	ASL
	TAX
	STX @LOCAL06
	LDA @VIRTUAL04
	STA ENTITY_ABS_X_TABLE,X
	LDA @VIRTUAL02
	STA ENTITY_ABS_Y_TABLE,X
	LDA @LOCAL0B
	CLC
	ADC #$8000
	STA ENTITY_NPC_IDS,X
	LDA @LOCAL04
	STA ENTITY_ENEMY_IDS,X
	LDA @LOCAL0D
	OPTIMIZED_MULT @VIRTUAL04, 128
	CLC
	ADC @LOCAL0C
	STA ENTITY_ENEMY_SPAWN_TILES,X
	STZ ENTITY_PATHFINDING_STATES,X
	JSL RAND
	LDX @LOCAL06
	STA ENTITY_WEAK_ENEMY_VALUE,X
	INC OVERWORLD_ENEMY_COUNT
	LDA @LOCAL04
	CMP #ENEMY::MAGIC_BUTTERFLY
	BNE @UNKNOWN29
	LDA #1
	STA MAGIC_BUTTERFLY_SPAWNED
@UNKNOWN29:
	LDX ENEMY_SPAWN_REMAINING_ENEMY_COUNT
	DEC ENEMY_SPAWN_REMAINING_ENEMY_COUNT
	CPX #0
	BNEL @UNKNOWN22
	LDA #3
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
@UNKNOWN31:
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	LDA [@VIRTUAL06] ;battle_group_entry::count
	AND #$00FF
	TAX
	STX ENEMY_SPAWN_REMAINING_ENEMY_COUNT
	CPX #>-1
	BNEL @UNKNOWN20
@UNKNOWN32:
	END_C_FUNCTION
