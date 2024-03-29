
BTLACT_FLY_HONEY:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDX #.LOWORD(BATTLERS_TABLE) + .SIZEOF(battler) * 8
	LDY #8
	BRA @STARTLOOP
@NEXTBATTLER:
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @BATTLERNOTBELCH
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #1
	BNE @BATTLERNOTBELCH
	LDA a:battler::id,X
	CMP #ENEMY::MASTER_BELCH_3
	BEQ @BATTLERISBELCH
	CMP #ENEMY::MASTER_BELCH_1
	BNE @BATTLERNOTBELCH
@BATTLERISBELCH:
	LDA #ENEMY::MASTER_BELCH_2
	STA a:battler::id,X
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_G_HAEMITU_G
	BRA @RETURN
@BATTLERNOTBELCH:
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	INY
@STARTLOOP:
	CPY #BATTLER_COUNT
	BCC @NEXTBATTLER
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_G_HAEMITU_NG
@RETURN:
	END_C_FUNCTION
