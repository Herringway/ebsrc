
UNKNOWN_C0329F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL01
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ PARTY_CHARACTERS + char_struct::afflictions,X
	REP #PROC_FLAGS::ACCUM8
	LDA #1
	STA @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	STA @VIRTUAL02
	LDX @LOCAL01
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::afflictions
	CLC
	ADC @VIRTUAL02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN1:
	CMP #7
	BCC @UNKNOWN0
	END_C_FUNCTION
