
UNKNOWN_C42F45: ;$C42F45
	ASL
	TAX
	LDA $0E
	STA .LOWORD(UNKNOWN_30X2_TABLE_12),X
	LDA $10
	STA .LOWORD(UNKNOWN_30X2_TABLE_13),X
	LDY #$0006
@UNKNOWN0:
	INX
	INX
	LDA $12
	STA .LOWORD(UNKNOWN_30X2_TABLE_12),X
	LDA $14
	STA .LOWORD(UNKNOWN_30X2_TABLE_13),X
	DEY
	BNE @UNKNOWN0
	RTL
