
UNKNOWN_C08726: ;$C08726
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA INIDISP_MIRROR
	STZ HDMAEN_MIRROR
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	STZ UNKNOWN_7E0028
.ENDIF
	STZ UNKNOWN_7E002B
@UNKNOWN0:
	LDA UNKNOWN_7E002B
	BEQ @UNKNOWN0
	LDA #$0000
	STA f:HDMAEN
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
