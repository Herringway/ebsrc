
UNKNOWN_C1866D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @LOCAL00
	MOVE_INT @PARAM01, @VIRTUAL06
	LDA @LOCAL00
	BNE @UNKNOWN0
	LDA #0
	BRA @UNKNOWN1
@UNKNOWN0:
	TAX
	STZ a:display_text_state::unknown4,X
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA @LOCAL00
@UNKNOWN1:
	END_C_FUNCTION
