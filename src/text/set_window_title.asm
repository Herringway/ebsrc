
SET_WINDOW_TITLE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT8
	STACK_RESERVE_PARAM_INT32 ;const char* title
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;int
	END_STACK_VARS
	STX @VIRTUAL02
	STA @VIRTUAL04
	MOVE_INT @PARAM00, @VIRTUAL06
	LDA @VIRTUAL04
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS)+window_stats::title
	TAY
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	INC @VIRTUAL06
	INY
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	STA @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN2
	LDX @VIRTUAL02
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
	CPX #0
	BNE @UNKNOWN0
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL04
	JSR UNKNOWN_C202AC
	END_C_FUNCTION
