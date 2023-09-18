
TRANSFER_STORAGE_MEM_ACTIVE: ;$C10380
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	JSR GET_ACTIVE_WINDOW_ADDRESS
	STA $0E
	CLC
	ADC #window_stats::working_memory_storage
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDA $0E
	CLC
	ADC #window_stats::working_memory
	TAY
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $0E
	CLC
	ADC #window_stats::argument_memory_storage
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	LDA $0E
	CLC
	ADC #window_stats::argument_memory
	TAY
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $0E
	PHA
	TAX
	LDA a:window_stats::secondary_memory_storage,X
	PLX
	STA a:window_stats::secondary_memory,X
	PLD
	RTS
