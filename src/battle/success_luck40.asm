
SUCCESS_LUCK40:
	BEGIN_C_FUNCTION
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	LDA #40
	JSR RAND_LIMIT
	LDX CURRENT_TARGET
	CMP a:battler::luck,X
	BCS @SUCCESS
	LDA #0
	BRA @RETURN
@SUCCESS:
	LDA #1
@RETURN:
	END_C_FUNCTION
