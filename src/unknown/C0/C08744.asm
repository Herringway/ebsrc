
UNKNOWN_C08744:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA INIDISP_MIRROR
	STZ NEW_FRAME_STARTED
@UNKNOWN0:
	LDA NEW_FRAME_STARTED
	BEQ @UNKNOWN0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
