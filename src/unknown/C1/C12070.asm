
UNKNOWN_C12070:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STY @LOCAL03
	STX @LOCAL02
	STA @LOCAL01
	BNE @UNKNOWN0
	LDX NUM_BATTLERS_IN_FRONT_ROW
	TXA
	DEC
	CLC
	ADC #.LOWORD(BATTLER_FRONT_ROW_X_POSITIONS)
	STA @VIRTUAL04
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX NUM_BATTLERS_IN_BACK_ROW
	TXA
	DEC
	CLC
	ADC #.LOWORD(BATTLER_BACK_ROW_X_POSITIONS)
	STA @VIRTUAL04
@UNKNOWN1:
	TXA
	DEC
	STA @VIRTUAL02
	BRA @UNKNOWN4
@UNKNOWN2:
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	AND #$00FF
	STA @LOCAL00
	LDA @VIRTUAL04
	DEC
	STA @VIRTUAL04
	LDA @LOCAL00
	CMP @LOCAL02
	BCS @UNKNOWN3
	LDY @LOCAL03
	LDX @VIRTUAL02
	LDA @LOCAL01
	JSR UNKNOWN_C11FD4
	CMP #0
	BEQ @UNKNOWN3
	LDA @VIRTUAL02
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
@UNKNOWN4:
	LDA @VIRTUAL02
	INC
	BNE @UNKNOWN2
	LDA #.LOWORD(-1)
@UNKNOWN5:
	END_C_FUNCTION
