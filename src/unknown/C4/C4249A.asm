
UNKNOWN_C4249A:
	SEP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	STA f:CGADSUB
	LDA #$0020
	STA f:WOBJSEL
	LDA #$0000
	STA f:WH0
	LDA #$00FF
	STA f:WH1
	LDA #$0013
	STA TMW
	LDA #$0000
	STA f:WBGLOG
	STA f:WOBJLOG
	LDA #$0010
	STA f:CGWSEL
	TXA
	ORA #$00E0
	STA f:FIXED_COLOR_DATA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
