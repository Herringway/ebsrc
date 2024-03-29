
UNKNOWN_C0D19B:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA TOUCHED_ENEMY
	STA @LOCAL09
	STZ ENEMY_HAS_BEEN_TOUCHED
	LDA @LOCAL09
	ASL
	STA @LOCAL08
	CLC
	ADC #.LOWORD(ENTITY_MOVING_DIRECTIONS)
	STA @VIRTUAL02
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	CMP #8
	BNE @UNKNOWN0
	LDY #0
	LDX #1
	BRA @UNKNOWN6
@UNKNOWN0:
	LDA ENEMY_PATHFINDING_TARGET_ENTITY
	ASL
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	STA @LOCAL00
	LDY ENTITY_ABS_X_TABLE,X
	LDA @LOCAL08
	TAX
	LDA ENTITY_ABS_Y_TABLE,X
	TAX
	STX @LOCAL07
	LDA @LOCAL08
	TAX
	LDA ENTITY_ABS_X_TABLE,X
	LDX @LOCAL07
	JSL UNKNOWN_C41EFF
	LDY #$2000
	CLC
	ADC #$1000
	JSL DIVISION16S_DIVISOR_POSITIVE
	STA @VIRTUAL04
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	SEC
	SBC @VIRTUAL04
	AND #$0007
	BEQ @UNKNOWN1
	CMP #1
	BEQ @UNKNOWN1
	CMP #7
	BNE @UNKNOWN2
@UNKNOWN1:
	LDY #1
	BRA @UNKNOWN3
@UNKNOWN2:
	LDY #0
@UNKNOWN3:
	LDA GAME_STATE+game_state::leader_direction
	SEC
	SBC @VIRTUAL04
	AND #$0007
	BEQ @UNKNOWN4
	CMP #1
	BEQ @UNKNOWN4
	CMP #7
	BNE @UNKNOWN5
@UNKNOWN4:
	LDX #0
	BRA @UNKNOWN6
@UNKNOWN5:
	LDX #1
@UNKNOWN6:
	STZ BATTLE_INITIATIVE
	CPX #1
	BNE @UNKNOWN7
	CPY #0
	BNE @UNKNOWN7
	LDA #INITIATIVE::PARTY_FIRST
	STA BATTLE_INITIATIVE
@UNKNOWN7:
	CPY #1
	BNE @UNKNOWN8
	CPX #0
	BNE @UNKNOWN8
	LDA #INITIATIVE::ENEMIES_FIRST
	STA BATTLE_INITIATIVE
@UNKNOWN8:
	LDA #120
	STA BATTLE_SWIRL_COUNTDOWN
	LDA @LOCAL09
	ASL
	TAX
	LDA ENTITY_NPC_IDS,X
	AND #$7FFF
	STA @LOCAL06
	STA CURRENT_BATTLE_GROUP
	LOADPTR BTL_ENTRY_PTR_TABLE, @VIRTUAL0A
	LDA @LOCAL06
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	JSL BATTLE_SWIRL_SEQUENCE
	LDA #0
	STA @VIRTUAL04
	JMP @UNKNOWN17
@UNKNOWN9:
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	STA @VIRTUAL02
	CMP #$00FF
	BEQ @UNKNOWN15
	LDY #0
	LDA @VIRTUAL02
	STA @LOCAL06
	BEQ @UNKNOWN14
	LDY #1
	LDA [@VIRTUAL06],Y
	TAY
	LDA @LOCAL09
	ASL
	TAX
	TYA
	CMP ENTITY_ENEMY_IDS,X
	BNE @UNKNOWN10
	LDA #.LOWORD(-1)
	STA ENTITY_PATHFINDING_STATES,X
	LDA @LOCAL06
	DEC
	STA @LOCAL06
@UNKNOWN10:
	LDA @LOCAL06
	BEQ @UNKNOWN14
	LDA #0
	STA @LOCAL05
	BRA @UNKNOWN13
@UNKNOWN11:
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN12
	TYA
	CMP ENTITY_ENEMY_IDS,X
	BNE @UNKNOWN12
	LDA #.LOWORD(-1)
	STA ENTITY_PATHFINDING_STATES,X
@UNKNOWN12:
	LDA @LOCAL05
	INC
	STA @LOCAL05
@UNKNOWN13:
	CMP #23
	BNE @UNKNOWN11
@UNKNOWN14:
	LDA #3
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	BRA @UNKNOWN16
@UNKNOWN15:
	LDY #0
	TYA
	STA @VIRTUAL02
@UNKNOWN16:
	LDA @VIRTUAL04
	ASL
	TAX
	TYA
	STA PATHFINDING_ENEMY_IDS,X
	LDA @VIRTUAL02
	STA PATHFINDING_ENEMY_COUNTS,X
	INC @VIRTUAL04
@UNKNOWN17:
	LDA @VIRTUAL04
	CMP #4
	BNEL @UNKNOWN9
	STZ ENEMIES_IN_BATTLE
	LDY #64
	TYX
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	JSL FIND_PATH_TO_PARTY
	LDA #.LOWORD(PATHFINDING_STATE)
	STA @LOCAL04
	LOADPTR BTL_ENTRY_PTR_TABLE, @VIRTUAL0A
	LDA CURRENT_BATTLE_GROUP
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	STZ @LOCAL08
	JMP @UNKNOWN35
