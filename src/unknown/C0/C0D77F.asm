
UNKNOWN_C0D77F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	CMP CURRENT_ENTITY_SLOT
	BEQ @UNKNOWN1
	CMP #23
	BEQ @UNKNOWN1
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA __BSS_START__,X
@UNKNOWN1:
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN2:
	CMP #MAX_ENTITIES
	BCC @UNKNOWN0
	END_C_FUNCTION
