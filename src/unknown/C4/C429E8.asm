
UNKNOWN_C429E8: ;$C429E8
	TAY
	ASL
	ASL
	ASL
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$007E
	STA f:A1B0,X
	STA f:$004307,X
	LDA #$002C
	STA f:BBAD0,X
	LDA #$0001
	STA f:DMAP0,X
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7EADB8)
	STA f:A1T0L,X
	SEP #PROC_FLAGS::ACCUM8
	TYX
	LDA a:.LOWORD(HDMAEN_MIRROR)
	ORA DMA_FLAGS,X
	STA a:.LOWORD(HDMAEN_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	RTL
