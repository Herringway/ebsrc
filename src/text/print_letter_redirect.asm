
REDIRECT_PRINT_LETTER: ;$C10C86
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSR PRINT_LETTER
	RTL
