
GAIN_EXP:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT32 ;int
	END_STACK_VARS
	STX @VIRTUAL02
	TAX
	MOVE_INT @PARAM02, @VIRTUAL06
	TXY
	DEY
	STY @LOCAL01
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA @LOCAL00
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::exp
	TAX
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	TXY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	TXY
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA @LOCAL00
	TAX
	LDA PARTY_CHARACTERS+char_struct::level,X
	AND #$00FF
	STA @LOCAL00
	STA @VIRTUAL04
	LDA #MAX_LEVEL
	CLC
	SBC @VIRTUAL04
	JUMPLTEQS @UNKNOWN6
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LOADPTR EXP_TABLE, @VIRTUAL06
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 4
	STA @VIRTUAL04
	INC @VIRTUAL04
	INC @VIRTUAL04
	INC @VIRTUAL04
	INC @VIRTUAL04
	LDY @LOCAL01
	TYA
	LDY #4 * 100
	JSL MULT16
	CLC
	ADC @VIRTUAL04
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	CLC
	LDA @VIRTUAL06
	SBC @VIRTUAL0A
	LDA @VIRTUAL06+2
	SBC @VIRTUAL0A+2
	BCC @UNKNOWN2
	JMP @UNKNOWN6
@UNKNOWN2:
	LDA @VIRTUAL02
	BEQ @UNKNOWN3
	LDA #MUSIC::LEVEL_UP
	JSL CHANGE_MUSIC
@UNKNOWN3:
	LDX @VIRTUAL02
	LDY @LOCAL01
	TYA
	INC
	JSR LEVEL_UP_CHAR
	LDY @LOCAL01
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::level,X
	AND #$00FF
	STA @LOCAL00
	STA @VIRTUAL04
	LDA #MAX_LEVEL
	CLC
	SBC @VIRTUAL04
	BRANCHLTEQS @UNKNOWN6
	LOADPTR EXP_TABLE, @VIRTUAL06
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, 4
	STA @VIRTUAL04
	INC @VIRTUAL04
	INC @VIRTUAL04
	INC @VIRTUAL04
	INC @VIRTUAL04
	LDY @LOCAL01
	TYA
	LDY #4 * 100
	JSL MULT16
	CLC
	ADC @VIRTUAL04
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL0A
	TXA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::exp
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
	LDA @VIRTUAL06+2
	SBC @VIRTUAL0A+2
	BCC @UNKNOWN6
	JMP @UNKNOWN3
@UNKNOWN6:
	END_C_FUNCTION
