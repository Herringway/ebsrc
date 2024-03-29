
UNKNOWN_C44C8C:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @LOCAL05
	STA @LOCAL04
	LDA CURRENT_FOCUS_WINDOW
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN16
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN16
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	STA @VIRTUAL02
	STA @LOCAL03
	LDX @VIRTUAL02
	LDA a:window_stats::text_x,X
	STA @VIRTUAL04
	LDX @VIRTUAL02
	LDA a:window_stats::text_y,X
	STA @LOCAL02
	LDX @VIRTUAL02
	LDA a:window_stats::curr_tile_attributes,X
	STA @LOCAL01
	LDX @VIRTUAL02
	LDA @VIRTUAL04
	CMP a:window_stats::width,X
	BNE @UNKNOWN5
	LDA #0
	STA @VIRTUAL04
	LDX @VIRTUAL02
	LDA a:window_stats::height,X
	LSR
	DEC
	CMP @LOCAL02
	BEQ @UNKNOWN2
	INC @LOCAL02
	BRA @UNKNOWN4
@UNKNOWN2:
	LDA f:ALLOW_TEXT_OVERFLOW
	AND #$00FF
	BNEL @UNKNOWN15
	LDA CURRENT_FOCUS_WINDOW
	JSL REDIRECT_C437B8
@UNKNOWN4:
	LDA ENABLE_WORD_WRAP
	BEQ @UNKNOWN5
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA VWF_INDENT_NEW_LINE
@UNKNOWN5:
	REP #PROC_FLAGS::ACCUM8
	LDA BLINKING_TRIANGLE_FLAG
	BEQ @UNKNOWN8
	LDA @VIRTUAL04
	BNE @UNKNOWN8
	LDA @LOCAL04
	CMP #$20
	BEQ @UNKNOWN6
	LDA @LOCAL04
	CMP #CHAR::BULLET
	BNE @UNKNOWN8
@UNKNOWN6:
	LDA BLINKING_TRIANGLE_FLAG
	CMP #1
	BEQL @UNKNOWN15
	CMP #2
	BNE @UNKNOWN8
	LDA #$20
	STA @LOCAL04
@UNKNOWN8:
	LDA @VIRTUAL04
	ASL
	PHA
	LDX @VIRTUAL02
	LDY a:window_stats::width,X
	LDA @LOCAL02
	JSL MULT16
	ASL
	ASL
	LDX @VIRTUAL02
	CLC
	ADC a:window_stats::tilemap_address,X
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	TAY
	STY @LOCAL00
	LDA __BSS_START__,Y
	BEQ @UNKNOWN9
	JSL FREE_TILE_SAFE
@UNKNOWN9:
	LDA @LOCAL04
	CMP #CHAR::EQUIPPED
	BNE @UNKNOWN10
	LDX #$0C00
	BRA @UNKNOWN11
@UNKNOWN10:
	LDX @LOCAL01
@UNKNOWN11:
	TXA
	CLC
	ADC @LOCAL04
	LDY @LOCAL00
	STA __BSS_START__,Y
	LDA @LOCAL03
	STA @VIRTUAL02
	LDX @VIRTUAL02
	LDA a:window_stats::width,X
	ASL
	STA @VIRTUAL02
	TYA
	CLC
	ADC @VIRTUAL02
	TAY
	STY @LOCAL04
	LDA __BSS_START__,Y
	BEQ @UNKNOWN12
	JSL FREE_TILE_SAFE
@UNKNOWN12:
	LDA @LOCAL05
	CMP #CHAR::EQUIPPED
	BNE @UNKNOWN13
	LDX #$0C00
	BRA @UNKNOWN14
@UNKNOWN13:
	LDX @LOCAL01
@UNKNOWN14:
	TXA
	CLC
	ADC @LOCAL05
	LDY @LOCAL04
	STA __BSS_START__,Y
	INC @VIRTUAL04
@UNKNOWN15:
	LDA @VIRTUAL04
	LDX @LOCAL03
	STX @VIRTUAL02
	STA a:window_stats::text_x,X
	LDA @LOCAL02
	LDX @VIRTUAL02
	STA a:window_stats::text_y,X
@UNKNOWN16:
	END_C_FUNCTION
