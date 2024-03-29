
INSTANT_WIN_HANDLER:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
.IF .DEFINED(JPN) ;what is this...?
	@LOCAL02ALT := @LOCAL03
	@LOCAL02ALT2 := @LOCAL04
	@LOCAL04ALT := @LOCAL02
.ELSE
	@LOCAL02ALT := @LOCAL02
	@LOCAL02ALT2 := @LOCAL02
	@LOCAL04ALT := @LOCAL04
.ENDIF
	STZ BATTLE_INITIATIVE
	LDA #MUSIC::SUDDEN_VICTORY
	JSL CHANGE_MUSIC
	JSL UNKNOWN_C2E9ED
	LDX #0
	STX @LOCAL04
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$03E0
	JSR UNKNOWN_C26189
	LDA #$001F
	JSR UNKNOWN_C26189
	LDA #$7C00
	JSR UNKNOWN_C26189
	LDX @LOCAL04
	INX
	STX @LOCAL04
@UNKNOWN1:
	CPX #2
	BCC @UNKNOWN0
	LDA #0
	JSR UNKNOWN_C26189
	LOADPTR BUFFER, @LOCAL00
	LOADPTR BUFFER + $2000, @LOCAL01
	LDA #$0200
	JSL MEMCPY24
	LDX #$FFFF
	LDA #6
	JSL UNKNOWN_C496E7
	LDX #0
	STX @LOCAL03
	BRA @UNKNOWN3
@UNKNOWN2:
	JSL UPDATE_MAP_PALETTE_ANIMATION
	JSL WAIT_UNTIL_NEXT_FRAME
	LDX @LOCAL03
	INX
	STX @LOCAL03
@UNKNOWN3:
	CPX #6
	BCC @UNKNOWN2
	JSL UNKNOWN_C49740
	JSL UNKNOWN_C0943C
	CREATE_WINDOW_FAR #WINDOW::TEXT_BATTLE
	STZ BATTLE_MONEY_SCRATCH
	LDA #0
	STA @LOCAL03
	BRA @UNKNOWN5
@UNKNOWN4:
	ASL
	TAX
	LDA ENEMIES_IN_BATTLE_IDS,X
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC #enemy_data::money
	TAX
	LDA f:ENEMY_CONFIGURATION_TABLE,X
	CLC
	ADC BATTLE_MONEY_SCRATCH
	STA BATTLE_MONEY_SCRATCH
	LDA @LOCAL03
	INC
	STA @LOCAL03
@UNKNOWN5:
	CMP ENEMIES_IN_BATTLE
	BCC @UNKNOWN4
	LDY #.LOWORD(GAME_STATE) + game_state::unknownC4
	STY @LOCAL02ALT
	LDA BATTLE_MONEY_SCRATCH
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00 ;@LOCAL00 = @VIRTUAL06
	JSL DEPOSIT_INTO_ATM
	MOVE_INT @VIRTUAL06, @VIRTUAL0A ;@VIRTUAL0A = @VIRTUAL06
	LDY @LOCAL02ALT
	MOVE_INT_YPTRSRC 0, @VIRTUAL06 ;@VIRTUAL06 = game_state.unknownC4
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A ;@VIRTUAL06 += @VIRTUAL0A
	MOVE_INT_YPTRDEST @VIRTUAL06, 0 ;game_state.unknownC4 = @VIRTUAL06
	LDY #0
	STY @LOCAL03
	BRA @UNKNOWN7
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT @LOCAL00
	LDX #.SIZEOF(battler)
	REP #PROC_FLAGS::ACCUM8
	TYA
	TXY
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE)
	JSL MEMSET16
	LDY @LOCAL03
	INY
	STY @LOCAL03
@UNKNOWN7:
	CPY #BATTLER_COUNT
	BCC @UNKNOWN6
	LDY #0
	STY @LOCAL02ALT2
	BRA @UNKNOWN11
@UNKNOWN8:
.IF .DEFINED(JPN)
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
.ELSE
	LDA GAME_STATE + game_state::party_members,Y
.ENDIF
	AND #$00FF
	STA @LOCAL03
	BEQ @UNKNOWN10
	CMP #4
	BGT @UNKNOWN10
	TYA
	LDY #.SIZEOF(battler)
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE)
	TAX
	LDA @LOCAL03
	JSL BATTLE_INIT_PLAYER_STATS
@UNKNOWN10:
	LDY @LOCAL02ALT2
	INY
	STY @LOCAL02ALT2
@UNKNOWN11:
	CPY #TOTAL_PARTY_COUNT
	BCC @UNKNOWN8
	MOVE_INT_CONSTANT 0, BATTLE_EXP_SCRATCH
	LDA #0
	STA @LOCAL03
	BRA @UNKNOWN13
@UNKNOWN12:
	LOADPTR ENEMY_CONFIGURATION_TABLE, @VIRTUAL06
	LDA @LOCAL03
	ASL
	TAX
	LDA ENEMIES_IN_BATTLE_IDS,X
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC #enemy_data::exp
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL0A
	MOVE_INT BATTLE_EXP_SCRATCH, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, BATTLE_EXP_SCRATCH
	LDA @LOCAL03
	INC
	STA @LOCAL03
