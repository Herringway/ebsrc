
;A: current target
CALC_DAMAGE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;NEAR battler*
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
.IF .DEFINED(JPN)
	STACK_RESERVE_INT16
.ENDIF
	STACK_RESERVE_INT16 "LOCAL03"
	STACK_RESERVE_INT16 "LOCAL04"
	STACK_RESERVE_INT16 "LOCAL05"
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	STX @VIRTUAL04
	TAY
	STY @LOCAL05
	STZ @LOCAL04
	LDA @VIRTUAL04
	BNE @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
	LDA #0
	JMP @RETURN
@UNKNOWN0:
	LDA __BSS_START__ + battler::ally_or_enemy,Y
	AND #$00FF
	CMP #1
	BNE @UNKNOWN2
	LDA __BSS_START__ + battler::id,Y
	CMP #ENEMY::GIYGAS_2
	BNE @UNKNOWN2
	LDA #$0001
	STA @LOCAL04
	LDA CURRENT_TARGET
	STA @LOCAL03
@UNKNOWN1:
	JSL RAND
	AND #$0003
	LDY #.SIZEOF(battler)
	JSL MULT168
	CLC
	ADC #.LOWORD(BATTLERS_TABLE)
	TAX
	STX CURRENT_TARGET
	LDA __BSS_START__ + battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA __BSS_START__ + battler::npc_id,X
	AND #$00FF
	BNE @UNKNOWN1
	LDA __BSS_START__ + battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	TAX
	CPX #STATUS_0::UNCONSCIOUS
	BEQ @UNKNOWN1
	CPX #STATUS_0::DIAMONDIZED
	BEQ @UNKNOWN1
	JSL FIX_TARGET_NAME
	LDY CURRENT_TARGET
	STY @LOCAL05
	LDA #$0010
	STA REFLECT_FLASH_DURATION
	LDA #SFX::REFLECT_DAMAGE
	JSL PLAY_SOUND
	LDA #1*HALF_OF_A_SECOND
	JSR WAIT
@UNKNOWN2:
	LDY @LOCAL05
	LDA __BSS_START__ + battler::hp_target,Y
	STA @VIRTUAL02
	LDA __BSS_START__ + battler::ally_or_enemy,Y
	AND #$00FF
	BEQ @UNKNOWN3
	LDA __BSS_START__ + battler::id,Y
	CMP #ENEMY::MASTER_BELCH_1
	BEQ @UNKNOWN4
	CMP #ENEMY::MASTER_BELCH_3
	BEQ @UNKNOWN4
	CMP #ENEMY::GIYGAS_2
	BEQ @UNKNOWN4
	CMP #ENEMY::GIYGAS_3
	BEQ @UNKNOWN4
	CMP #ENEMY::GIYGAS_5
	BEQ @UNKNOWN4
	CMP #ENEMY::GIYGAS_6
	BEQ @UNKNOWN4
@UNKNOWN3:
	LDX @VIRTUAL04
	TYA
	JSR REDUCE_HP
@UNKNOWN4:
	LDY @LOCAL05
	LDA __BSS_START__ + battler::ally_or_enemy,Y
	AND #$00FF
	BNE @UNKNOWN8
	LDA __BSS_START__ + battler::hp_target,Y
	BNE @UNKNOWN7
	LDA @VIRTUAL02
	CMP #$0001
	BLTEQ @UNKNOWN7
	LDX CURRENT_ATTACKER
	LDA __BSS_START__ + battler::guts,X
	CMP #GUTS_FLOOR_FOR_SMAAAASH_CHANCE
	BCS @UNKNOWN5
	LDX #GUTS_FLOOR_FOR_SMAAAASH_CHANCE
	BRA @UNKNOWN6
@UNKNOWN5:
	TAX
@UNKNOWN6:
	TXA
	JSR SUCCESS_500
	CMP #$0000
	BEQ @UNKNOWN7
	LDX #$0001
	LDY @LOCAL05
	TYA
	JSR SET_HP
@UNKNOWN7:
	LDA ENEMY_PERFORMING_FINAL_ATTACK
	BEQ @UNKNOWN8
	LDA #$0001
	JSL COUNT_CHARS
	CMP #$0001
	BNE @UNKNOWN8
	LDA #$0000
	JSL COUNT_CHARS
	CMP #$0001
	BNE @UNKNOWN8
	LDX #$0001
	LDY @LOCAL05
	TYA
	JSR SET_HP
@UNKNOWN8:
	LDY @LOCAL05
	LDA __BSS_START__ + battler::ally_or_enemy,Y
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN12
	LDA __BSS_START__ + battler::id,Y
	CMP #ENEMY::GIYGAS_3
	BEQ @UNKNOWN9
	CMP #ENEMY::GIYGAS_4
	BEQ @UNKNOWN9
	CMP #ENEMY::GIYGAS_5
	BEQ @UNKNOWN9
	CMP #ENEMY::GIYGAS_6
	BNE @UNKNOWN10
