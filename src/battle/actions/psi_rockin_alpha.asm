
BTLACT_PSI_ROCKIN_A: ;$C29556
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #ROCKIN_ALPHA_DAMAGE
	JSR PSI_ROCKIN_COMMON
	RTL
