
UNKNOWN_C19216: ;$C19216
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STA $12
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	LDA $12
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA #item::type
	JSR DISPLAY_CONFIG_MENU_TITLE
	PLD
	RTS