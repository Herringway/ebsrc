
LIFEUP_COMMON: ;$C29AB8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	TAX
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	TAX
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(RECOVER_HP)
	RTS
