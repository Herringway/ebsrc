
UNKNOWN_C025CF:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL04
	STA @LOCAL02
	LDX #$8000
	LDA NPC_SPAWNS_ENABLED
	BEQ @UNKNOWN3
	LDY @LOCAL01
	CPY #$8000
	BCS @UNKNOWN3
	LDA @LOCAL02
	LSR
	LSR
	LSR
	LSR
	LSR
	STA @LOCAL00
	LDA @VIRTUAL04
	STA @VIRTUAL02
	STA @LOCAL01
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA @LOCAL01
	STA @VIRTUAL02
	CMP #$8000
	BCS @UNKNOWN1
	LDA @VIRTUAL02
	LSR
	LSR
	LSR
	LSR
	LSR
	TAY
	STY @LOCAL02
	STX @VIRTUAL02
	TYA
	CMP @VIRTUAL02
	BEQ @UNKNOWN1
	TYX
	LDA @LOCAL00
	JSL UNKNOWN_C0222B
	LDY @LOCAL02
	TYX
@UNKNOWN1:
	LDA @LOCAL01
	STA @VIRTUAL02
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL01
@UNKNOWN2:
	LDA @VIRTUAL04
	CLC
	ADC #32
	PHA
	LDA @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CMP @VIRTUAL02
	BNE @UNKNOWN0
@UNKNOWN3:
	END_C_FUNCTION
