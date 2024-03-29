
PRINT_NUMBER:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	MOVE_INT @PARAM00, @VIRTUAL0A
	LDA CURRENT_FOCUS_WINDOW
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN6
.IF CLEAN_ROM
	MOVE_INT_CONSTANT $FFFF967F, @VIRTUAL06 ; fun with C enums?
.ELSE
	MOVE_INT_CONSTANT 9999999, @VIRTUAL06
.ENDIF
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
	LDA @VIRTUAL06+2
	SBC @VIRTUAL0A+2
	BCS @UNKNOWN1
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
@UNKNOWN1:
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAX
	STX @LOCAL03
	MOVE_INT @VIRTUAL0A, @LOCAL00
	JSR UNKNOWN_C10D7C
	TAY
	STY @LOCAL02
	STY @VIRTUAL04
	LDA #7
	SEC
	SBC @VIRTUAL04
	CLC
	ADC #.LOWORD(NUMBER_TEXT_BUFFER)
	STA @VIRTUAL02
	LDX @LOCAL03
	LDA a:window_stats::number_padding,X
	AND #$00FF
	STA @LOCAL01
	AND #$0080
	BNE @UNKNOWN5
	LDA @LOCAL01
	AND #$000F
	TAX
	INX
	STX @LOCAL03
	STY @VIRTUAL04
	TXA
	CMP @VIRTUAL04
	BCS @UNKNOWN3
	TYX
	STX @LOCAL03
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA #CHAR::SPACE
	JSR PRINT_LETTER
	LDX @LOCAL03
	DEX
	STX @LOCAL03
@UNKNOWN3:
	LDY @LOCAL02
	STY @VIRTUAL04
	TXA
	CMP @VIRTUAL04
	BNE @UNKNOWN2
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	AND #$00FF
	CLC
	ADC #CHAR::ZERO
	INC @VIRTUAL02
	JSR PRINT_LETTER
	LDY @LOCAL02
	DEY
	STY @LOCAL02
@UNKNOWN5:
	CPY #0
	BNE @UNKNOWN4
@UNKNOWN6:
	END_C_FUNCTION
