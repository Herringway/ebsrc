
RANDOM_TARGETTING:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT32 ;long targetMask
	STACK_RESERVE_RETURN_INT32 ;long
	END_STACK_VARS
	MOVE_INT @PARAM00, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @LOCAL02
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	CMP32 @VIRTUAL0A, @VIRTUAL06
	BNE @UNKNOWN1
	MOVE_INT @VIRTUAL06, @RETURNVAL
	JMP @UNKNOWN6
@UNKNOWN1:
	LDY #0
	STY @LOCAL01
	JSR RAND_LONG
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	AND #$001F
	INC
	STA @LOCAL00
	BRA @UNKNOWN5
@UNKNOWN2:
	LDY @LOCAL01
	INY
	STY @LOCAL01
	CPY #32
	BNE @UNKNOWN3
	LDY #0
	STY @LOCAL01
@UNKNOWN3:
	MOVE_INT @LOCAL02, @VIRTUAL0A
	PHA
	LDA @VIRTUAL0A
	PHA
	LOADPTR POWERS_OF_TWO_32BIT, @VIRTUAL06
	TYA
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL0A
	PULL32 @VIRTUAL06
	AND_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BEQ @UNKNOWN2
@UNKNOWN5:
	LDA @LOCAL00
	TAX
	DEC
	STA @LOCAL00
	CPX #0
	BNE @UNKNOWN2
	LOADPTR POWERS_OF_TWO_32BIT, @VIRTUAL0A
	LDY @LOCAL01
	TYA
	ASL
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @RETURNVAL
@UNKNOWN6:
	END_C_FUNCTION
