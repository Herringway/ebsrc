
BTLACT_350_FIRE_DAMAGE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #350
	JSR TWENTY_FIVE_PERCENT_VARIANCE
	STA @LOCAL00
	LDX CURRENT_TARGET
	LDA a:battler::fire_resist,X
	AND #$00FF
	TAX
	LDA @LOCAL00
	JSR CALC_RESIST_DAMAGE
	END_C_FUNCTION
