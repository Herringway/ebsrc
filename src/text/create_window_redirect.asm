
REDIRECT_CREATE_WINDOW: ;$C1DD47
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSR CREATE_WINDOW
	RTL