@UNKNOWN13:
	CMP ENEMIES_IN_BATTLE
	BCC @UNKNOWN12
	LDA #0
	JSL COUNT_CHARS
	DEC
	STORE_INT1632 @VIRTUAL0A
	MOVE_INT BATTLE_EXP_SCRATCH, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, BATTLE_EXP_SCRATCH
	LDA #0
	JSL COUNT_CHARS
	STORE_INT1632 @VIRTUAL0A
	JSL DIVISION32
	MOVE_INT @VIRTUAL06, BATTLE_EXP_SCRATCH
	LOADPTR MSG_BTL_PLAYER_WIN_FORCE, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DISPLAY_TEXT_WAIT
	LDY #.LOWORD(BATTLERS_TABLE)
	STY @LOCAL04ALT
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN16
@UNKNOWN14:
	LDA a:battler::consciousness,Y
	AND #$00FF
	BEQ @UNKNOWN15
	LDA a:battler::ally_or_enemy,Y
	AND #$00FF
	BNE @UNKNOWN15
	LDA a:battler::npc_id,Y
	AND #$00FF
	BNE @UNKNOWN15
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,Y
	AND #$00FF
	TAX
	CPX #STATUS_0::UNCONSCIOUS
	BEQ @UNKNOWN15
	CPX #STATUS_0::DIAMONDIZED
	BEQ @UNKNOWN15
	MOVE_INT BATTLE_EXP_SCRATCH, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #1
	LDA __BSS_START__,Y
	JSL GAIN_EXP
@UNKNOWN15:
	LDY @LOCAL04ALT
	TYA
	CLC
	ADC #.SIZEOF(battler)
	TAY
	STY @LOCAL04ALT
	INC @VIRTUAL02
@UNKNOWN16:
	LDA @VIRTUAL02
	CMP #BATTLER_COUNT
	BCC @UNKNOWN14
	LDA ENEMIES_IN_BATTLE
	JSR RAND_LIMIT
	ASL
	TAX
	LDA ENEMIES_IN_BATTLE_IDS,X
	STA @LOCAL02ALT2
	LOADPTR ENEMY_CONFIGURATION_TABLE, @VIRTUAL06
	LDA @LOCAL02ALT2
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	STA @LOCAL03
	CLC
	ADC #enemy_data::item_dropped
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	STA ITEM_DROPPED
	LDA @LOCAL03
	CLC
	ADC #enemy_data::item_drop_rate
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	BEQ @UNKNOWN17
	CMP #1
	BEQ @UNKNOWN18
	CMP #2
	BEQ @UNKNOWN19
	CMP #3
	BEQ @UNKNOWN20
	CMP #4
	BEQ @UNKNOWN21
	CMP #5
	BEQ @UNKNOWN22
	CMP #6
	BEQ @UNKNOWN23
	BRA @UNKNOWN24
@UNKNOWN17:
	JSL RAND
	AND #ITEM_RARITY_0
	BEQ @UNKNOWN24
	STZ ITEM_DROPPED
	BRA @UNKNOWN24
@UNKNOWN18:
	JSL RAND
	AND #ITEM_RARITY_1
	BEQ @UNKNOWN24
	STZ ITEM_DROPPED
	BRA @UNKNOWN24
@UNKNOWN19:
	JSL RAND
	AND #ITEM_RARITY_2
	BEQ @UNKNOWN24
	STZ ITEM_DROPPED
	BRA @UNKNOWN24
@UNKNOWN20:
	JSL RAND
	AND #ITEM_RARITY_3
	BEQ @UNKNOWN24
	STZ ITEM_DROPPED
	BRA @UNKNOWN24
@UNKNOWN21:
	JSL RAND
	AND #ITEM_RARITY_4
	BEQ @UNKNOWN24
	STZ ITEM_DROPPED
	BRA @UNKNOWN24
@UNKNOWN22:
	JSL RAND
	AND #ITEM_RARITY_5
	BEQ @UNKNOWN24
	STZ ITEM_DROPPED
	BRA @UNKNOWN24
@UNKNOWN23:
	JSL RAND
	AND #ITEM_RARITY_6
	BEQ @UNKNOWN24
	STZ ITEM_DROPPED
@UNKNOWN24:
	LDA ITEM_DROPPED
	BEQ @UNKNOWN25
	SEP #PROC_FLAGS::ACCUM8
	LDA ITEM_DROPPED
	JSL REDIRECT_C1ACF8
	.A16
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_PRESENT
@UNKNOWN25:
	JSL UNKNOWN_C1DD5F
	LDA GAME_STATE+game_state::walking_style
	CMP #WALKING_STYLE::BICYCLE
	BNE @UNKNOWN26
	LDA #MUSIC::BICYCLE
	JSL CHANGE_MUSIC
	BRA @UNKNOWN27
@UNKNOWN26:
	JSL UNKNOWN_C06A07
@UNKNOWN27:
	JSL UNKNOWN_C09451
	END_C_FUNCTION
