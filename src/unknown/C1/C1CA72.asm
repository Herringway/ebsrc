
UNKNOWN_C1CA72: ;$C1CA72
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	STX $02
	STA $04
	JSL SET_9622_ONE
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	CLC
	ADC #window_stats::text_y
	TAX
	STX $10
	LDA a:.LOWORD(RAM),X
	TAY
	STY $0E
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	JSL UNKNOWN_EF0115
	JSL CALL_C12DD5_WITH_ZERO_9622
	LDA .LOWORD(UNKNOWN_7E9D16)
	JSL UNKNOWN_C1C853
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	LDY $0E
	TYA
	LDX $10
	STA a:.LOWORD(RAM),X
	JSR a:.LOWORD(GET_TEXT_Y)
	TAX
	LDA #$0000
	JSL UNKNOWN_C438A5
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA $04
	OPTIMIZED_MULT $04, 15
	TAX
	LDA f:PSI_ABILITY_TABLE,X
	AND #$00FF
	JSR a:.LOWORD(GET_PSI_NAME)
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	JSL CLEAR_9622
	PLD
	RTS
