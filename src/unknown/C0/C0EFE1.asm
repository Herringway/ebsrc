
UNKNOWN_C0EFE1:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA PAD_PRESS
	BEQ @UNKNOWN1
	LDA #1
	BRA @UNKNOWN3
@UNKNOWN1:
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA @LOCAL00
	DEC
	STA @LOCAL00
@UNKNOWN2:
	BNE @UNKNOWN0
	LDA #0
@UNKNOWN3:
	END_C_FUNCTION
