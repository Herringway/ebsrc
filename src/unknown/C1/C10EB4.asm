
UNKNOWN_C10EB4:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL00
	LDA CURRENT_FOCUS_WINDOW
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN0
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA OPEN_WINDOW_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	STA WINDOW_STATS + window_stats::number_padding,X
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
