
PAUSE_MUSIC: ;$EF0256
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9697)
	REP #PROC_FLAGS::ACCUM8
	RTL