
UNKNOWN_C08726: ;$C08726
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA a:.LOWORD(INIDISP_MIRROR)
	STZ a:.LOWORD(HDMAEN_MIRROR)
	STZ a:.LOWORD(UNKNOWN_7E0028)
	STZ a:.LOWORD(UNKNOWN_7E002B)
@UNKNOWN0:
	LDA a:.LOWORD(UNKNOWN_7E002B)
	BEQ @UNKNOWN0
	LDA #$0000
	STA f:HDMAEN
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
