
UNKNOWN_C4CBE3:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	MOVE_INT ENTITY_FADE_STATES, @VIRTUAL06
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY #4
	LDA [@VIRTUAL06],Y
	CMP #1
	BNE @UNKNOWN1
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDA [@VIRTUAL0A]
	ASL
	TAX
	LDA #.LOWORD(-1)
	STA ENTITY_ANIMATION_FRAME,X
@UNKNOWN1:
	LDA #20
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN2:
	CPX ENTITY_FADE_STATES_LENGTH
	BCC @UNKNOWN0
	END_C_FUNCTION
