
TRANSFER_ACTIVE_MEM_STORAGE: ;$C10324
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	JSR a:.LOWORD(GET_ACTIVE_WINDOW_ADDRESS)
	STA $0E
	CLC
	ADC #window_stats::working_memory
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	LDA $0E
	CLC
	ADC #window_stats::working_memory_storage
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $0E
	CLC
	ADC #window_stats::argument_memory
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	LDA $0E
	CLC
	ADC #window_stats::argument_memory_storage
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA $0E
	PHA
	TAX
	LDA a:window_stats::secondary_memory,X
	PLX
	STA a:window_stats::secondary_memory_storage,X
	PLD
	RTS
