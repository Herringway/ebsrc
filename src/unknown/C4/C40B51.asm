
UNKNOWN_C40B51: ;$C40B51
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL STOP_MUSIC
	LDA #$0001
	JSL UNKNOWN_C08D79
	LDY #$0000
	LDX #$4000
	TYA
	JSL SET_BG3_VRAM_LOCATION
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0004
	STA a:.LOWORD(TM_MIRROR)
	JSL UNKNOWN_C08726
	RTL