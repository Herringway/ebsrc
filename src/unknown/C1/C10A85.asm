
UNKNOWN_C10A85:
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
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @LOCAL05
	STX @VIRTUAL02
	STX @LOCAL04
	STA @LOCAL03
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	STA @LOCAL02
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN10
	LDA @LOCAL02
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY WINDOW_STATS + window_stats::text_x,X
	STY @LOCAL01
	LDA WINDOW_STATS + window_stats::text_y,X
	STA @VIRTUAL04
	TYA
	CMP WINDOW_STATS + window_stats::width,X
	BNE @UNKNOWN3
	LDA WINDOW_STATS + window_stats::height,X
	LSR
	DEC
	STA @VIRTUAL02
	LDA @VIRTUAL04
	CMP @VIRTUAL02
	BEQ @UNKNOWN1
	INC @VIRTUAL04
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA @LOCAL03
	JSL UNKNOWN_C437B8
@UNKNOWN2:
	LDY #0
	STY @LOCAL01
@UNKNOWN3:
	LDA BLINKING_TRIANGLE_FLAG
	BEQ @UNKNOWN6
	CPY #0
	BNE @UNKNOWN6
	LDA @LOCAL04
	STA @VIRTUAL02
	CMP #32
	BEQ @UNKNOWN4
	LDA @VIRTUAL02
	CMP #64
	BNE @UNKNOWN6
@UNKNOWN4:
	LDA BLINKING_TRIANGLE_FLAG
	CMP #1
	BEQL @UNKNOWN9
	CMP #2
	BNE @UNKNOWN6
	LDA #32
	STA @VIRTUAL02
	STA @LOCAL04
@UNKNOWN6:
	LDA @LOCAL02
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY @LOCAL01
	TYA
	ASL
	STA @VIRTUAL02
	LDY WINDOW_STATS + window_stats::width,X
	LDA @VIRTUAL04
	JSL MULT16
	ASL
	ASL
	CLC
	ADC WINDOW_STATS + window_stats::tilemap_address,X
	CLC
	ADC @VIRTUAL02
	STA @LOCAL00
	LDA @LOCAL04
	STA @VIRTUAL02
	CMP #34
	BNE @UNKNOWN7
	LDX #$0C00
	BRA @UNKNOWN8
@UNKNOWN7:
	LDX @LOCAL05
@UNKNOWN8:
	LDA @VIRTUAL02
	AND #$000F
	PHA
	LDA @VIRTUAL02
	AND #$FFF0
	ASL
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	STX @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL02
	STA @LOCAL05
	LDA @LOCAL00
	TAX
	LDA @VIRTUAL02
	STA __BSS_START__,X
	LDA @LOCAL02
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS + window_stats::width,X
	ASL
	STA @VIRTUAL02
	LDA @LOCAL00
	CLC
	ADC @VIRTUAL02
	TAX
	LDA @LOCAL05
	STA @VIRTUAL02
	CLC
	ADC #16
	STA __BSS_START__,X
	LDY @LOCAL01
	INY
	STY @LOCAL01
@UNKNOWN9:
	LDA @LOCAL02
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY @LOCAL01
	TYA
	STA WINDOW_STATS + window_stats::text_x,X
	LDA @VIRTUAL04
	STA WINDOW_STATS + window_stats::text_y,X
@UNKNOWN10:
	END_C_FUNCTION
