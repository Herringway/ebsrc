; A = sprite ID, X = movement ID
UNKNOWN_C4ECAD: ;$C4ECAD
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $02
	STA $12
	LDA .LOWORD(UNKNOWN_7EB4D3)
	AND #$0003
	STA .LOWORD(UNKNOWN_7E0A38)
	INC .LOWORD(UNKNOWN_7EB4D3)
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),X
	STA $0E
	LDA .LOWORD(UNKNOWN_30X2_TABLE_4),X
	CLC
	ADC a:.LOWORD(BG3_Y_POS)
	STA $10
	LDY #$FFFF
	LDX $02
	LDA $12
	JSL PARSE_C3FC49_DATA
	PLD
	RTL