@UNKNOWN9:
	LDA #$0010
	STA GREEN_BACKGROUND_FLASH_DURATION
@UNKNOWN10:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0015
	STA __BSS_START__ + 72,Y
	REP #PROC_FLAGS::ACCUM8
	LDA IS_SMAAAAASH_ATTACK
	BEQ @UNKNOWN11
	LOADPTR MSG_BTL_DAMAGE_SMASH_M, @LOCAL00
	MOVE_INT1632 @VIRTUAL04, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DISPLAY_TEXT_WAIT
	STZ IS_SMAAAAASH_ATTACK
	JMP @UNKNOWN20
@UNKNOWN11:
	LOADPTR MSG_BTL_DAMAGE_M, @LOCAL00
	MOVE_INT1632 @VIRTUAL04, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DISPLAY_TEXT_WAIT
	JMP @UNKNOWN20
@UNKNOWN12:
	LDA __BSS_START__ + battler::npc_id,Y
	AND #$00FF
	BNE @UNKNOWN16
	LDA HP_PP_BOX_BLINK_DURATION
	BNE @UNKNOWN16
	LDA #$0015
	STA HP_PP_BOX_BLINK_DURATION
.IF .DEFINED(JPN)
	LDA #$0000
	STA @LOCAL02
.ELSE
	LDX #$0000
.ENDIF
	BRA @UNKNOWN15
@UNKNOWN13:
	LDA __BSS_START__ + battler::id,Y
	STA @VIRTUAL02
.IF .DEFINED(JPN)
	LDA @LOCAL02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	CMP @VIRTUAL02
	BNE @UNKNOWN14
	LDA @LOCAL02
	STA HP_PP_BOX_BLINK_TARGET
.ELSE
	LDA GAME_STATE + game_state::party_members,X
	AND #$00FF
	CMP @VIRTUAL02
	BNE @UNKNOWN14
	STX HP_PP_BOX_BLINK_TARGET
.ENDIF
	BRA @UNKNOWN16
@UNKNOWN14:
.IF .DEFINED(JPN)
	LDA @LOCAL02
	INC
	STA @LOCAL02
.ELSE
	INX
.ENDIF
@UNKNOWN15:
.IF .DEFINED(JPN)
	CMP #TOTAL_PARTY_COUNT
.ELSE
	CPX #TOTAL_PARTY_COUNT
.ENDIF
	BCC @UNKNOWN13
@UNKNOWN16:
	LDA __BSS_START__ + battler::hp_target,Y
	BNE @TARGET_SURVIVED
	LDA #DAMAGE_TAKEN_SCREEN_SHAKE_DURATION_MORTAL
	STA VERTICAL_SHAKE_DURATION
	LDA #DAMAGE_TAKEN_SCREEN_SHAKE_DURATION_MORTAL_HOLD
	STA VERTICAL_SHAKE_HOLD_DURATION
	LOADPTR MSG_BTL_DAMAGE_TO_DEATH, @LOCAL00
	MOVE_INT1632 @VIRTUAL04, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DISPLAY_TEXT_WAIT
	BRA @UNKNOWN19
@TARGET_SURVIVED:
	LDA IS_SMAAAAASH_ATTACK
	BEQ @UNKNOWN18
	LDA #DAMAGE_TAKEN_SCREEN_SHAKE_DURATION_REGULAR
	STA VERTICAL_SHAKE_DURATION
	LOADPTR MSG_BTL_DAMAGE_SMASH, @LOCAL00
	MOVE_INT1632 @VIRTUAL04, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DISPLAY_TEXT_WAIT
	STZ VERTICAL_SHAKE_HOLD_DURATION
	STZ IS_SMAAAAASH_ATTACK
	BRA @UNKNOWN19
@UNKNOWN18:
	LDA #DAMAGE_TAKEN_SCREEN_SHAKE_DURATION_REGULAR_UNKNOWN
	STA VERTICAL_SHAKE_DURATION
	LOADPTR MSG_BTL_DAMAGE, @LOCAL00
	MOVE_INT1632 @VIRTUAL04, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DISPLAY_TEXT_WAIT
	STZ VERTICAL_SHAKE_HOLD_DURATION
@UNKNOWN19:
	LDA #$0028
	STA SCREEN_EFFECT_MINIMUM_WAIT_FRAMES
@UNKNOWN20:
	LDA @LOCAL04
	BEQ @UNKNOWN21
	LDA @LOCAL03
	STA CURRENT_TARGET
	JSL FIX_TARGET_NAME
@UNKNOWN21:
	LDA #$0001
@RETURN:
	END_C_FUNCTION
