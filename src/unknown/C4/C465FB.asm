
UNKNOWN_C465FB:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	JSL UNKNOWN_C4605A
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN0
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA __BSS_START__,X
@UNKNOWN0:
	END_C_FUNCTION
