
CC_1E_0D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TXA
	STA @LOCAL00
	LDA #1
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	LDA @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1E_0D)
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
	TAX
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::boosted_vitality
	TAY
	LDA @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	LDA __BSS_START__,Y
	CLC
	ADC @VIRTUAL00
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL RECALC_CHARACTER_POSTMATH_VITALITY
	REP #PROC_FLAGS::ACCUM8
	LDA #NULL
@UNKNOWN3:
	END_C_FUNCTION
