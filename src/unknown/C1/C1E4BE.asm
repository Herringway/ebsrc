
UNKNOWN_C1E4BE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STY @VIRTUAL02
	STX @LOCAL04
	STA @LOCAL03
	JSL SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR @LOCAL03
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAY
	STY @LOCAL02
	LDA #4
	CLC
	SBC @LOCAL04
	BRANCHLTEQS @UNKNOWN2
	LDX #5
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #6
@UNKNOWN3:
	STX @LOCAL01
	LDA @LOCAL01
	JSL UNKNOWN_C441B7
	LDY @LOCAL02
	LDA a:window_stats::text_y,Y
	TAX
	LDA #0
	JSL UNKNOWN_C438A5
	LDA @VIRTUAL02
	CMP #6
	BNE @UNKNOWN4
	LDX #0
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX @VIRTUAL02
	INX
@UNKNOWN5:
	STX @VIRTUAL04
	LDA @VIRTUAL04
	STA @LOCAL02
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL00
	BRA @UNKNOWN7
@UNKNOWN6:
	TXY
	LDX @LOCAL01
	LDA @LOCAL03
	JSL UNKNOWN_C442AC
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL00
@UNKNOWN7:
	LDA @LOCAL02
	STA @VIRTUAL04
	OPTIMIZED_MULT @VIRTUAL04, 6
	STA @VIRTUAL02
	LDA @LOCAL04
	OPTIMIZED_MULT @VIRTUAL04, 42
	CLC
	ADC @VIRTUAL02
	LDX @LOCAL00
	STX @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	TAX
	LDA f:DONT_CARE_NAMES,X
	AND #$00FF
	TAX
	BNE @UNKNOWN6
	LDA #WINDOW::FILE_SELECT_NAMING_KEYBOARD
	JSR SET_WINDOW_FOCUS
	LDA @LOCAL02
	STA @VIRTUAL04
	END_C_FUNCTION
