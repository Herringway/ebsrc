
BTLACT_LEVEL_1_ATK:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #0
	JSR MISS_CALC
	CMP #0
	BNE @UNKNOWN7
	JSR SMAAAASH
	CMP #0
	BNE @UNKNOWN7
	JSR DETERMINE_DODGE
	CMP #0
	BNE @UNKNOWN6
	LDX CURRENT_ATTACKER
	LDA a:battler::offense,X
	LDX CURRENT_TARGET
	SEC
	SBC a:battler::defense,X
	STA @LOCAL01
	CLC
	SBC #0
	BRANCHLTEQS @UNKNOWN2
	LDA @LOCAL01
	JSR TWENTY_FIVE_PERCENT_VARIANCE
	STA @LOCAL01
@UNKNOWN2:
	LDA @LOCAL01
	CLC
	SBC #0
	BRANCHGTS @UNKNOWN5
	LDA #1
	STA @LOCAL01
@UNKNOWN5:
	LDX #$00FF
	LDA @LOCAL01
	JSR CALC_RESIST_DAMAGE
	JSR HEAL_STRANGENESS
	BRA @UNKNOWN7
@UNKNOWN6:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_TATAKU_YOKETA
@UNKNOWN7:
	END_C_FUNCTION
