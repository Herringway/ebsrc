
UNKNOWN_C425F3: ;$C425F3
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0010
	TRB a:.LOWORD(HDMAEN_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	RTL
