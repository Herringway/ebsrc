
UNKNOWN_C43D24:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	JSL REDIRECT_C438A5
	LDA NEW_TEXT_PIXEL_OFFSET
	AND #$00FF
	BEQ @UNKNOWN0
	LDA NEW_TEXT_PIXEL_OFFSET
	AND #$00FF
	CLC
	ADC VWF_X
	STA VWF_X
	LDA VWF_TILE
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(VWF_BUFFER)
	STA @LOCAL01
	SEP #PROC_FLAGS::ACCUM8
	LDA #<-1
	STA @LOCAL00
	LDX #32
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL01
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	LDA NEW_TEXT_PIXEL_OFFSET
	STA LAST_TEXT_PIXEL_OFFSET_SET
	STZ NEW_TEXT_PIXEL_OFFSET
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