@UNKNOWN19:
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	TAX
	STX @LOCAL03
	CPX #$00FF
	BEQL @UNKNOWN34
	CPX #0
	BEQL @UNKNOWN33
	LDY #1
	LDA [@VIRTUAL06],Y
	STA @LOCAL06
	CPX #0
	BEQL @UNKNOWN33
	LDA #0
	STA @LOCAL05
	TAY
	STY @LOCAL02
	BRA @UNKNOWN25
@UNKNOWN23:
	LDY @LOCAL02
	TYA
	STA @VIRTUAL04
	ASL
	ASL
	ASL
	ADC @VIRTUAL04
	ASL
	CLC
	ADC @LOCAL04
	TAX
	LDA a:pathfinding::pathfinders + pathfinder::object_index,X
	ASL
	TAX
	LDA ENTITY_ENEMY_IDS,X
	CMP @LOCAL06
	BNE @UNKNOWN24
	LDA @LOCAL05
	INC
	STA @LOCAL05
@UNKNOWN24:
	INY
	STY @LOCAL02
@UNKNOWN25:
	TYA
	LDY #pathfinding::pathfinder_count
	CMP (@LOCAL04),Y
	BCC @UNKNOWN23
	LDX @LOCAL03
	STX @VIRTUAL02
	LDA @LOCAL05
	CMP @VIRTUAL02
	BCS @UNKNOWN27
	JMP @UNKNOWN33
@UNKNOWN27:
	STX @VIRTUAL02
	SEC
	SBC @VIRTUAL02
	STA @VIRTUAL04
	STA @LOCAL02
	JMP @UNKNOWN32
@UNKNOWN28:
	LDA #.LOWORD(-1)
	STA @VIRTUAL02
	STA @LOCAL01
	LDY #0
	STY @LOCAL03
	TYA
	STA @LOCAL05
	BRA @UNKNOWN31
@UNKNOWN29:
	OPTIMIZED_MULT @VIRTUAL04, 18
	CLC
	ADC @LOCAL04
	TAX
	STX @LOCAL07
	LDA a:pathfinding::pathfinders + pathfinder::object_index,X
	ASL
	TAX
	LDA ENTITY_ENEMY_IDS,X
	CMP @LOCAL06
	BNE @UNKNOWN30
	LDX @LOCAL07
	LDA a:pathfinding::pathfinders + pathfinder::unknown14,X
	TAX
	LDY @LOCAL03
	STY @VIRTUAL02
	TXA
	CMP @VIRTUAL02
	BLTEQ @UNKNOWN30
	LDA @LOCAL05
	STA @VIRTUAL02
	STA @LOCAL01
	TXY
	STY @LOCAL03
@UNKNOWN30:
	LDA @LOCAL05
	INC
	STA @LOCAL05
@UNKNOWN31:
	LDY #pathfinding::pathfinder_count
	CMP (@LOCAL04),Y
	BCC @UNKNOWN29
	LDA @LOCAL01
	STA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, 18
	CLC
	ADC @LOCAL04
	STA @LOCAL03
	CLC
	ADC #pathfinding::pathfinders + pathfinder::object_index
	TAX
	STX @LOCAL05
	LDA __BSS_START__,X
	CMP @LOCAL09
	BEQ @UNKNOWN32
	LDA @LOCAL03
	TAX
	STZ a:pathfinding::pathfinders + pathfinder::unknown14,X
	LDX @LOCAL05
	LDA __BSS_START__,X
	ASL
	TAX
	STZ ENTITY_PATHFINDING_STATES,X
@UNKNOWN32:
	LDA @LOCAL02
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA @VIRTUAL04
	DEC
	STA @VIRTUAL04
	STA @LOCAL02
	CPX #0
	BNEL @UNKNOWN28
@UNKNOWN33:
	LDA #3
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
@UNKNOWN34:
	INC @LOCAL08
@UNKNOWN35:
	LDA @LOCAL08
	CMP #4
	BNEL @UNKNOWN19
	LDA #0
	STA @LOCAL05
	BRA @UNKNOWN40
@UNKNOWN37:
	CMP @LOCAL09
	BEQ @UNKNOWN39
	ASL
	TAX
	LDA ENTITY_PATHFINDING_STATES,X
	CMP #.LOWORD(-1)
	BNE @UNKNOWN38
	TXA
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA __BSS_START__,X
	BRA @UNKNOWN39
@UNKNOWN38:
	TXA
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #$8000
	STA __BSS_START__,X
@UNKNOWN39:
	LDA @LOCAL05
	INC
	STA @LOCAL05
@UNKNOWN40:
	CMP #23
	BNE @UNKNOWN37
	LDA @LOCAL09
	ASL
	TAX
	STZ ENTITY_PATHFINDING_STATES,X
	LDA ENEMIES_IN_BATTLE
	ASL
	PHA
	LDA ENTITY_ENEMY_IDS,X
	PLX
	STA ENEMIES_IN_BATTLE_IDS,X
	INC ENEMIES_IN_BATTLE
	PLD
	RTL
