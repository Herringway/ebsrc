
; void setColourAddSubMode(char cgwsel, char cgadsub)
SET_COLOUR_ADDSUB_MODE:
	SEP #PROC_FLAGS::ACCUM8
	STA f:CGWSEL
	TXA
	STA f:CGADSUB
	REP #PROC_FLAGS::ACCUM8
	RTL
