
MOVE_CURSOR:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 "STARTX" ;int
	STACK_RESERVE_PARAM_INT16 "STARTY" ;int
	STACK_RESERVE_PARAM_INT16 "DELTAX" ;int
	STACK_RESERVE_PARAM_INT16 "DELTAY" ;int
	STACK_RESERVE_PARAM_INT16 "SFX" ;int
	STACK_RESERVE_PARAM_INT16 "WRAPX" ;int
	STACK_RESERVE_PARAM_INT16 "WRAPY" ;int
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	STY @VIRTUAL04
	STX @LOCAL07
	STA @LOCAL06
	LDY @WRAPY
	STY @LOCAL05
	LDX @WRAPX
	STX @LOCAL04
	LDA @SFX
	STA @LOCAL03
	LDA @DELTAY
	STA @VIRTUAL02
	STA @LOCAL00
	LDA #.LOWORD(-1)
	STA @LOCAL01
	LDY @VIRTUAL04
	LDX @LOCAL07
	LDA @LOCAL06
	JSL UNKNOWN_C20B65
	TAX
	STX @LOCAL02
	CPX #.LOWORD(-1)
	BNE @UNKNOWN1
	LDA @VIRTUAL02
	STA @LOCAL00
	LDA #.LOWORD(-1)
	STA @LOCAL01
	LDY @VIRTUAL04
	LDX @LOCAL05
	LDA @LOCAL04
	JSL UNKNOWN_C20B65
	TAX
	STX @LOCAL02
	LDA @VIRTUAL04
	BNE @UNKNOWN0
	TXA
	AND #$FF00
	XBA
	AND #$00FF
	CMP @LOCAL07
	BEQ @UNKNOWN1
	LDX #.LOWORD(-1)
	STX @LOCAL02
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	AND #$00FF
	CMP @LOCAL06
	BEQ @UNKNOWN1
	LDX #.LOWORD(-1)
	STX @LOCAL02
@UNKNOWN1:
	CPX #.LOWORD(-1)
	BEQ @UNKNOWN2
	LDA @LOCAL03
	JSL PLAY_SOUND
@UNKNOWN2:
	LDX @LOCAL02
	TXA
	END_C_FUNCTION
