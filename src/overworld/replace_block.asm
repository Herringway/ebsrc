
REPLACE_BLOCK:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TXY
	STA @LOCAL00
	LOADPTR BUFFER + $8000, @VIRTUAL06
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 32
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 32
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDX #0
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA [@VIRTUAL06]
	STA [@VIRTUAL0A]
	INC @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	INX
@UNKNOWN1:
	CPX #16
	BCC @UNKNOWN0
	LOADPTR TILE_COLLISION_BUFFER, @VIRTUAL0A
	LDA @LOCAL00
	ASL
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	TYA
	ASL
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	STA [@VIRTUAL06]
	END_C_FUNCTION