
MEMCPY24: ;$C08EED
	TAY
	SEP #PROC_FLAGS::ACCUM8
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA [$12],Y
	STA [$0E],Y
@UNKNOWN1:
	DEY
	BPL @UNKNOWN0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
