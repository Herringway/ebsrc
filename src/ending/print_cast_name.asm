
PRINT_CAST_NAME:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @VIRTUAL04
	PHA
	LDA @VIRTUAL04
	STA @LOCAL01
	PLA
	STX @VIRTUAL02
	STA @LOCAL00
	LOADPTR CAST_SEQUENCE_FORMATTING, @VIRTUAL06
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 3
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @VIRTUAL0A
	LDA @VIRTUAL06+2
	STA @VIRTUAL0A+2
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	LDY @VIRTUAL02
	LDA [@VIRTUAL0A]
	AND #$00FF
	TAX
	LDA [@VIRTUAL06]
	JSL PREPARE_CAST_NAME_TILEMAP
	LDA [@VIRTUAL0A]
	AND #$00FF
	TAY
	LDA @LOCAL01
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA @VIRTUAL02
	JSL COPY_CAST_NAME_TILEMAP
	END_C_FUNCTION
