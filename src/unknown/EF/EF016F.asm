
UNKNOWN_EF016F: ;$EF016F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $12
	CLC
	ADC #window_stats::current_option
	TAY
	STY $10
	LDA $12
	CLC
	ADC #window_stats::selected_option
	STA $0E
	TAX
	LDA RAM,X
	STA $02
	LDA RAM,Y
	CLC
	ADC $02
	LDY #.SIZEOF(menu_option)
	JSL MULT168
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	TAX
	LDA a:menu_option::text_x,X
	STA UNKNOWN_7E9684
	LDA a:menu_option::text_y,X
	STA UNKNOWN_7E9686
	LDY $10
	LDA RAM,Y
	STA UNKNOWN_7E9688
	LDA $0E
	TAX
	LDA RAM,X
	STA UNKNOWN_7E968A
	PLD
	RTL
