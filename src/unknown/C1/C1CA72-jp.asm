
UNKNOWN_C1CA72:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TXY
	STY @LOCAL00
	STA @VIRTUAL02
	JSR SET_INSTANT_PRINTING
	JSR GET_TEXT_Y
	TAX
	LDA #0
	JSR UNKNOWN_C438A5
	LDY @LOCAL00
	TYA
	JSR UNKNOWN_C10FEA
	LDA @VIRTUAL02
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(psi_ability)
	TAX
	LDA f:PSI_ABILITY_TABLE + psi_ability::name,X
	AND #$00FF
	JSR GET_PSI_NAME
	LDA #0
	JSR UNKNOWN_C10FEA
	JSR CLEAR_INSTANT_PRINTING
	END_C_FUNCTION
