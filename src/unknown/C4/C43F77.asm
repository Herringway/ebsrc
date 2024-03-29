
UNKNOWN_C43F77:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
.IF !.DEFINED(PROTOTYPE19950327)
	LDA CURRENT_FOCUS_WINDOW
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN9
.ENDIF
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)
	TAX
	CLC
	ADC #window_stats::width
	TAY
	STY @LOCAL01
	LDA a:window_stats::text_x,X
	ASL
	STA @VIRTUAL04
	LDA __BSS_START__,Y
	TAY
	LDA a:window_stats::text_y,X
	JSL MULT16
	ASL
	ASL
	CLC
	ADC a:window_stats::tilemap_address,X
	CLC
	ADC @VIRTUAL04
	TAX
	STX @LOCAL00
	LDA __BSS_START__,X
	JSL FREE_TILE_SAFE
	LDY @LOCAL01
	LDA __BSS_START__,Y
	ASL
	STA @VIRTUAL04
	LDX @LOCAL00
	TXA
	CLC
	ADC @VIRTUAL04
	TAX
	LDA __BSS_START__,X
	JSL FREE_TILE_SAFE
	LDA @VIRTUAL02
	CMP #47
	BNE @UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	STZ VWF_INDENT_NEW_LINE
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	JSL REDIRECT_C10BA1
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	CMP WINDOW_TAIL
	BEQ @UNKNOWN2
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA REDRAW_ALL_WINDOWS
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	LDA TEXT_SOUND_MODE
	CMP #2
	BNE @UNKNOWN3
	LDX #1
	BRA @UNKNOWN5
@UNKNOWN3:
	LDA TEXT_SOUND_MODE
	CMP #3
	BNE @UNKNOWN4
	LDX #0
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX #0
	LDA BLINKING_TRIANGLE_FLAG
	BNE @UNKNOWN5
	LDX #1
@UNKNOWN5:
	CPX #0
	BEQ @UNKNOWN6
	LDA INSTANT_PRINTING
	AND #$00FF
	BNE @UNKNOWN6
	LDA @VIRTUAL02
	CMP #32
	BEQ @UNKNOWN6
	LDA #SFX::TEXT_PRINT
	JSL PLAY_SOUND
@UNKNOWN6:
	LDA INSTANT_PRINTING
	AND #$00FF
	BNE @UNKNOWN9
	LDX SELECTED_TEXT_SPEED
	INX
	STX @LOCAL01
	BRA @UNKNOWN8
@UNKNOWN7:
	JSL WINDOW_TICK
	LDX @LOCAL01
	DEX
	STX @LOCAL01
@UNKNOWN8:
	BNE @UNKNOWN7
@UNKNOWN9:
	END_C_FUNCTION
