
SET_BG3_VRAM_LOCATION: ;$C08E1C
	PHP
	SEP #PROC_FLAGS::ACCUM8
	REP #PROC_FLAGS::INDEX8
	AND #$0003
	STA a:.LOWORD(UNKNOWN_7E0011)+2
	REP #PROC_FLAGS::ACCUM8
	TXA
	XBA
	SEP #PROC_FLAGS::ACCUM8
	AND #$00FC
	ORA a:.LOWORD(UNKNOWN_7E0011)+2
	STA a:.LOWORD(UNKNOWN_7E0011)+2
	STA f:BG3SC
	LDA a:.LOWORD(UNKNOWN_7E0016)
	AND #$00F0
	STA a:.LOWORD(UNKNOWN_7E0016)
	REP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(BG3_X_POS)
	STZ a:.LOWORD(BG3_Y_POS)
	TYA
	XBA
	SEP #PROC_FLAGS::ACCUM8
	LSR
	LSR
	LSR
	LSR
	ORA a:.LOWORD(UNKNOWN_7E0016)
	STA a:.LOWORD(UNKNOWN_7E0016)
	STA f:BG34NBA
	PLP
	RTL
