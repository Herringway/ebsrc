
BTLACT_HP_RECOVERY_10:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	LDA #10
	JSR TWENTY_FIVE_PERCENT_VARIANCE
	TAX
	LDA CURRENT_TARGET
	JSR RECOVER_HP
	END_C_FUNCTION
