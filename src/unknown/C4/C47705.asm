
UNKNOWN_C47705:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDY CURRENT_ENTITY_SLOT
	STY @LOCAL03
	TYA
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	AND #$0001
	BEQ @UNKNOWN0
	LDA #$05FC
	STA @LOCAL02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$08FA
	STA @LOCAL02
@UNKNOWN1:
	LOADPTR BUFFER, @VIRTUAL06
	LDA @LOCAL02
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL01
	LDA @VIRTUAL06+2
	STA @LOCAL01+2
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR UNKNOWN_C47501
	LDX @LOCAL01
	LDA @LOCAL01+2
	JSL UNKNOWN_C425FD
	LDY @LOCAL03
	TYA
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR0_TABLE)
	TAX
	LDA __BSS_START__,X
	INC
	STA __BSS_START__,X
	END_C_FUNCTION
