
CHECK_STATUS_GROUP:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	TXY
	STY @LOCAL01
	TAX
	STX @LOCAL00
	CPY #8
	BNE @UNKNOWN0
	LDA GAME_STATE + game_state::party_status
	AND #$00FF
	INC
	BRA @UNKNOWN2
@UNKNOWN0:
	TXA
	JSL UNKNOWN_C2239D
	CMP #0
	BEQ @UNKNOWN1
	LDY @LOCAL01
	TYA
	DEC
	STA @VIRTUAL02
	LDX @LOCAL00
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::afflictions
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	INC
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #0
@UNKNOWN2:
	END_C_FUNCTION
