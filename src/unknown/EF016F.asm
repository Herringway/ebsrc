
UNKNOWN_EF016F: ;$EF016F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEC
	TCD
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $12
	CLC
	ADC #$002B
	TAY
	STY $10
	LDA $12
	CLC
	ADC #$002F
	STA $0E
	TAX
	LDA a:.LOWORD(RAM),X
	STA $02
	LDA a:.LOWORD(RAM),Y
	CLC
	ADC $02
	LDY #$002D
	JSL MULT168
	CLC
	ADC #$89D4
	TAX
	LDA a:.LOWORD(RAM)+8,X
	STA.LOWORD(UNKNOWN_7E9684)
	LDA a:.LOWORD(RAM)+10,X
	STA .LOWORD(UNKNOWN_7E9686)
	LDY $10
	LDA a:.LOWORD(RAM),Y
	STA.LOWORD(UNKNOWN_7E9688)
	LDA $0E
	TAX
	LDA a:.LOWORD(RAM),X
	STA .LOWORD(UNKNOWN_7E968A)
	PLD
	RTL
