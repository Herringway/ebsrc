
UNKNOWN_C09CB5: ;$C09CB5
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$0002
	TCD
	PLA
	STX $00
	LDY #$FFFF
	LDX .LOWORD(UNKNOWN_7E0A50)
@UNKNOWN0:
	CPX $00
	BEQ @UNKNOWN1
	TXY
	LDA .LOWORD(UNKNOWN_30X2_TABLE_1),X
	TAX
	BRA @UNKNOWN0
@UNKNOWN1:
	LDX $00
	PLD
	RTS
