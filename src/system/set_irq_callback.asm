
SET_IRQ_CALLBACK: ;$C0851C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	STA IRQ_CALLBACK
	RTL
