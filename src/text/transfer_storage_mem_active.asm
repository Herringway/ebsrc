
TRANSFER_STORAGE_MEM_ACTIVE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	JSR GET_ACTIVE_WINDOW_ADDRESS
	STA @LOCAL00
	CLC
	ADC #window_stats::working_memory_storage
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDA @LOCAL00
	CLC
	ADC #window_stats::working_memory
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA @LOCAL00
	CLC
	ADC #window_stats::argument_memory_storage
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDA @LOCAL00
	CLC
	ADC #window_stats::argument_memory
	TAY
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
	LDA @LOCAL00
	PHA
	TAX
	LDA a:window_stats::secondary_memory_storage,X
	PLX
	STA a:window_stats::secondary_memory,X
	END_C_FUNCTION
