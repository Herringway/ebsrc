
UNKNOWN_C09FF1: ;$C09FF1
	JSR a:.LOWORD(UNKNOWN_C09FAE_ENTRY2)
	LDA .LOWORD(ENTITY_ABS_Z_FRACTION_TABLE),X
	CLC
	ADC .LOWORD(ENTITY_DELTA_Z_FRACTION_TABLE),X
	STA .LOWORD(ENTITY_ABS_Z_FRACTION_TABLE),X
	LDA .LOWORD(ENTITY_ABS_Z_TABLE),X
	ADC .LOWORD(ENTITY_DELTA_Z_TABLE),X
	STA .LOWORD(ENTITY_ABS_Z_TABLE),X
	JSL UNKNOWN_C0C7DB
	RTS
