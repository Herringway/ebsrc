
UNKNOWN_C1008E:
	BEGIN_C_FUNCTION
	END_STACK_VARS
.IF .DEFINED(USA)
	SEP #PROC_FLAGS::ACCUM8
	LDA #1
	STA EXTRA_TICK_ON_WINDOW_CLOSE
.ENDIF
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA WINDOW_TAIL
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA WINDOW_STATS + window_stats::id,X
	JSR CLOSE_WINDOW
@UNKNOWN1:
.IF .DEFINED(USA)
	REP #PROC_FLAGS::ACCUM8
.ENDIF
	LDA WINDOW_TAIL
	CMP #.LOWORD(-1)
	BNE @UNKNOWN0
.IF .DEFINED(USA)
	JSR CLEAR_INSTANT_PRINTING
	JSL WINDOW_TICK
	SEP #PROC_FLAGS::ACCUM8
	STZ EXTRA_TICK_ON_WINDOW_CLOSE
	JSL UNKNOWN_C43F53
.ENDIF
	END_C_FUNCTION
